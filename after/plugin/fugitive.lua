local wk = require('which-key')

wk.register({
  g = {
    name = "git",
    s = { "<cmd>Git<cr>", "Status" },
    p = { "<cmd>Git push<cr>", "Push"},
    f = { "<cmd>Git fetch<cr>", "Fetch"},
    m = { "<cmd>Git merge<cr>", "Merge"},
  },
}, { prefix = "<leader>" })
