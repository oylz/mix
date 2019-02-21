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
  
A|B|nsync(B)|nydbc(B)
-|-|-|-
1,0|-|-|-
-|1,0|-|-
-|-|call(1,0)[nysync]|-
now A&B update the same row at the same time|-|-|-
2,0|-|-|-
-|2,0|-|-
-|-|2,1[nydbc]|-
-|-|-|call(2,1)[nydbc]
-|-|call(2,0)[nysync]|-


