# Tmux Telegram Unread
Tmux plugin to show telegram unread dialogs count in status bar as a widget.

The main difference from the https://github.com/newvar/tmux-telegram-unread is that the telegram-cli have to be started as a daemon (https://github.com/vysheng/tg/wiki/Running-as-daemon)
or with the defined port (we look at 2391 by default):

        $ telegram-cli -P 2391

It fixes a TG CLI bug with stolen new messages. We use netcat to get info.

### Usage

Put #{telegram_d_unread} in status bar, as example:

        set -g status-right "#[fg=colour39]Tg: #{telegram_d_unread} #[fg=yellow] | %a %d-%h-%y %H:%M "

### Configuration

Configuration is not required, but you can specify the port of telegram-cli instance and netcat timeout.

- Set telegram-cli port with the setting in `.tmux.conf`:

        set -g @telegram-daemon-port '2391'

- Set netcat connection timeout (in seconds). Try it only if something doesn't work:

        set -g @telegram-daemon-timeout '1'

### Dependecies

Depends on
* [Telegram CLI](https://github.com/vysheng/tg)
* nc (netcat)

Update time depends on status-interval option

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @tpm_plugins '                  \
      tmux-plugins/tpm                     \
      newvar/tmux-telegram-daemon-unread   \
    '

Hit `prefix + I` to fetch the plugin and source it. You should now be able to
use the plugin.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/newvar/tmux-telegram-daemon-unread ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/tmux-telegram-daemon-unread.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

You should now be able to use the plugin.

# License

MIT
