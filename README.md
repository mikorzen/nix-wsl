# my ❄️ config (on windows?!!)

## Setup

```bash
git clone https://github.com/mikorzen/nix.git
```

```bash
cd <cloned repo>
```

```bash
sudo nix-channel --update
```

```bash
nix flake update
```

- change `wsl.defaultUser` under [hosts/default.nix](hosts/default.nix) to "nixos" temporarily, for the first `nixos-rebuild switch`

```bash
nixos-rebuild switch --flake .#<machine-name>
```

- change `wsl.defaultUser` under [hosts/default.nix](hosts/default.nix) back to "mikorzen"

```bash
nixos-rebuild boot --flake .#<machine-name>
```
- now, in pwsh:

```pwsh
wsl -t NixOS
```

```pwsh
wsl -d NixOS --user root exit
```

```pwsh
wsl -t NixOS
```

- back in WSL:

```bash
nix run home-manager/master -- init --switch
```

```bash
rm $HOME/.config/fish/config.fish
```

```bash
cd <cloned repo>
```

```bash
home-manager switch --flake .#<user-name>@<machine-name>
```

- download ssh keys from Proton Pass, put them in `$HOME/.ssh`, and make sure they have correct permissions:

```bash
chmod 600 <private-key>
```

```bash
chmod 644 <public-key>.pub
```


## [`codex-acp` with Zed fix](https://github.com/numtide/llm-agents.nix/blob/main/packages/codex-acp/README.md#usage-with-zed-editor)
- get path to codex-acp bin used by Zen

```bash
ls ~/.local/share/zed/external_agents/registry/codex-acp/
```

- link to the one installed in the flake

```bash
ln -sf $(which codex-acp) ~/.local/share/zed/external_agents/registry/codex-acp/<version>/codex-acp
```
