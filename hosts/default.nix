{ inputs, pkgs, ... }: {
    imports = [
        inputs.nixos-wsl.nixosModules.default
    ];

    wsl = {
        enable = true;
        defaultUser = "mikorzen";
    };

    users.users."mikorzen" = {
        isNormalUser = true;
        hashedPassword = "$y$j9T$5FxSToqWxtmplEHCmr17q/$mElVnN8q0wc9kH1lHIvwouemtXaFM3hHdO4csNFh/U3";
        description = "Michał";
        extraGroups = [ "networkmanager" "wheel" ];
        shell = pkgs.fish;
    };

    environment.systemPackages = with pkgs; [
        wget
    ];

    programs = {
        fish.enable = true;    # shell
        git.enable = true;     # version control (that's crazy)
        nh.enable = true;      # nix helper
    };

    time.timeZone = "Europe/Warsaw";

    nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
