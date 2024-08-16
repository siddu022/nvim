--logo

return {


  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
Happy Coding!

███████╗██╗██████╗ ██████╗ ██╗   ██╗
██╔════╝██║██╔══██╗██╔══██╗██║   ██║
███████╗██║██║  ██║██║  ██║██║   ██║
╚════██║██║██║  ██║██║  ██║██║   ██║
███████║██║██████╔╝██████╔╝╚██████╔╝
╚══════╝╚═╝╚═════╝ ╚═════╝  ╚═════╝



        ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
