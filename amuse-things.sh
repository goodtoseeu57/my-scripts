#!/bin/bash

prompt_amuse_setup() {
    if [[ -n "$AWS_PROFILE" ]]; then
        PROMPT+="AWS: %{$fg[yellow]%}${AWS_PROFILE}%{$reset_color%} 🐚 "
    fi
}

prompt_amuse_setup
