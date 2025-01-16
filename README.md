# halostatue/fish-ruby-bundler

Automatically overrides the some calls to prepend `bundle exec` if the gem is
available within the context of a Ruby bundle.

This is a fork of [oh-my-fish/plugin-bundler][omf-bundler] with some bug
fixes.

[![Version]][release]

## Installation

Install with [Fisher][]:

```fish
fisher install halostatue/fish-ruby-bundler
```

### System Requirements

- [fish] 3.0+

## Configuration and Default Functions

The following executables will automatically be wrapped:

- `annotate`
- `cap`
- `capify`
- `cucumber`
- `dashing`
- `guard`
- `kitchen`
- `middleman`
- `nanoc`
- `puma`
- `rackup`
- `rainbows`
- `rake`
- `rspec`
- `rubocop`
- `ruby`
- `shotgun`
- `sidekiq`
- `spec`
- `spinach`
- `spork`
- `thin`
- `thor`
- `unicorn`
- `unicorn_rails`

Additional bundled executables may be added in your `config.fish` by setting
the list in the `bundler_execs` universal variable:

```fish
set --unibundler_execs jekyll mustache
```

## License

[MIT](LICENCE.md)

[fish shell]: https://fishshell.com "friendly interactive shell"
[Version]: https://img.shields.io/github/tag/halostatue/fish-ruby-bundler.svg?label=Version
[release]: https://github.com/halostatue/fish-ruby-bundler/releases
[Fisher]: https://github.com/jorgebucaran/fisher
[fish]: https://github.com/fish-shell/fish-shell
[omf-bundler]: https://github.com/oh-my-fish/plugin-bundler
