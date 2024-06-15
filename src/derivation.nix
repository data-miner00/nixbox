let
  pkgs = import <nixpkgs> {};
# derivation is like a prerequisite for a package
in
builtins.derivation {
  name = "my-derivation";
  system = "x86_64-linux";

  builder = pkgs.bash;
  args = [ "-c" "echo Hello World > $out" ];
}
