# halostatue/fish-ruby-bundler

Automatically overrides the some calls to prepend `bundle exec` if the gem is
available within the context of a Ruby bundle.

This is a fork of [oh-my-fish/plugin-bundler] with some bugfixes, supporting
only Fish 3.0 supported and configured for Fisher installation.

[![Version]]

## Installation

Install with [Fisher] (recommended):

```fish
# Fisher v3.x
fisher add halostatue/fish-ruby-bundler

# Fisher v4.0+
fisher install halostatue/fish-ruby-bundler
```

<details>
<summary>Not using a package manager?</summary>

---

Copy `functions/*.fish`, `conf.d/*.fish`, to your fish configuration directory
preserving the directory structure.
</details>

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
the list in the `bundler_execs` variable:

```fish
set bundler_execs jekyll mustache
```

For compatibility with [oh-my-fish/plugin-bundler], this plugin also supports
`bundler_plugin_execs` for the same purpose.

```fish
set bundler_plugin_execs jekyll mustache
```

## License

[MIT](LICENCE.md)

[fish shell]: https://fishshell.com "friendly interactive shell"
[Version]: https://img.shields.io/github/tag/halostatue/fish-ruby-bundler.svg?label=Version
[![Version]]: https://github.com/halostatue/fish-ruby-bundler/releases
[Fisher]: https://github.com/jorgebucaran/fisher
[fish]: https://github.com/fish-shell/fish-shell
[oh-my-fish/plugin-bundler]: https://github.com/oh-my-fish/plugin-bundler
