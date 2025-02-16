{
  imports = [
    ./software/terminal.nix
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

    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };
  };
}
