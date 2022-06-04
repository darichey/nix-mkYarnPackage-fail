{
  description = "A very basic flake";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.foo = nixpkgs.legacyPackages.x86_64-linux.mkYarnPackage {
      src = ./.;
    };

    defaultPackage.x86_64-linux = self.packages.x86_64-linux.foo;

  };
}
