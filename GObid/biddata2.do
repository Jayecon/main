cd ~/dropbox/data/gobid/
use gobid , clear

    /*rename variables*/
        rename bidwinnrbizno id
        rename bidwinnrnm name
        rename sucsfbidamt amount

    /*gen datetime var and extract year*/
        gen double openingdt = clock(rlopengdt, "YMDhms")
        format openingdt %tc
        local temp : var label rlopengdt
        label var openingdt "`temp'"
        gen temp = dofc(openingdt)
        gen year = year(temp)
        label var year "개찰년도"

    /*gen annual amount data*/
        bys id year :  egen amountyr = total(amount)
        label var amountyr "총낙찰금액(년,원)"
        format amountyr %14.0fc

    /*saving*/
        keep id year name amountyr
        order id year name amountyr , first
        duplicates drop id year , force
        label data "연도별·업체별 공공조달 낙찰금액(2012-2022)"
        compress
        format id %10.0f
        save bidamount.dta , replace
        save ~/dropbox/HW_OHONG/bidamount.dta , replace
