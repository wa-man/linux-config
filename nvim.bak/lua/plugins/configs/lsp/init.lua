local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("plugins.configs.lsp.mason")
require("plugins.configs.lsp.handlers").setup()

