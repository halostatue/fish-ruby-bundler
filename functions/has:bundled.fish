function has:bundled -d 'Returns true if the executable is in the bundle'
    command -q bundle
    or return 1

    set -l bindir (command bundle exec ruby -e 'puts Gem.bindir')
    or return 1

    set -q argv[1]
    or return 1

    for bin in $argv
        test -f $bindir/$bin
        and return 0
    end

    return 1
end
