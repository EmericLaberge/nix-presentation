
#shell.nix
let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
  packages = [
    pkgs.cowsay
    pkgs.lolcat
  ];
  shellHook = ''
    echo "J'aime Nix !" | cowsay | lolcat
  '';
}
