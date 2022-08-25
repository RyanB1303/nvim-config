local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting
local completion = null_ls.builtins.completion
local diagnostic = null_ls.builtins.diagnostics
local action = null_ls.builtins.code_actions
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local sources = {
	--action
	action.refactoring.with({
		filetypes = { "ruby", "javascript", "lua" },
	}),
	--completion
	--diagnostic
	diagnostic.luacheck,
	diagnostic.rubocop,
	--formatting
	formatting.eslint_d,
	formatting.gofmt,
	formatting.stylua,
	formatting.nginx_beautifier,
	formatting.pg_format,
	-- formatting.rubocop,
	formatting.trim_newlines,
	formatting.trim_whitespace,
}
local lsp_formatting = function(bufnr)
	vim.lsp.buf.format({
		filter = function(client)
			return client.name == "null_ls"
		end,
		bufnr = bufnr,
	})
end

local on_attach = function(client, bufnr)
	if client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
				lsp_formatting(bufnr)
			end,
		})
	end
end

null_ls.setup({ sources = sources, on_attach = on_attach })
