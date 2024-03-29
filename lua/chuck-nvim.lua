local chuck = require("chuck-nvim.core.chuck")
local config = require("chuck-nvim.config")

local M = {}

---Load and setup the plugin with potentially a table of configurations.
---
---@param opts chuck-nvim.Config? Table of of configurations to override the default behavior.
function M.setup(opts)
  config.apply(opts or {})

  -- SET USER COMMANDS HERE
  vim.api.nvim_create_user_command("ChuckLoop", chuck.chuck_loop, {
    desc = "ChucK Loop",
  })

  vim.api.nvim_create_user_command("ChuckStatus", chuck.check_status, {
    desc = "ChucK Status",
  })

  vim.api.nvim_create_user_command("ChuckTime", chuck.chuck_time, {
    desc = "ChucK Time",
  })

  vim.api.nvim_create_user_command("ChuckAddShred", chuck.add_shred, {
    desc = "Add Shred",
  })

  vim.api.nvim_create_user_command("ChuckRemoveShreds", chuck.remove_shred, {
    desc = "Remove Shred(s)",
  })

  vim.api.nvim_create_user_command("ChuckReplaceShred", chuck.replace_shred, {
    desc = "Replace Shred",
  })

  vim.api.nvim_create_user_command("ChuckClearShreds", chuck.clear_shreds, {
    desc = "Clear All Shreds",
  })

  vim.api.nvim_create_user_command("ChuckClearVM", chuck.clear_vm, {
    desc = "Clear Virtual Machine",
  })

  vim.api.nvim_create_user_command("ChuckExit", chuck.chuck_exit, {
    desc = "Exit Chuck",
  })
end

return M
