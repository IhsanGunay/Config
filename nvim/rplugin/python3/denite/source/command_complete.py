from pynvim import Nvim
import re

from denite.base.source import Base
from denite.kind.command import Kind as Command
from denite.util import UserContext, Candidates


class Source(Base):

    def __init__(self, vim: Nvim) -> None:
        super().__init__(vim)
        self.name = 'command/complete'
        self.kind = Kind(vim)

    def gather_candidates(self, context: UserContext) -> Candidates:
        cinput = self.vim.call('histget', 'cmd', -1)

        if ' ' not in cinput:
            candidates = [{
                'word': x,
            } for x in self.vim.call('getcompletion', cinput, 'command')]

        else:
            prefix = re.sub(r'\w*$', '', cinput)
            candidates = [{
                'word': prefix + x,
            } for x in self.vim.call(
                'getcompletion', cinput, 'cmdline')]

        if not candidates:
            candidates.append({'word': cinput})
            self.kind.default_action = 'abort'
        elif len(candidates) == 1:
            self.kind.default_action = 'complete'
        else:
            self.kind.default_action = 'execute'

        return candidates


class Kind(Command):

    def __init__(self, vim: Nvim) -> None:
        super().__init__(vim)
        self.name = 'command/complete'

    def action_abort(self, context: UserContext) -> None:
        target = context['targets'][0]
        self.vim.call('feedkeys', f':{target["word"]}')

    def action_complete(self, context: UserContext) -> None:
        target = context['targets'][0]
        self.vim.call('feedkeys', f':{target["word"]} ')

    def action_execute(self, context: UserContext) -> None:
        target = context['targets'][0]
        self.vim.command(f'{target["word"]}')
