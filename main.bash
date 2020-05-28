#!/bin/bash

PROJECT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

function pretty_print_gfm_markdown() {
    MARKDOWN_FILE="$1"
    /usr/bin/pandoc "--input=$MARKDOWN_FILE" "--output=-" --from=gfm --to=plain
}

pretty_print_gfm_markdown "$PROJECT_PATH/README.md"
