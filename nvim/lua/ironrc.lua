local iron = require('iron')

-- vim.g.iron_map_defaults = 0
-- vim.g.iron_map_extended = 0

iron.core.set_config {
  repl_open_cmd = "vertical split",
  preferred = {
      python = "ipython"
  }
}
