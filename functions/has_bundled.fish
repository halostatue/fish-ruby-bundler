# @halostatue/fish-rake/functions/has_bundled.fish:v2.0.0

function has_bundled -d 'Returns true if the executable is in the bundle'
    set --query argv[1]
    or return 1

    command --query bundle
    or return 1

    if ! test -r Gemfile && ! test -d .bundle
        return 1
    end

    set --function bindir (command bundle exec ruby -e 'puts Gem.bindir')
    or return 1

    for bin in $argv
        path is --type file --perm exec $bindir/$bin
        and return 0
    end

    return 1
end
