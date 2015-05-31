# Tmux Telegram Unread

discontinued at this moment, not recommeneded, use [this version](https://github.com/newvar/tmux-telegram-daemon-unread) please

Tmux plugin to show telegram unread dialogs count in status bar as a widget.

The main difference from [newer Tmux Telegram Unread](https://github.com/newvar/tmux-telegram-daemon-unread) is that this plugin starts telegram-cli instance every status-interval.<br/>
It causes the known bug: plugin steals new messages from other instances of TG CLI, it is a TG CLI trouble.

### Usage

Put #{telegram_unread} in status bar, as example:

        set -g status-right "#[fg=colour39]Tg: #{telegram_unread} #[fg=yellow] | %a %d-%h-%y %H:%M "

### Dependecies

Depends on
* [Telegram CLI](https://github.com/vysheng/tg)

Update time depends on status-interval option

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @tpm_plugins '                  \
      tmux-plugins/tpm                     \
      newvar/tmux-telegram-unread   \
    '

Hit `prefix + I` to fetch the plugin and source it. You should now be able to
use the plugin.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/newvar/tmux-telegram-unread ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/tmux-telegram-unread.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

You should now be able to use the plugin.

# License

MIT
