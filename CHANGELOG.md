# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.1] - 2022-01-30
Change `SUPL_HOST` to `supl.qxwz.com`.

## [1.0.0] - 2020-05-03

🎉 First release!

### Added

- Everything needed to make a standard Magisk module.
- A `post-fs-data` script that replaces the values of `SUPL_HOST` and `NTP_SERVER` in Android's `gps.conf`.
- A readme detailing everything needed to know before installing the module.
- A license file.
- GitHub workflows to lint the script as well as build and publish the module.

[Unreleased]: https://github.com/olivierlacan/keep-a-changelog/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/olivierlacan/keep-a-changelog/releases/tag/v1.0.0
