{ cabal, GLURaw, libX11, mesa, ObjectName, OpenGLRaw, StateVar
, Tensor
}:

cabal.mkDerivation (self: {
  pname = "OpenGL";
  version = "2.6.0.1";
  sha256 = "1fpabhpjfl1bj0dhlj2sg8zsn3l6py4zw1arplwmqalz3xbkkgdi";
  buildDepends = [ GLURaw ObjectName OpenGLRaw StateVar Tensor ];
  extraLibraries = [ libX11 mesa ];
  meta = {
    homepage = "http://www.haskell.org/haskellwiki/Opengl";
    description = "A binding for the OpenGL graphics system";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
