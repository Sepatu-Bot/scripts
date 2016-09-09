#!/usr/bin/env bash

cd $KERNELDIR/bullhead
;;
*)
usage;
esac

git reset --hard origin/master && git checkout master
mergeremote=$(cat upstream | awk '{print $1}')
mergebranch=$(cat upstream | awk '{print $2}')
git fetch $mergeremote $mergebranch
git merge $mergeremote/$mergebranch -S
