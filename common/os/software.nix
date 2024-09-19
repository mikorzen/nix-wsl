{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    wget
  ];

  programs = {
    nix-ld = {  # needed for working VS Code server on NixOS-WSL
      enable = true;
      package = pkgs.nix-ld-rs;
    };
    fish.enable = true;
    git.enable = true;
    nh.enable = true;
  };
}
