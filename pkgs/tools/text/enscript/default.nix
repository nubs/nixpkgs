{ stdenv, fetchurl, gettext }:

stdenv.mkDerivation rec {
  name = "enscript-1.6.5.2";

  src = fetchurl {
    url = "mirror://gnu/enscript/${name}.tar.gz";
    sha256 = "0xfblj3liwf1zxpx8bdcl2dwqi2lkfm1zsl6ld9757kgnfyk6gnv";
  };

  buildInputs = [ gettext ];

  doCheck = true;

  meta = {
    description = "GNU Enscript, a converter from ASCII to PostScript, HTML, or RTF";

    longDescription =
      '' GNU Enscript converts ASCII files to PostScript, HTML, or RTF and
         stores generated output to a file or sends it directly to the
         printer.  It includes features for `pretty-printing'
         (language-sensitive code highlighting) in several programming
         languages.

         Enscript can be easily extended to handle different output media and
         it has many options that can be used to customize printouts.
      '';

    license = "GPLv3+";

    homepage = http://www.gnu.org/software/enscript/;

    maintainer = [ stdenv.lib.maintainers.ludo ];
    platforms = stdenv.lib.platforms.all;
  };
}
