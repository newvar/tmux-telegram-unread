#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/shared.sh"

print_telegram_unread() {
	if [ command_exists "telegram-cli" ]; then
        telegram-cli -NWl1 -e 'dialog_list' | grep -c '[1-9][0-9]* unread'
    else
        echo "Install Telegram CLI"
	fi
}

main() {
	print_telegram_unread
}
main
