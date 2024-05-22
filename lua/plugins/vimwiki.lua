-- Define your g:vimwiki_list as a Table
local wikis = {
  {
    path = vim.fn.expand("~/Documents/life/"), -- Trailing slash here [1]
    diary_template = "diary", -- some executable filter
    -- syntax = "markdown", -- or whatever
    ext = ".md", -- or whatever
    auto_tags = 1 -- ... or whatever! you do you, friend
  },
  -- { another wiki if you like }
}

return {
  {
    "vimwiki/vimwiki",
    init = function()
      local diary_file = "diary/*.md"
      local wikilist = {}

      -- Hoopy Frood Loop
      for _,v in ipairs(wikis) do
        -- See if the wiki exists on this machine (you should `touch` it first if it's brand new)
        local wiki_here = vim.fn.filereadable(v.path .. "index.md") -- [1] Glad you left that trailing slash?

        if wiki_here == 1 then
          -- I'm new to lua, this might be dumb
          local wiki_def = {
            path = v.path,
            syntax = v.syntax,
            ext = v.ext,
            auto_tags = v.auto_tags
          }
          -- See above comment...
          table.insert(wikilist, wiki_def)

          -- use that template filter!
          vim.api.nvim_create_autocmd({"BufNewFile"}, {
            pattern = {v.path .. diary_file},
            command = ":silent 0r !" .. v.diary_template .. " '%'"
          })
        end
      end

      -- You can't mutate/append a vim.g, so you gotta build it up then assign
      vim.g.vimwiki_list = wikilist
    end,
  }
}
