# This is a simpler derivation compared to 'derivation.nix'
# It uses `pkgs.runCommand` to achieve the same thing
let
  pkgs = import <nixpkgs> {};
  drvName = "my-simplified-derivation";
in
  pkgs.runCommand drvName {} ''
    echo Hello from simpler derivation > $out
  ''
