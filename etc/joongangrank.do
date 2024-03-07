local path "~/dropbox/"
import delimited "/Users/jay/GitHub/master/etc/joongang_unirank_1995-2019.csv", encoding(UTF-8) clear
  label data "중앙일보 대학평가 1995-2019"
    label var jrank      "중앙일보 순위"
    label var uniname    "대학명"
    label var sourcename "출처(지명)"
    label var sourcedate "출처(날짜)"
    label var year       "년도"
    keep jrank year uniname
    replace uniname = trim(uniname)
  compress
save `path'unijrank , replace
