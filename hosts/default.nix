{ inputs, ... }: {
  imports = [
    inputs.nixos-wsl.nixosModules.default
    ./default/software.nix
    ./default/users.nix
  ];

  wsl.enable = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  time.timeZone = "Europe/Warsaw";
}
