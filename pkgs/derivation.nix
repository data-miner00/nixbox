# This is a derivation settings for a package.
# It is the settings for a package.
# To instantiate it, run `nix-instantiate ./src/derivation.nix`
# ---
# This will produce a file path to the actual derivation in the terminal
# ---
# After that, to build the derivation file into a package, use `nix-instantiate --realise <drv-path>`
# ---
# This will produce a file path to the actual build files.

let
  pkgs = import <nixpkgs> {};
in
  builtins.derivation {
    name = "my-derivation";
    system = "x86_64-linux";

    # Specifies the shell to be used for
    # This can be a path to the bash shell too
    # e.g. /bin/bash
    builder = pkgs.bash; 

    args = [ "-c" "echo Hello World > $out" ];
  }

