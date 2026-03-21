{
    imports = [
        ./mikorzen/dotfiles.nix
        ./mikorzen/env.nix
        ./mikorzen/software.nix
    ];

    programs.home-manager.enable = true;

    home = rec {
        username = "mikorzen";
        homeDirectory = "/home/${username}";

        shell.enableShellIntegration = false;
        sessionVariables = {
            NH_FLAKE = "${homeDirectory}/.nix";
        };

        stateVersion = "25.11";
    };
}
