{ mkDerivation, array, base, binary, bytestring, deepseq, directory
, ghc-prim, HUnit, integer-gmp, QuickCheck, quickcheck-unicode
, random, stdenv, test-framework, test-framework-hunit
, test-framework-quickcheck2
}:
mkDerivation {
  pname = "text";
  version = "1.2.3.1";
  sha256 = "8360624d5d01f278da320eebd16fd5d6f366b7f876d0ad424041d58e5e1147a6";
  libraryHaskellDepends = [
    array base binary bytestring deepseq ghc-prim integer-gmp
  ];
  testHaskellDepends = [
    array base binary bytestring deepseq directory ghc-prim HUnit
    integer-gmp QuickCheck quickcheck-unicode random test-framework
    test-framework-hunit test-framework-quickcheck2
  ];
  doCheck = false;
  homepage = "https://github.com/haskell/text";
  description = "An efficient packed Unicode text type";
  license = stdenv.lib.licenses.bsd2;
}
