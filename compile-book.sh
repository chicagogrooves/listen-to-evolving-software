set -x
pushd manuscript
cat Book.txt | xargs cat > /tmp/listen-to-evolving-software.md
redcarpet /tmp/listen-to-evolving-software.md > book-wip.html
cat print.css book-wip.html > book-wip-css.html
rm book-wip.html
mv book-wip-css.html book-wip.html
popd
open manuscript/book-wip.html
