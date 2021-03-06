{ cabal, base16Bytestring, HUnit, text }:

cabal.mkDerivation (self: {
  pname = "direct-sqlite";
  version = "2.3.13";
  sha256 = "0d16jmls41cwyzg91fpd32dv8vvx1v3ilypv1wd7ya8j08fwfvdn";
  buildDepends = [ text ];
  testDepends = [ base16Bytestring HUnit text ];
  meta = {
    homepage = "http://ireneknapp.com/software/";
    description = "Low-level binding to SQLite3. Includes UTF8 and BLOB support.";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
