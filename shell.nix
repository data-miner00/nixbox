{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.ponysay
  ];

  shellHook = ''
    echo "Activated nix-shell"
    source ~/.zshrc
  '';
}
