# Displays a list of supported architectures
let
  pkgs = import <nixpkgs> {};
in
  builtins.attrNames pkgs.lib.platforms

