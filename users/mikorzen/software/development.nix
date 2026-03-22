{ inputs, pkgs, ... }: {
    programs = {
        git = {
            enable = true;
            settings = {
                user = {
                    name = "mikorzen";
                    email = "michal.korzen-tech@pm.me";
                };
                init.defaultBranch = "main";
            };
        };

        direnv = {
            enable = true;
            nix-direnv.enable = true;
        };

        codex.enable = true;
    };

    home.packages = with pkgs; [
        inputs.llm-agents.packages.${pkgs.stdenv.hostPlatform.system}.codex-acp  # https://github.com/numtide/llm-agents.nix/blob/main/packages/codex-acp/README.md
    ];
}
