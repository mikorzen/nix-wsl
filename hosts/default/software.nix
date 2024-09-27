{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    wget
  ];

  wsl.docker-desktop.enable = true;  # docker-desktop compatibility

  programs = {
    nix-ld = {  # needed for working VS Code server
      enable = true;
      package = pkgs.nix-ld-rs;
    };
    fish.enable = true;  # shell
    git.enable = true;   # version control (that's crazy)
    nh.enable = true;    # nix helper
  };
}
