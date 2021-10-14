local present1, autopairs = pcall(require, "nvim-autopairs")
local present2, autopairs_completion = pcall(require, "nvim-autopairs.completion.cmp")

if not (present1 or present2) then
  return
end

autopairs.setup()
autopairs_completion.setup {
  map_complete = false, -- it will not auto insert `(` (map_char) after select function or method item
  map_cr = true,
}
