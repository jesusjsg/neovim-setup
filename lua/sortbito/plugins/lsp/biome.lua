return {
  vim.lsp.config("biome", {
    cmd = { "biome" },
    filetypes = {
      "astro",
      "css",
      "graphql",
      "html",
      "javascript",
      "javascriptreact",
      "json",
      "jsonc",
      "svelte",
      "typescript",
      "typescript.tsx",
      "typescriptreact",
      "vue",
    },
    root_markers = { "package-lock.json", "yarn.lock", "pnpm-lock.yaml", "bun.lockb", "bun.lock" },
  }),
}
