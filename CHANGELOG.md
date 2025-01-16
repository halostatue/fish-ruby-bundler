# fish-ruby-bundler Changelog

## 2.0.0 / 2025-01-15

- Renamed `has:bundled` to `has_bundled`.
- Renamed `bundle:exec` to `__bundle_exec`.
- Removed support for `$bundler_plugin_execs`.
- Updated documentation and clarified that `$bundler_execs` must be a universal
  variable.
- Removed an unnecessary `echo` statement.
- Updated the default bundle exec list:

  - Added: `appraisal` and `standardrb`
  - Removed: `dashing`, `rainbows`, `shotgun` and `spork`

## 1.0.0 / 2020-10-13

- Initial version
