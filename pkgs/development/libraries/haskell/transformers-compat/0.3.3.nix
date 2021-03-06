{ cabal, transformers }:

cabal.mkDerivation (self: {
  pname = "transformers-compat";
  version = "0.3.3";
  sha256 = "14lmwqr6q79k1f7byvb0jcm4r7lprhxkl85z72pr6ghn7bsvqwps";
  buildDepends = [ transformers ];
  meta = {
    homepage = "http://github.com/ekmett/transformers-compat/";
    description = "A small compatibility shim exposing the new types from transformers 0.3 and 0.4 to older Haskell platforms.";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
