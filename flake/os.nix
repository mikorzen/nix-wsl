{ inputs, ... }: {
  "Acerussy" = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = { inherit inputs; };
    system = "x86_64-linux";
    modules = [
      ../hosts/default.nix
      ../hosts/Acerussy.nix
    ];
  };
}
