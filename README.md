# halostatue/fish-ruby-bundler

[![Version][version]](https://github.com/halostatue/fish-ruby-bundler/releases)

Automatically overrides the some calls to prepend `bundle exec` if the gem is
available within the context of a Ruby bundle.

This is a fork of [oh-my-fish/plugin-bundler][omf-bundler] with some bug fixes.

## Installation

Install with [Fisher][Fisher]:

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

Additional bundled executables may be added in your `config.fish` by setting the
list in the `bundler_execs` universal variable:

```fish
set --unibundler_execs jekyll mustache
```

## Licence

[MIT](./LICENCE.md)

## Change Log

[CHANGELOG](./CHANGELOG.md)

## Contributing

- [Contributing](./CONTRIBUTING.md)
- [Contributors](./CONTRIBUTORS.md)
- [Code of Conduct](./CODE_OF_CONDUCT.md)

[fish shell]: https://fishshell.com "friendly interactive shell"
[Version]: https://img.shields.io/github/tag/halostatue/fish-ruby-bundler.svg?label=Version
[Fisher]: https://github.com/jorgebucaran/fisher
[fish]: https://github.com/fish-shell/fish-shell
[omf-bundler]: https://github.com/oh-my-fish/plugin-bundler
