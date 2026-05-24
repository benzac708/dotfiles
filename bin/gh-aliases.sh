# GH CLI / CI aliases
cicd() {
  gh run list -L 5 --json status,name,headBranch,conclusion,updatedAt \
    -q '.[] | "\(.status) \(.conclusion // "…") \(.headBranch) ← \(.name)"' | column -t
}

ghr() {
  local id
  id=$(gh run list -L 20 --json databaseId,headBranch,workflowName,status,conclusion,createdAt,event \
    | jq -r '
        def ago: now - (.[:19] | strptime("%Y-%m-%dT%H:%M:%S") | mktime) | . / 60 | floor | if . < 60 then "\(.)m" else "\(./60 | floor)h" end;
        sort_by(.createdAt) | reverse[]
        | "\(.createdAt | ago) │ \(.event) │ \(.headBranch) │ \(.workflowName) │ \(.conclusion // .status) │ \(.databaseId)"' \
    | fzf --reverse \
        --header "Pick a workflow run" \
        --preview '
          id=$(echo {} | awk -F"│" "{print \$NF}" | tr -d " ")
          gh run view "$id" --log 2>/dev/null | tail -20
        ' \
        --preview-window=down:10:wrap \
    | awk -F'│' '{print $NF}')
  [ -n "$id" ] && gh run view "$id" -w
}

alias reload='source ~/.bashrc && echo "✓ Shell reloaded"'
