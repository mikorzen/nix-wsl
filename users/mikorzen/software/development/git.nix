{ pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "mikorzen";
    userEmail = "michal.korzen-tech@pm.me";
  };
}
