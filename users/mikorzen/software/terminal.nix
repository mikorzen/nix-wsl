{
  imports = [
    ./terminal/commands.nix
    ./terminal/fish.nix       # fish shell
  ];

  programs = {
    fastfetch.enable = true;  # info fetcher
    oh-my-posh = {            # prompt
      enable = true;
      enableFishIntegration = false;
    };
  };
}
