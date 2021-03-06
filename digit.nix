{ mkDerivation, ansi-wl-pprint, base, hedgehog, lens, papa, parsec
, parsers, pretty, scientific, semigroupoids, semigroups, stdenv
, tasty, tasty-hedgehog, tasty-hspec, tasty-hunit, template-haskell
, text
}:
mkDerivation {
  pname = "digit";
  version = "0.6";
  src = ./.;
  libraryHaskellDepends = [
    base lens papa parsers scientific semigroupoids semigroups
    template-haskell
  ];
  testHaskellDepends = [
    ansi-wl-pprint base hedgehog lens papa parsec parsers pretty tasty
    tasty-hedgehog tasty-hspec tasty-hunit text
  ];
  homepage = "https://github.com/qfpl/digit";
  description = "A data-type representing digits 0-9 and other combinations";
  license = stdenv.lib.licenses.bsd3;
}
