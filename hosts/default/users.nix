{ pkgs, ... }: {
  users.users."mikorzen" = {
    isNormalUser = true;
    description = "Michał Korzeń";
    shell = pkgs.fish;
  };

  wsl.defaultUser = "mikorzen";
}
