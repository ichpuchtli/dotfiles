#!/bin/sh
# rm all folders & files but those specified

mv -fv $* /tmp

rm -rfv .* *

mv -fv /tmp/$* .
