# kde-builder shell for NixOS

## Requirements

kde-builder require git config alias. If you config is managed by home-manager, you need to add this following configuration.
```nix
programs.git = {
    [...]
    extraConfig = {
        url."https://invent.kde.org/".insteadOf = "kde:";
        url."ssh://git@invent.kde.org/".pushInsteadOf = "kde:";
    };
    [...]
};
```

## How to use it

Without flake
```bash
nix-shell
```

With flake
```bash
nix develop
```

## How to configure it

Use builtins command.
```bash
kde-builder --generate-config
```

Then, you can test it with solid
```bash
kde-builder solid
```
