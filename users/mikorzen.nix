{  # host-agnostic home-manager configuration
  imports = [
    ./mikorzen/dotfiles.nix
    ./mikorzen/software.nix
  ];

  programs.home-manager.enable = true;

  home = rec {
    username = "mikorzen";
    homeDirectory = "/home/${username}";

    sessionVariables = {
      FLAKE = "${homeDirectory}/.nix";
    };

    stateVersion = "24.05";
  };
}
