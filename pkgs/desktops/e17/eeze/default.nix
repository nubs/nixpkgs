{ stdenv, fetchurl, pkgconfig, eina, ecore, udev }:
stdenv.mkDerivation rec {
  name = "eeze-${version}";
  version = "1.7.5";
  src = fetchurl {
    url = "http://download.enlightenment.org/releases/${name}.tar.bz2";
    sha256 = "0274fs4cxgw6420yyz9frrc8zhj0qqyvwczzslq3kih3sx1nikxr";
  };
  buildInputs = [ pkgconfig eina ecore ];
  propagatedBuildInputs = [ udev ];
  meta = {
    description = "Enlightenment's device abstraction library";
    longDescription = ''
      Enlightenment's Eeze is a library for manipulating devices
      through udev with a simple and fast api. It interfaces directly
      with libudev, avoiding such middleman daemons as udisks/upower
      or hal, to immediately gather device information the instant it
      becomes known to the system.
    '';
    homepage = http://enlightenment.org/;
    license = stdenv.lib.licenses.bsd2;  # not sure
  };
}
