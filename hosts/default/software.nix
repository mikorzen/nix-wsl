{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    wget
  ];

  programs = {
    fish.enable = true;    # shell
    git.enable = true;     # version control (that's crazy)
    nh.enable = true;      # nix helper
    nix-ld.enable = true;  # needed for working VS Code server
  };

  wsl.docker-desktop.enable = true;  # docker-desktop compatibility
}
