{  # Acerussy-specific NixOS-WSL configuration
  system.stateVersion = "24.05";

  wsl.wslConf.network.hostname = "Acerussy";
}
