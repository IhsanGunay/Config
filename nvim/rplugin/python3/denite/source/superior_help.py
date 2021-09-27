import re
from pynvim import Nvim

from denite.base.source import Base
from denite.kind.file import Kind as File
from denite.util import UserContext, Candidates


class Source(Base):

    def __init__(self, vim: Nvim) -> None:
        super().__init__(vim)
        self.name = 'help/superior'
        self.kind = Kind(vim)

    def gather_candidates(self, context: UserContext) -> Candidates:
        context['is_interactive'] = True

        prefix = re.sub(r'\w*$', '', context['input'])
        candidates = [{
            'word': prefix + x,
        } for x in self.vim.call(
            'getcompletion', 'help ' + context['input'], 'cmdline')]

        return candidates


class Kind(File):

    def __init__(self, vim: Nvim) -> None:
        super().__init__(vim)
        self.vim = vim
        self.name = 'help'

    def action_open(self, context: UserContext) -> None:
        target = context['targets'][0]
        self.vim.command(f'silent vertical help {target["word"]}')

    def action_tabopen(self, context: UserContext) -> None:
        for target in context['targets']:
            self.vim.command(f'silent tab help {target["word"]}')
