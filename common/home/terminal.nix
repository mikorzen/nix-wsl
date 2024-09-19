{
  imports = [
    ./terminal/fish.nix       # fish shell
    ./terminal/utilities.nix  # utilities
  ];

  programs = {
    oh-my-posh = {            # prompt
      enable = true;
      enableFishIntegration = false;
    };
    fastfetch.enable = true;  # info fetcher
  };
}
