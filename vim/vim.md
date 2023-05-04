- [Normal mode](#normal-mode)
  - [move](#move)
  - [Edit with operators](#edit-with-operators)
    - [combination of operator](#combination-of-operator)
    - [operator shorthand syntax](#operator-shorthand-syntax)
    - [Register](#register)
  - [Macros](#macros)
  - [File explorer](#file-explorer)
    - [Move](#move-1)
- [Insert mode](#insert-mode)
  - [Goto insert mode and back](#goto-insert-mode-and-back)
  - [Another shorthand](#another-shorthand)
- [Visual mode](#visual-mode)
- [Command-line mode](#command-line-mode)
  - [Goto command-line mode](#goto-command-line-mode)
  - [Commands](#commands)
    - [Apply a change over multiple lines](#apply-a-change-over-multiple-lines)
    - [SPLITS AND TABS](#splits-and-tabs)
    - [Other commands](#other-commands)
- [Custom Mappings](#custom-mappings)
- [Multiple cursors](#multiple-cursors)
- [Plugin](#plugin)
  - [vim-surround](#vim-surround)
  - [vim-sneak](#vim-sneak)
  - [vim-easymotion](#vim-easymotion)

# Normal mode

## move

- `h j k l`:basic move
- `H L`:move to the top\bottom of screen
- `gt gT`:move to
- `w b e ge W B E gE`:word move
- `f F t T{character} [; ,]`:find horizontally move
- `/{pattern} ?{pattern} * n N gn gN`:find vertically extremely move
- `0 ^ $ g_`:move horizontally extremely
- `{ } ctrl+d ctrl+u`:move vertically extremely
- `{count}{move command}`
- MOVING SEMANTICALLY
  - Use `gd ctrl+o\i` to jump to definition of whatever is under your cursor and back from there.
  - Use `gf` to jump to a file in an import.
- moving with line number
  - Type `gg` to go to the top of the file.
  - Use `{line}gg` to go to a specific line.
  - Use `G` to go to the end of the file.
  - Type `%` jump to matching ({[]}).

## Edit with operators

### combination of operator

- grammar
  - `{count}{operator}{motion/text object}`:recommend!
  - `{operator}{count}{motion/text object}`
- operator
  - `c`:change
  - `d`:delete
  - `y`:copy
  - `p`:paste
  - `g~ gu gU`:switch case
  - `=`:format code
  - `< >`:remove/add indentation
- motion
  - `w e`:word
  - `hjkl`
  - `f' F' t' T'`
  - `/{pattern}`

### operator shorthand syntax

- When you double an operator you make it operate on a line
  - `dd` delete a whole line
  - `cc` change a whole line
  - `yy` yank (copy) a line
  - `g~~` switch case of a line
  - `>>` shift line right
  - `<<` shift lineleft
  - `==` format line
- when you capitalize a command it performs a stronger (or alternate) version of the original command
  - `D`:deletes from the cursor to the end of the line
  - `C`:changes to the end of a line
  - `Y yy`:copies a complete line
  - `P`:pastes something before the cursor
- `.`:repeats the last change
- `x  dl`:deletes the character under the cursor
- `X  dL`:deletes the character before the cursor
- `s ch`:deletes the character under the cursor and puts you into Insert mode
- `~`:switch case for a single character
- `u ctrl+r`:undo and redo
- Text object
  - grammar
    - `{operator}a{text-object}` Apply operator to all text-object including trailing whitespace
    - `{operator}i{text-object}` Apply operator inside text-object
  - build-in text-object
    - `w`:word
    - `s`:sentence
    - `p`:paragraph
    - `b (`:block surrounded by()
    - `B {`:block surrounded by{}
    - `< >`:block surrounded by<>
    - `[ ]`:block surrounded by[]
    - `t`:tag
    - `" '`:quoted text

### Register

- `unnamed register "` is where you copy and cut stuff to, when you don’t explicitly specify a register. The default register if you will.
- `named registers a-z` are registers you can use explicitly to copy and cut text at will
- `yank register 0` stores the last thing you have yanked (copied)
- `cut registers 1-9` store the last 9 things you cut by using either the delete or the change command
- save in register
  - `"{name of register}y{motion}`
  - `"{name of register}d{motion}`
  - `"{name of register}c{motion}`
  - using the capitalized version a register (i.e. A instead of a) appends whatever you copy or cut into that register
- operator
  - normal mode:
    - `"{name of register}p`;paste the content in register
  - insert mode:
    - `CTRL-R "` pastes the contents of the unnamed register
    - `CTRL-R a` pastes the contents of register a
    - `CTRL-R 0` pastes the contents of the yank register
- `:reg {register}`:see what is in register

## Macros

- Vim loves saving you time and hassle, and offers you lots of ways in which you can repeat commands:
- The `.` command lets you repeat the last change.
- The `;` and `,` commands let you repeat the last character search forwards and backwards respectively.
- `n` and `N` let you repeat the last search also forwards and backwards.
- `/` and `?` also let you repeat the last search forwards or backwards.
- `:@` and `@@` let you repeat Ex commands.
- Create a vim macro
  1. Type `q{register}` to start recording a macro
  2. Perform the different actions you want to include in the macro.
  3. When you’re done, type `q` to end the recording.
- Use macrp:Type `{count}@{register} @@`

## File explorer

### Move

- `<CTRL-W> h`:moving from the code window
- Traverse file explorer up and down with `k` and `j`.
- Expand directories with `l` when the cursor is over a directory.
- Collapse directories with `h`
- Open files with `l` when the cursor is on a file

# Insert mode

## Goto insert mode and back

- `i a I A o O gi`:goto insert mode
- `s c`:change a character,change operation
- `esc ctrl-c ctrl-[`:go back to normal mode

## Another shorthand

- `CTRL-h` lets you delete the last character you typed
- `CTRL-w` lets you delete the last word you typed
- `CTRL-u` lets you delete the last line you typed
- `CTRL-R {register}` you can paste the contents of a register after the cursor

# Visual mode

- `v V ctrl+v`:goto visual mode
- `{trigger visual mode}{motion}{operator}`:combination of operation
- `shift+i 注释/删除符号`:comment and cancel

# Command-line mode

## Goto command-line mode

- `:`:command
- `/{pattern} ?{pattern} * n N gn gN`:search pattern

## Commands

### Apply a change over multiple lines

- `:edit {relative-path-to-file}`:edit file
- `:write :w :quit :q :wq {all/a} {!}`:save/leave file(combination with `!` mean force,with `all a`mean all files)
- Operating on multiple lines
  - `:[range]command[options]`
    - `[range]`:defines a range of lines to which to apply the command
      - `, + - % 0 $`:range,offset,whole,begin,end
    - `command`
      - `substitute`:substitute arbitrary bits of text for others of your choosing
        - `:[range]s/{pattern}/{substitute}/{flags}`
        - `range` defines the range in which we’ll apply the substitution
        - `pattern` is a search pattern that describes the text we want to change. Like /{pattern} it supports regular expressions.
        - `substitute` is the text we want to substitute
        - `flags` let us set options that configure the substitution
          - `g i c`:global,case insensitive searches,confirm each and every substitution
    - `[options]`:vary depending on the command itself

### SPLITS AND TABS

- SPLITS
  - **Divide your workspace into vertical and horizontal split windows**
  - `:sp {relative-path-to-file}`:open a file in a horizontal split
  - `:vsp {relative-path-to-file}`:open a file in a vertical split
  - `ctrl+w + hjkl`:move in file explorer and split
- TABS
  - `:tabnew {file}`:open a file in a new tab
  - `:tabn (:tabnext)`:go to the next tab
  - `:tabp (:tabprevious)`:go to the previous tab
  - `:tabo (:tabonly)`:close all other tabs

### Other commands

- `@:`:repeat the last ex command

# Custom Mappings

- Create custom mappings

  1. Open the command palette with CMD-SHIFT-P or CTRL-SHIFT-P
  2. Type preferences
  3. Select the Preferences: Open User Settings Options
  4. Search `vim`
  5. Different mappings for different modes,find and open `Edit in setting.json`

  6. `<leader>`:used to create custom mapping,default `\`
  7. grammar

  - **before**:Is the sequence of commands that you type.
  - **after**:What the previous commands map to and what gets executed when you type them.
  - **commands**
    - trigger visual studio code native commands
    - vim commands

- Some good custom mapping

  - `<leader> -> <Space>`

    ```
    {
    "vim.leader": "<Space>",
    }
    ```

  - `J K`:move down/up faster
    ```
    "vim.normalModeKeyBindingsNonRecursive": [
      {
        "before": ["J"],
        "after": ["5", "j"]
      },
      {
        "before": ["K"],
        "after": ["5", "k"]
      },
    ]
    ```
  - `<leader>,j`:keep joining lines
    ```
    "vim.normalModeKeyBindingsNonRecursive": [
      {
        "before": ["<Leader>", "j"],
        "after": ["J"]
      },
    ]
    ```
  - Move tab
    ```
    "vim.normalModeKeyBindingsNonRecursive": [
        {
          "before": ["<Leader>", "t", "t"],
          "commands": [":tabnew"]
        },
        {
          "before": ["<Leader>", "t", "n"],
          "commands": [":tabnext"]
        },
        {
          "before": ["<Leader>", "t", "p"],
          "commands": [":tabprev"]
        },
        {
          "before": ["<Leader>", "t", "o"],
          "commands": [":tabo"]
        }]
    ```
  - Bind vscode command
    ```
    "vim.normalModeKeyBindingsNonRecursive": [
      {
        "before": ["<Leader>", "p"],
        "commands": [
            "workbench.action.showCommands",
        ]
      },
      {
        "before": ["<Leader>", "t"],
        "commands": [
            "workbench.action.gotoSymbol",
        ]
      }
    ]
    ```

# Multiple cursors

- `gb`:add multiple cursors based on word search
- In visual mode,for consecutive lines,type `I`

# Plugin

## vim-surround

- `ds{count}{motion}`:delete the surroundings
- `cs{count}{motion}`:change the surroundings
- `ys{count}{motion}`:add surroundings
- `S{desired character}`:surround your text selection with the desired character

## vim-sneak

## vim-easymotion
