{ stdenv
, mkRosPackage
, robonomics_comm-nightly
, python3Packages
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "art_shop_agent";
  version = "master";

  src = ./.;

  propagatedBuildInputs = [ robonomics_comm-nightly python3Packages.pyyaml ];

  meta = with stdenv.lib; {
    description = "Art Shop Agent";
    homepage = http://github.com/vourhey/art_shop_agent;
    license = licenses.bsd3;
    maintainers = with maintainers; [ vourhey ];
  };
}
