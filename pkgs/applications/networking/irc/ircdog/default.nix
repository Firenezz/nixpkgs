{ lib
, buildGoPackage
, fetchFromGitHub
}:

buildGoPackage rec {
  pname = "ircdog";
  version = "0.3.0";

  goPackagePath = "github.com/ergochat/ircdog";

  src = fetchFromGitHub {
    owner = "goshuirc";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-x3ihWLgVYu17vG1xQTgIr4TSkeZ467TZBV1fPTPnZgw=";
    fetchSubmodules = true;
  };

  meta = with lib; {
    description = "ircdog is a simple wrapper over the raw IRC protocol that can respond to pings, and interprets formatting codes";
    homepage = "https://github.com/ergochat/ircdog";
    changelog = "https://github.com/ergochat/ircdog/releases/tag/v${version}";
    license = licenses.isc;
    maintainers = with maintainers; [ hexa ];
  };
}


