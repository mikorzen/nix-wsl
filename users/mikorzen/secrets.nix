{ inputs, pkgs, config, ... }: {
    imports = [
        inputs.sops-nix.homeManagerModules.sops
    ];

    home.packages = with pkgs; [
        age
        sops
    ];

    sops = {
        defaultSopsFile = ../../secrets.yaml;
        defaultSopsFormat = "yaml";
        age.keyFile = "${config.home.homeDirectory}/.config/sops/age/keys.txt";

        secrets = {
            openrouter_api_key = {};
        };

        templates."session-secrets.fish".content = ''
            set -gx OPENROUTER_API_KEY "${config.sops.placeholder.openrouter_api_key}"
        '';
    };

    programs.fish.shellInit = ''
        if test -r ${config.sops.templates."session-secrets.fish".path}
            source ${config.sops.templates."session-secrets.fish".path}
        end
    '';
}
