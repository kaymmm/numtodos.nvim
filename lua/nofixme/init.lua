-- numtodos/lua/init.vim
-- Author: Keith Miyake
-- License: GPLv3

local count = function(t)
  if not vim.bo.modifiable then
    return ''
  end

  local defaults = ''
  if not vim.g.numtodos_tags then
    defaults = {
      'TODO',
      'FIXME',
      'INFO',
      'UNSURE',
      'XXX',
    }
  else
    defaults = vim.g.numtodos_tags
  end
  t = t or defaults
  local total = 0
  for _,v in pairs(t) do
    total = total +
      select(2,string.gsub(
        table.concat(
          vim.fn.getline(vim.api.nvim_get_current_buf(),vim.fn.line('$')),''),v,''))
  end
  if total > 0 then
    return '' .. total
  else
    return ''
  end
end

return {
  count = count
}
