# Overview

Jrnlr is a small plugin for keeping a journal with Vim. Currently, only three
commands are provided:

- `JrnlrToday`
- `JrnlrTomorrow`
- `JrnlrYesterday`

Each open a daily file and load a template if provided.

# Setup

Install using your plugin manager of choice. For example, using
[vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'glapa-grossklag/jrnlr'
```

Additionally, you must set `g:jrnlr_dir` to a directory of choice. For example,

```vim
let g:jrnlr_dir = '~/journal'
```

# Configuration

- To change the template, set `g:jrnlr_template`. For example,

  ```vim
  let g:jrnlr_template = '~/template.txt'
  ```
- To change the file extension on new entries (the default is `.txt`), set
  `g:jrnlr_extension`. For example,

  ```vim
  let g:jrnlr_extension = '.md'
  ```
