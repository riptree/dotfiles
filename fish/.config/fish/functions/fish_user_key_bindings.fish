function fish_user_key_bindings
  # fzf
  bind \cr fzf_select_history # Bind for fzf select history to Ctrl+R
  bind \ct fzf_change_directory # Bind for fzf change directory to Ctrl+T
  bind \cv fzf_git_branch

  # vim-like
  #bind \cl forward-char

  # prevent iterm2 from closing when typing Ctrl-D (EOF)
  bind \cd delete-char
end
