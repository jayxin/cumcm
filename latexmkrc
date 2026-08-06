use Cwd;

# xelatex
$pdf_mode = 5;
$xelatex = "xelatex -file-line-error -halt-on-error -synctex=0 -no-pdf -interaction=batchmode %O %S";
$xdvipdfmx = "xdvipdfmx -E -o %D %O %S";
$clean_ext = "synctex.gz acn acr alg aux bbl bcf blg brf fdb_latexmk glsdefs glg glo gls idx ilg ind ist lof log lot out run.xml toc dvi xdv";

# when using bibtex, uncomment to make `latexmk -C` clean bbl file
#$bibtex_use = 2;

#$preview_mode = 0;
#$pdf_update_method = 0;

# determine output directory
unless (exists $ENV{'TL_BUILD_DIR'} && $ENV{'TL_BUILD_DIR'} ne '') {
  $ENV{'TL_BUILD_DIR'} = getcwd();
}
my $tl_build_dir = $ENV{'TL_BUILD_DIR'};

# set output directory
$out_dir = "$tl_build_dir";
$aux_dir = "$tl_build_dir";
