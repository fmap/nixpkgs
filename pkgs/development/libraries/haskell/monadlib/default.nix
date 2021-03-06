{ cabal }:

cabal.mkDerivation (self: {
  pname = "monadLib";
  version = "3.7.3";
  sha256 = "17m9rj6spr5n9jlhwwvk8p40yrpwgz3j9kj3pjq7mpyrc1ssfd0q";
  meta = {
    homepage = "http://wiki.github.com/yav/monadlib";
    description = "A collection of monad transformers";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.thoughtpolice ];
  };
})
