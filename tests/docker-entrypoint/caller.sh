#!/usr/bin/env bash

main() {
    local -r current_directory=$(dirname "$0")
    local -r script_path="$current_directory/middleman.sh"
    echo '[caller.sh] As GitHub actions →'
    "$script_path" "--repository bencat-sixense/bump-everywhere-test" "--user bencat-sixense-bot" "--git-token ***" "--release-type release" "--release-token ***" "--commit-message ⬆️ bump everywhere to {{version}}"
    echo '[caller.sh] As user →'
    "$script_path" --repository bencat-sixense/bump-everywhere-test --user bencat-sixense-bot --git-token "***" --release-type release --release-token "***" --commit-message "⬆️ bump everywhere to {{version}}"
}

main