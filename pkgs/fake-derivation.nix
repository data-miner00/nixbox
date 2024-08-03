let
  pkgs = import <nixpkgs>;
in
  with pkgs; builtins.derivation {
    name = "myname";

    # A fake program that always return 0
    builder = "${coreutils}/bin/true";
    system = builtins.currentSystem;
  }

