{ inputs, ... }: {
  "Acerussy" = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = { inherit inputs; };
    system = "x86_64-linux";
    modules = [
      ../common/os.nix          # host-agnostic     NixOS-WSL configuration
      ../hosts/Acerussy/os.nix  # Acerussy-specific NixOS-WSL configuration
    ];
  };
}
