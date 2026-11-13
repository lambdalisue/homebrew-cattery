# homebrew-cattery

The Homebrew tap of [Cattery](https://github.com/lambdalisue/cattery), a GUI
terminal app built on the felis terminal daemon.

```sh
brew install --cask lambdalisue/cattery/cattery
```

The cask follows Cattery's releases: each release dispatches the version and
the disk image's checksum here, and `.github/workflows/update.yml` writes them
into `Casks/cattery.rb`.

Cattery is for Apple silicon Macs. It is signed by a self-signed
certificate, not by an Apple Developer ID, so the cask removes the
quarantine attribute after installing it.
