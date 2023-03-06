local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {
  --Go
   b.formatting.goimports,
   -- webdev stuff
   b.formatting.deno_fmt,
   b.formatting.prettier,
   b.formatting.prettierd,
   b.diagnostics.eslint_d,
   b.diagnostics.eslint,

   -- Lua
   b.formatting.stylua,

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
   debug = true,
   sources = sources,
}
