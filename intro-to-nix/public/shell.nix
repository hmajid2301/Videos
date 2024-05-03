{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  packages = with pkgs; [
    lolcat
    go-task
    go
    golangci-lint
    docker-compose
  ];
}
