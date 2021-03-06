{ cabal, mtl, unorderedContainers }:

cabal.mkDerivation (self: {
  pname = "monad-unify";
  version = "0.2.2";
  sha256 = "1icl4jaa4vc4lb75m6wv4vjvf8b2xx7aziqhsg2pshizdkfxmgwp";
  buildDepends = [ mtl unorderedContainers ];
  meta = {
    description = "Generic first-order unification";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
