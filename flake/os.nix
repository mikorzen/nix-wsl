{ inputs, system, ... }: let
  defaults = {
    inherit system;
    specialArgs = { inherit inputs; };
    modules = [ ../hosts/default.nix ];
  };
  mkOsConfig = hostModule: inputs.nixpkgs.lib.nixosSystem (
    defaults // { modules = defaults.modules ++ hostModule; }
  );
in {
  "Acerussy" = mkOsConfig [ ../hosts/Acerussy.nix ];
  "Computerussy" = mkOsConfig [ ../hosts/Computerussy.nix ];
}
