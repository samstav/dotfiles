#!/usr/bin/env bash

# check for staged or unstaged changes in
# the dotfiles dir
DOTFILES_GIT_DIFF="$(git -C "${DOTFILES_DIR}" status --short)"

# TODO: Only show this "warning" 3 times for
# each time the dotfiles dir is modified.
if ! [[ -z ${DOTFILES_GIT_DIFF} ]]; then
    errcho 'Changes deteced in your dotfiles directory.'
    errcho 'Please review and `git commit` these changes:'
    echo "${DOTFILES_GIT_DIFF}"
fi
