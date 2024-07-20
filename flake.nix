{
  description = "A Humble Nix Sandbox";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nur = { url = "github:nix-community/NUR"; };
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    nur,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {inherit system;};
        pname = "nixbox";
        version = "0.0.1";
      in {
        devShells.default =
          pkgs.mkShell
          {
            buildInputs = with pkgs; [
              just
            ];

            shellHook = ''
              echo "Activated Nix Shell"
            '';
          };
      }
    );
}
