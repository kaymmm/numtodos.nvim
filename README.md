# numtodos.nvim

Counts the number of TODO/FIXME/etc. in the current buffer.

This plugin provides a function (`numtodos.count`) that returns the number of occurrences of each string in the list passed as an argument, or the total of all items stored in the global variable `g:numtodos_tags`. Returns the count as a string for easy compatibility with statusbars.

## Requirements

* Neovim 0.5+

## Installation

```lua
-- using packer.nvim
use 'kaymmm/numtodos.nvim'
```


## Usage

```lua
-- define the default tags to count if no parameters are passed to the count() function
vim.g.numtodos_tags = { 'TODO', 'FIXME', 'XXX' }

local numtodos = require('numtodos')

-- numtodos.count(param)
-- param: table containing strings that you want to count
-- returns: combined count of all the items in param
local count_todos = numtodos.count({'TODO:','todo','TO-DO'})

-- count() without any parameters counts all of the default tags stored in g:numtodos_tags
local count_all = numtodos.count()
```

## Configuration

The only configuration is the optional variable `g:numtodos_tags`, which is a table of default search strings that the function will count if called without any parameters.

The default tags are:
```lua
defaults = { 'TODO', 'FIXME', 'INFO', 'UNSURE', 'XXX' }
```

## License

Released under the GPLv3 license
