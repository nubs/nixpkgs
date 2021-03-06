{ cabal, binary, cereal, vector }:

cabal.mkDerivation (self: {
  pname = "vector-binary-instances";
  version = "0.2.1.0";
  sha256 = "028rsf2w193rhs1gic5yvvrwidw9sblczcn10aw64npfc6502l4l";
  buildDepends = [ binary cereal vector ];
  meta = {
    homepage = "https://github.com/bos/vector-binary-instances";
    description = "Instances of Data.Binary and Data.Serialize for vector";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
