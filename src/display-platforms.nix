# Displays a list of supported architectures
let
  pkgs = import <nixpkgs> {};

  # It's like using static builtins.attrNames in C#
  inherit (builtins) attrNames;
in
  attrNames pkgs.lib.platforms

