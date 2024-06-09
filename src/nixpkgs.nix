let
  # nixpkgs is a lambda/function.
  # {} is the parameter of the function
  pkgs = import <nixpkgs> {};
in
  pkgs.lib
