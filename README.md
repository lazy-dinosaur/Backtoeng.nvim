# Backtoeng.nvim

Go to Insert mode and comeback to Normal mode with none english language.

Go to Command mode and comeback to Normal mode with none english language.

There are lots of stressfull situation while jumping across between english and other input sources
sounds familiar? then this plug in is for you!

## Setup

> [!IMPORTANT]
> You need cli command line to choose english input source!!!

For setup you need only one cli command line to change input source to English

- Linux example with fcitx5-remote

  With Fcitx5-remote you have option to activate/inactivate input source.
  Inside of the fcitx ime if you list English language as first option then the command will be `fcitx5-remote -c`

  ```lua
    {
      "lazy-dinosaur/Backtoeng.nvim",
      event = "VeryLazy",
      opts = {
      toEng = "fcitx5-remote -c",
      },
    }
  ```

- Macos example with

  For Macos xkbswitch is recommended

  ```lua
    {
      "lazy-dinosaur/Backtoeng.nvim",
      event = "VeryLazy",
      opts = {
      toEng = "Path_to_the_xkbswitch/xkbswitch -se US",
      },
    }
  ```

## Feature

Function of this plugin is really simple it just remap <Esc>, <CR>.
If you press <Esc> from insert mode it act as <Esc> but before that it will trigger to change the language back to english
It have same principle when you press <Esc> || <CR> in command mode or Fuzzy finder or visual mode

## Todo

The plugin is just change the keymap with one more function. So it just concept of the later plugin
Later i will make this plugin works without keymapping and will use state and autocmd
