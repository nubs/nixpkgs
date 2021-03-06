{ cabal, cpphs, haskellSrcExts, testFramework }:

cabal.mkDerivation (self: {
  pname = "test-framework-th-prime";
  version = "0.0.6";
  sha256 = "11fk7sk644ky8f22imrfqk8yx07050vy9szha0pnkkjk9i3bqfcq";
  buildDepends = [ cpphs haskellSrcExts testFramework ];
  meta = {
    description = "Template Haskell for test framework";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
