function prompt {
    $branch = git branch --show-current 2>$null

    if ($branch) {
        "PS $($executionContext.SessionState.Path.CurrentLocation) [$branch]`n> "
    }
    else {
        "PS $($executionContext.SessionState.Path.CurrentLocation)`n> "
    }
}