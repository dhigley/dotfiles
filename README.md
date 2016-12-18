# @dhigley has dotfiles

My mac, personalized with dotfiles.
Borrowed from [@jackboberg][boberg] and improved by me.

## install

    git clone --recursive git://github.com/dhigley/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    rake install

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

When complete, run ./brewconfig.sh to install the listed brew and brew cask files.

### vim

I use vundle to manage my vim plugins. To install the plugins listed in .vimrc...

    vim +BundleInstall +qall

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `rake install`.
- **topic/\*.completion.sh**: Any files ending in `completion.sh` get loaded
  last so that they get loaded after we set up zsh autocomplete functions.

[boberg]: https://github.com/jackboberg/dotfiles
