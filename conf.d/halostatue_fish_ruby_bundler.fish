# @halostatue/fish-rake/conf.d/halostatue_fish_ruby_bundler.fish:v2.0.0

set --local wrapped \
    annotate \
    appraisal \
    cap \
    capify \
    cucumber \
    guard \
    kitchen \
    middleman \
    nanoc \
    puma \
    rackup \
    rake \
    rspec \
    rubocop \
    ruby \
    sidekiq \
    spec \
    spinach \
    standardrb \
    thin \
    thor \
    unicorn \
    unicorn_rails

set --query --universal bundler_execs
and set --append wrapped $bundler_execs

for exec in $wrapped
    printf 'function %s\n  __bundle_exec %s $argv\nend' $exec $exec | source
end

function _halostatue_fish_ruby_bundler_uninstall \
    -e halostatue_fish_ruby_bundler_uninstall \
    -V wrapped
    functions -e $wrapped _halostatue_fish_ruby_bundler_uninstall
end
