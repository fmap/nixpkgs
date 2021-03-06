{ cabal, aeson, ansiTerminal, Cabal, filepath, hastache
, httpConduit, HUnit, lens, QuickCheck, random, smallcheck, split
, syb, tasty, tastyHunit, tastyQuickcheck, tastySmallcheck, text
, time
, fetchpatch}:

cabal.mkDerivation (self: {
  pname = "holy-project";
  version = "0.1.1.0";
  sha256 = "1dsyhgjcp54199zfazzzwsggxpj2dsbzfb64v6l3jz7qaapxnj9i";
  isLibrary = true;
  isExecutable = true;
  patches = [ (fetchpatch { url = "https://github.com/yogsototh/holy-project/pull/3.patch"; sha256 = "1ndyhfrsvn94zxzyq1w4504gz91yfv33375933qmz3wdfkc3rqf0"; }) ];
  buildDepends = [
    aeson ansiTerminal Cabal filepath hastache httpConduit HUnit lens
    QuickCheck random smallcheck split syb tasty tastyHunit
    tastyQuickcheck tastySmallcheck text time
  ];
  testDepends = [
    Cabal HUnit QuickCheck smallcheck tasty tastyHunit tastyQuickcheck
    tastySmallcheck
  ];
  meta = {
    homepage = "http://github.com/yogsototh/holy-project";
    description = "Start your Haskell project with cabal, git and tests";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.tomberek ];
  };
})
