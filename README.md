these are my config files for nixOS. will soon be populated.


### Bootstrapping
home manager
```
nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz home-manager
nix-shell '<home-manager>' -A install
```

### TODO
flake.nix required home.module path to be hardcoded due to is resolving to `nix-store/something/home.nix` otherwise. (requires --impure due to pure eval)
