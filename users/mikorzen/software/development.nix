{ pkgs, ... }: {
  home.packages = with pkgs; [
    # python
    python313
    uv

    # rust
    rustc
    cargo
  ];

  programs = {
    git = {
      enable = true;
      userName = "mikorzen";
      userEmail = "michal.korzen-tech@pm.me";
      extraConfig = {
        init.defaultBranch = "main";
      };
    };

    # java
    java = {
      enable = true;
      package = pkgs.temurin-bin-23;
    };

    # javascript
    bun = {
      enable = true;
      enableGitIntegration = true;
    };

    # python
    ruff = {  # linter + formatter
      enable = true;
      settings = {
        fix = true;
      };
    };
  };
}
