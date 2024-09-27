{ inputs, ... }: {
  "mikorzen@Acerussy" = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = import inputs.nixpkgs { system = "x86_64-linux"; };
    extraSpecialArgs = { inherit inputs; };
    modules = [
      ../users/mikorzen.nix
    ];
  };
}
