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


# 3.DEFINES

NAME|VALUE
-|-
SSRC_CNAME_LEN|16
MCU_REGISTER_SERVER|    "{"<br>        "\"version\":\""MCU_MSC_VERSION"\","<br>        "\"method\":\""MCU_METHOD_REGISTER_SERVER"\","<br>        "\"data\":{"<br>            "\"AppServerId\":\"%s\""<br>        "}"<br>    "}"
MCU_METHOD_SET_RECORD_STATE|"set-record-state"
MCU_METHOD_SET_MEDIA_STATE|"set-media-state"
MCU_CREATE_CONFERENCE|    "{"
<br>        "\"version\":\""MCU_MSC_VERSION"\","
<br>        "\"method\":\""MCU_METHOD_CREATE_CONF"\","
<br>        "\"resource\":\"%s\","
<br>        "\"data\":{"
<br>            "\"ConfId\":%s,"
<br>            "\"ConfSubject\":\"%s\","
<br>            "\"Banner\":{"
<br>                "\"Enable\":\"%s\","
<br>                "\"Content\":\"%s\","
<br>                "\"DisplayPosition\":\"%s\""
<br>            "},"
<br>            "\"Layout\":\"%s\","
<br>            "\"MaxView\":%s,"
<br>            "\"SpeechSensitivity\":%s,"
<br>            "\"RoundNumber\":%s,"
<br>            "\"RoundTime\":%s,"
<br>            "\"RoundEnable\":\"%s\","
<br>            "\"SpeechEnable\":\"%s\","
<br>            "\"PresenterLayout\":\"%s\","
<br>            "\"PresenterMaxView\":%s,"
<br>            "\"PresenterSpeechSensitivity\":%s,"
<br>            "\"PresenterRoundNumber\":%s,"
<br>            "\"PresenterRoundTime\":%s,"
<br>            "\"CallInBW\":%s,"
<br>            "\"CallOutBW\":%s,"
<br>            "\"MaxVideoFS\":\"%s\","
<br>            "\"MaxVideoFR\":%s,"
<br>            "\"MaxDataFS\":\"%s\","
<br>            "\"MaxDataFR\":%s,"
<br>            "\"hideOsd\":\"%s\","
<br>            "\"hideIcon\":\"%s\","
<br>            "\"SelfEnable\":\"%s\","
<br>            "\"BroadcastsInfo\":%s,"
<br>            "\"ConfPattern\":\"%s\","
<br>            "\"showSessCount\":{"
<br>                "\"Enable\":\"%s\","
<br>                "\"SessionType\":\"%s\""
<br>            "},"
<br>            "\"Procedure\":%s"
<br>        "}"
<br>    "}"



