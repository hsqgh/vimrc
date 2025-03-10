### My .vimrc Config

This repository contains the .vimrc file I use to do the absolute minimal vim configuration to allow me to work on
remote servers.

#### Installation
1. Clone the repo
2. Move the .vimrc file from the cloned repo dir to your home dir `mv ./vimrc/.vimrc ~/.vimrc`

#### Configuration
1. **serverMode** = 0 | 1 - *defaults to 0* - if the server mode is set to 1, the configuration must be applied
manually every time Vim is opened by calling the VimDiesel() function. To configure this locate the `serverMode = 0`
variable at the bottom of the *.vimrc* file.

