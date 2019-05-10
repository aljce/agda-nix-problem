{ pkgs ? (import <nixpkgs> {}), ... }:
let
  overrides = pkgs.haskell.packages.ghc822.override {
    overrides = self: super: {
      text  = self.callPackage ./text.nix {};
      async = self.callPackage ./async.nix {};
      Agda  = pkgs.haskell.lib.dontCheck (self.callPackage ./Agda.nix {});
    };
  };
in
overrides.Agda
