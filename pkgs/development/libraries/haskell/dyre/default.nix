{ cabal, binary, executablePath, filepath, ghcPaths, ioStorage
, time, xdgBasedir
}:

cabal.mkDerivation (self: {
  pname = "dyre";
  version = "0.8.12";
  sha256 = "10hnlysy4bjvvznk8v902mlk4jx95qf972clyi1l32xkqrf30972";
  buildDepends = [
    binary executablePath filepath ghcPaths ioStorage time xdgBasedir
  ];
  meta = {
    homepage = "http://github.com/willdonnelly/dyre";
    description = "Dynamic reconfiguration in Haskell";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
