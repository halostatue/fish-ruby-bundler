function _halostatue_fish_ruby_bundler_uninstall -e halostatue_fish_ruby_bundler_uninstall
    functions -e (_halostatue_fish_ruby_bundler_wrapped_executables)
    functions -e (functions -a | string match -e -r _halostatue_fish_ruby_bundler_)
end

function _halostatue_fish_ruby_bundler_wrapped_executables
    set -l execs annotate cap capify cucumber dashing guard kitchen \
        middleman nanoc puma rackup rainbows rake rspec rubocop ruby \
        shotgun sidekiq spec spinach spork thin thor unicorn unicorn_rails

    set -q bundler_plugin_execs
    and set -a execs $bundler_plugin_execs

    set -q bundler_execs
    and set -a execs $bundler_execs

    echo $execs | string split ' '
end

for executable in (_halostatue_fish_ruby_bundler_wrapped_executables)
echo $executable
    function $executable --inherit-variable executable
        bundle:exec $executable $argv
    end
end
