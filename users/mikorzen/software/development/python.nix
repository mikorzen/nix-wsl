{ pkgs, ... }: {
  home.packages = with pkgs; [
    python313
    uv
  ];

  programs.ruff = {  # linter + formatter
    enable = true;
    settings = {
      fix = true;
    };
  };
}
