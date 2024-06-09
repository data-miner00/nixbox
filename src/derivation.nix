# derivation is like a prerequisite for a package
builtins.derivation {
  name = "my-derivation";
  system = "x86_64-linux";

  builder = "/bin/sh";
  args = [ "-c" "echo Hello World > $out" ];
}
