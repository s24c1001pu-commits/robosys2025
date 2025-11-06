#!/bin/bash -xv

### 著作権やライセンスの設定をここに

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

out=$(seq 5 | bash ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

