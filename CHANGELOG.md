# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

### Added
- Instructions for installing necessary tools (Visual Studio, Windows SDK).
- Automatic signing of executable after build using post-build event.
- Example `post_build_event.xml` for configuring signing in Visual Studio.

## [1.0.0] - 2025-04-17

### Added
- Initial release of Metin2 Launcher with C++ code.
- Launcher built and digitally signed using a self-signed certificate.
- Added batch script (`build-launcher.bat`) for automated build and signing process.
- Implemented a post-build event that signs the executable to avoid false-positive detections.
  
### Fixed
- Addressed issue with Windows Defender SmartScreen blocking the executable.

### Removed
- Nothing removed in this release.

---

**Created with ❤️ by Valentaizar Hitsukaya**
