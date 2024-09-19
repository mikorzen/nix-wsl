{  # host-agnostic home-manager configuration
  imports = [
    ./home/development.nix
    ./home/dotfiles.nix
    ./home/terminal.nix
  ];

  programs.home-manager.enable = true;

  home = rec {
    stateVersion = "24.05";

    username = "mikorzen";
    homeDirectory = "/home/${username}";
    sessionVariables.FLAKE = "${homeDirectory}/.nix";
  };
}
