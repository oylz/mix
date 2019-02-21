<h1 style="text-align:center">mix </h1>

# autologin
something always use.
Aaaa

&uArr; 

Bbbb


&dArr;


<img src="http://yuml.me/diagram/scruffy/class/[note: ohoh good!{bg:cornsilk}],[Customer]<>1-orders 0..*>[Order], [Order]++*-*>[LineItem], [Order]-1>[DeliveryMethod], [Order]*-*>[Product], [Category]<->[Product], [DeliveryMethod]^[National], [DeliveryMethod]^[International]" >

# 1_1_first

# second

# third
---
## tips
* [aa](#autologin)

bb

cc

# CATALOG
> ## FIRST
> > ### f1
> > ### f2
> > ### f3
> ## SECOND
> ## [THIRD](#1_1_first)







  1 # nysync
  2
  3 =================================================
  4
  5  A    ||    B
  6
  7 =================================================
  8
  9 1,0   ||
 10
 11       ||    1,0
 12
 13       ||            call(1,0)[nysync]
 14
 15 ---now A&B update the same row at the same time--
 16
 17 2,0   ||
 18
 19       ||    2,0
 20
 21       ||            2,1[nydbc]
 22
 23       ||
 24
 25       ||                call(2,1)[nydbc]
 26
 27       ||
 28
 29       ||            call(2,0)[nysync]
 30
 31 -------------------------------------------------
