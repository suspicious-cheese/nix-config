{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

    packages.x86_64-linux.default = self.packages.x86_64-linux.hello;

    nixosConfigurations = {
      nixos-vm = nixpkgs.lib.nixosSystem {
        system = "aarch64-linux";
        modules = [
        ./configuration.nix
        ./i3.nix
        ];
      };
    
      hyprland = nixpkgs.lib.nixosSystem {
        system = "aarch64-linux";
        modules = [
        ./configuration.nix
        ./hyprland.nix
        ];
      };


    };
 };

}
