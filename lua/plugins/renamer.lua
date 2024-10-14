return {
  "filipdutescu/renamer.nvim",
  config = function()
    local auto_session = require("renamer")
    auto_session.setup()
  end,
}
