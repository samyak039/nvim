return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      ["python"] = function()
        local autopep8_project = "/home/samyak/ct/social_pay_me/spm_backend"
        local current_file_path = vim.fn.expand("%:p:h")

        if string.find(current_file_path, "^" .. autopep8_project) then
          return { "autopep8" }
        else
          return { "black" }
        end
      end,
    },
  },
}
