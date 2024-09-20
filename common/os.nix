{ pkgs, inputs, ... }: {  # host-agnostic NixOS-WSL configuration
  imports = with inputs; [
    nixos-wsl.nixosModules.default
    ./os/software.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  wsl = {
    enable = true;
    defaultUser = "mikorzen";
    docker-desktop.enable = true;
  };

  users.users."mikorzen" = {
    isNormalUser = true;
    description = "Michał Korzeń";
    shell = pkgs.fish;
  };
}
