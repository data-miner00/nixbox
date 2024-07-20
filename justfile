example:
  nix eval --file src/int.nix
  nix eval --file src/object.nix
  nix eval --file src/list.nix
  nix eval --file src/lambda.nix
  nix eval --file src/attrset.nix
  nix eval --file src/main.nix
  nix eval --file src/nixpkgs.nix

debug:
  nix eval --file src/main.nix --show-trace

registry:
  nix registry list

build:
  # nix-instantiate ./pkgs/derivation.nix
  # nix-store --realise /nix/store/vgyafx7gkp983zddxqljap50qab8yx1f-my-derivation.drv
  cat /nix/store/50mbcy2pcjq4ms08nyl6gff8k67wisvg-my-derivation 
