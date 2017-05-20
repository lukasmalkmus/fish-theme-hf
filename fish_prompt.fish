# Symbols
__hf_set_default hf_prompt_symbol "❯"

# Colors
__hf_set_default hf_color_red (set_color red)
__hf_set_default hf_color_green (set_color green)
__hf_set_default hf_color_normal (set_color normal)

function fish_prompt
    # Capture previous exit code.
    set -l exit_code $status

    # Set the default symbol color to green.
    set -l symbol_color $hf_color_green

    set -l prompt ""

    # Set symbol color to red when the previous command failed.
    if test $exit_code -ne 0
        set symbol_color $hf_color_red
    end

    set prompt $prompt "\n$symbol_color$hf_prompt_symbol$hf_color_normal "

    echo -e -s $prompt
end