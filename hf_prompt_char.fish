function hf_prompt_char -d "Set a custom prompt char, or reset to '❯' without an argument."
    switch (count $argv)
        case 0
          set hf_prompt_symbol "❯"; or echo -ne ''
        case 1
          set hf_prompt_symbol $argv[1]
    end
end