{ inputs, ... }: {
  "mikorzen@Acerussy" = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = import inputs.nixpkgs { system = "x86_64-linux"; };
    extraSpecialArgs = { inherit inputs; };
    modules = [
      ../common/home.nix  # host-agnostic home-manager configuration
    ];
  };
}
