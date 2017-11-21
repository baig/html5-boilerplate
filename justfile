version = "0.2.7"
tardir  = "awesomesauce-" + version
tarball = tardir + ".tar.gz"
root = "/media/wasif/DATA/MyProjects/html5-boilerplate"

clean:
  @echo 'cleaning...'
  rm -rf dist/* src/post/* src/css/*

styles:
  sass --style compressed {{root}}/src/sass/style.scss {{root}}/src/css/style.css

pandoc:
  for md in `ls src/draft`; do pandoc -s -o src/post/"$md".html src/draft/$md; done

# build stuff
build: clean styles
  @echo 'building...'
  cp {{root}}/src/index.html {{root}}/dist/index.html
  cp -r {{root}}/src/css {{root}}/dist/css

publish: build styles
  @echo 'publishing...'
