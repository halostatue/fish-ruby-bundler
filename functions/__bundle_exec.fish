# @halostatue/fish-rake/functions/__bundle_exec.fish:v2.0.0

function __bundle_exec
    if ! set --query argv[1]
        echo >&2 "__bundle_exec requires a program argument"
        return 1
    end

    if has_bundled $argv[1]
        command bundle exec $argv
    else
        command $argv
    end
end
