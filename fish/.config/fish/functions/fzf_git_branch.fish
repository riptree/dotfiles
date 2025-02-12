function _fzf_git_branch
    if [ (count $argv) ]
        fzf --reverse --query "$argv" |read selected_branch
    else
        fzf --reverse |read selected_branch
    end

    if [ $selected_branch ]
        git checkout $selected_branch
        commandline -r ''
        commandline -f repaint
    else
        commandline ''
    end
end

function fzf_git_branch
    # gitリポジトリ内かチェック
    if not git rev-parse --git-dir >/dev/null 2>&1
        set_color red
        echo "Not a git repository."
        set_color normal
        fish_prompt
        return 1
    end

    # ローカルブランチのみを取得
    git branch --format="%(refname:short)" | _fzf_git_branch $argv
end
