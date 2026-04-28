{ inputs, pkgs, config, ... }: {
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

        bun.enable = true;
        opencode = {
            enable = true;
            web.enable = true;
        };
        codex.enable = true;
    };

    home = {
        packages = with pkgs; [
            nixd  # needed for working nix language server in Zed + WSL
            # inputs.llm-agents.packages.${pkgs.stdenv.hostPlatform.system}.codex-acp  # https://github.com/numtide/llm-agents.nix/blob/main/packages/codex-acp/README.md
            python315
        ];
        sessionPath = [
            "${config.home.homeDirectory}/.local/bin"
            "${config.home.homeDirectory}/.bun/bin"
        ];
    };
}
