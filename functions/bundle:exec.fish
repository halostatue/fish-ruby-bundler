function bundle:exec
    if set -q argv[1]; and has:bundled $argv[1]
        command bundle exec $argv
    else
        command $argv
    end
end
