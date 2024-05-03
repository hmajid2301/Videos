{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
        # nodeEnv = pkgs.callPackage ./default.nix {};
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            nodejs
            go-task
            vhs
            nodePackages_latest.pnpm
            nodePackages_latest.node2nix
            # nodeEnv.shell.nodeDependencies
          ];
          shellHook = ''
            # export NODE_PATH={nodeEnv.shell.nodeDependencies}/lib/node_modules
          '';
        };
      }
    );
}
