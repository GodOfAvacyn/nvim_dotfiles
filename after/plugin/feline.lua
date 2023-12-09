local ctp_feline = require('catppuccin.groups.integrations.feline')

ctp_feline.setup({
    assets = {
        left_separator = "",
        right_separator = "",
        mode_icon = "",
        dir = "󰉖",
        file = "󰈙",
        lsp = {
            server = "󰅡",
            error = "",
            warning = "",
            info = "",
            hint = "",
        },
        git = {
            branch = "",
            added = "",
            changed = "",
            removed = "",
        },
    },
})

require("feline").setup({
    components = ctp_feline.get(),
})

