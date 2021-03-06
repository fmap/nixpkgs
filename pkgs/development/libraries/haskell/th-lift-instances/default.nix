{ cabal, doctest, filepath, QuickCheck, text, thLift, vector }:

cabal.mkDerivation (self: {
  pname = "th-lift-instances";
  version = "0.1.3";
  sha256 = "0snqgcdkskwvrsw239j3xq84mwnf5x79kfsn495kprdc6yh3qdkx";
  buildDepends = [ text thLift vector ];
  testDepends = [ doctest filepath QuickCheck text vector ];
  meta = {
    homepage = "http://github.com/bennofs/th-lift-instances/";
    description = "Lift instances for template-haskell for common data types";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
