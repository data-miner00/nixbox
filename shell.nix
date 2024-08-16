{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.ponysay
  ];

  shellHook = ''
    echo "Activated nix-shell"
    echo "COLOR is $COLOR"
    source ~/.zshrc
  '';

  # Environment variables
  COLOR = "Fuschia";

  PASSWORD = import ./password.nix;
}
