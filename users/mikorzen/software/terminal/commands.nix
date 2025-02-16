{ pkgs, ... }: {
  home.packages = with pkgs; [
    dust  # `du` alternative
  ];

  programs = {
    bat.enable = true;     # `cat` alternative
    eza = {                # `ls` alternative
      enable = true;
      enableBashIntegration = false;
      enableFishIntegration = false;
    };
    fd = {                 # `find` alternative
      enable = true;
      hidden = true;
    };
  };
}
