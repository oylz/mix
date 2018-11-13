# autologin
something always use.
Aaaa

&uArr; 

Bbbb


&dArr;


<img src="http://yuml.me/diagram/scruffy/class/[note: ohoh good!{bg:cornsilk}],[Customer]<>1-orders 0..*>[Order], [Order]++*-*>[LineItem], [Order]-1>[DeliveryMethod], [Order]*-*>[Product], [Category]<->[Product], [DeliveryMethod]^[National], [DeliveryMethod]^[International]" >

# first

# second

# third
-|-
-|-
 866 /*|-
 867  *  @brief  : 会议信息, @ref RFC4579 & LYNC|-
 868  */|-
 869 typedef struct {|-
 870     switch_memory_pool_t   *pool;|-
 871     uint32_t                flags;|-
 872     char                   *conference_entity;  /*conferenceEntiry,取focus通道uri*/|-
 873     char                   *schedule_id;        /*预约会议的日程ID*/|-
 874     char                   *plan_id;|-
 875     uint32_t                version;            /*从1开始,每次通告加1*/|-
 876     char                   *mcu_resource_type;        /* cloud/front/back */|-
 877     char                   *mcu_resource_mac;|-
 878|-
 879     /** conference-description */|-
 880     char                   *display_text;|-
 881     char                   *subject;|-
 882     char                   *subject_pinyin;|-
 883     conference_banner_t     banner[1];          /*会议横幅;会议启动时,需要从adv_info中查找出来*/|-
 884     char                   *note;               /*会议备注*/|-
 885     list_head_t             location_list[1];   /*会议地址*/|-
 886     char                   *presenter_pin;|-
 887     char                   *attendee_pin;|-
 888     conference_profile_t   *profile;            /* profile, default/demonstrator, 默认为default */|-
 889     char                   *domain;|-
 890     switch_core_account_t  *applicant_account;  /* applicant account申请者账号*/|-
 891     switch_core_account_t  *organizer_account;  /* organizer account组织者账号*/|-
 892     list_head_t             invitee_list[1];    /*被邀请者列表,conference_roster_t花名册,用于保存受邀请者,和与会者状态.当与会者退出时,先从这里面获取信息*/|-
 893     conference_rtmp_roster_t default_rtmp[1];    /*系统默认RTMP直播信息*/|-
 894     list_head_t             rtmp_invitee_list[1];/*RTMP被邀请者列表*/|-
 895     recurrence_pattern_t    pattern[1];         /*预约会议的recurrence pattern*/|-
 896     char                   *conference_id;      /*conference id,杭分的会议id要求是全数字的:这里基于conference_number*/|-
 897     char                   *conference_number;  /*用于IVR加入的会议ID*/|-
 898     conf_type_e             conference_type;|-
 899     char                   *enterprise_id;|-
 900     uint32_t                maximum_user_count;|-
 901     uint32_t                max_audio_user_count;|-
 902     uint32_t                max_video_user_count;|-
 903     switch_time_t           start_timestamp;    /*日程开始时间*/|-
 904     switch_time_t           expiry_timestamp;   /*日程结束时间*/|-
 905     switch_time_t           last_update_timestamp;   /*预约schedule/template上一次更新时间*/|-
 906     switch_time_t           book_start_timestamp;|-
 907     switch_time_t           book_expire_timestamp;   /*会议过期时间,过期后会议内没有成员,则直接结束会议*/|-
 908     switch_bool_t           book_auto_invite_after_reg;/*注册后自动邀请*/|-
 909     char                   *book_auto_invite_fw_version;/*预约自动邀请的终端类型,使用正则表达式匹配,如^51\.|^0\."*/|-
 910 #if 0|-
 911     switch_time_t           rtmp_start_timestamp;|-
 912     switch_time_t           rtmp_duration_begin_timestamp;  /*每次恢复暂停,要加上暂停时长*/|-
 913     switch_time_t           rtmp_duration_end_timestamp;    /*RTMP进行中是当前时间,暂停中是暂停时间*/|-
 914     conference_rtmp_status_e rtmp_status;|-
 915 #endif|-
 916     uint32_t                remind_early_time;  /*预约会议提前多久提醒*/|-
 917     uint32_t                create_early_time;  /*预约会议提前多久创建*/|-
 918     uint32_t                nouser_expire_time; /*会议内没有与会成员,超过这个时间后就结束会议*/|-
 919     conference_admission_policy_t admission_policy;/* closedAuthenticated,openAuthenticated,anonymous */|-
 920     switch_bool_t       attendee_lobby_bypass;  /*非主持人邀请是否可以加入会议*/|-
 921     conference_autopromote_t autopromote;|-
 922     switch_bool_t           is_lobby_capable;|-
 923     switch_bool_t           allow_excess;|-
 924     switch_bool_t           is_recurrence;|-
 925     conference_server_mode_t server_mode;        /* conference server mode, 预留*/|-
 926     int                     interactive_broadcast_enabled;/*互动广播开关*/|-
 927     int                     globals_interactive_broadcast_enabled;/*全局互动广播开关,放在会议中,避免会议在判断互动广播的时候,配置变更*/|-
 928     switch_bool_t           roll_call_auto_unmute_enabled;/*点名时是否要将被点名者自动unmute*/|-
 929|-
 930     int                     call_in_band; /*上行带宽*/|-
 931     int                     call_out_band;/*下行带宽*/|-
 932     char*                   max_video_fs;/*最大视频分辨率*/|-
 933     int                     max_video_fr;/*最大视频帧率*/|-
 934     char*                   max_data_fs; /*最大辅流分辨率*/|-
 935     int                     max_data_fr; /*最大辅流帧率*/|-
 936|-
 937     uint32_t                all_participant_count;  /*所有人数,包括只有FOCUS通道有用户*/|-
 938     uint32_t                participant_count;      /*普通用户人数 有媒体通道*/|-
 939     uint32_t                max_participant_count;  /*participant-count的峰值*/|-
 940     uint32_t                control_user_participant_count;      /*web会控通道人数*/|-
 941     uint32_t                pstn_user_count;        /*PSTN不占用云端口,cloudport = participant_count - pstn_user_count*/|-
 942     uint32_t                supervision_user_count; /*监视者人数;且监视者音频入会没有意义,所以只有视频入会*/|-
 943     uint32_t                audio_user_count;|-
 944     uint32_t                video_user_count;|-
 945|-
 946     /*VMR会议的配置,不使用系统全局的*/|-
 947     switch_bool_t           self_view_enabled;      /*支持只看自己,默认不看自己*/|-
 948     switch_bool_t           video_source_change_enabled;/*是否启用视频 源切换功能*/|-
 949     char                   *video_source_change_user_agent;/*视频源切换user-agent匹配,支持多个匹配,以分号隔开,如T58;T49;Yealink VC Desktop*/|-
 950|-
 951     uint32_t                rtmp_user_participant_count;  /*rtmp成员个数*/|-
 952     list_head_t             rtmp_user_list[1];  /* rtmp-users */|-
 953     uint32_t                record_user_participant_count;  /*录播成员个数*/|-
 954     list_head_t             ip_id_list[1];      /*每个IP直播用户display-text分配的id*/|-
 955|-
 956     list_head_t             user_list[1];       /* users */|-
 957     list_head_t             mcu_list[1];        /* conf-uris,conference-view */|-
 958|-
 959     roll_call_info_t        roll_call_info[1];  /*点名状态*/|-
 960     conference_ctrl_preset_t ctrl_preset[1];    /*预设置信息*/|-
 961     char                   *private_data_xml_str;   /*私有数据xml;因为switch_xml_dup中是会先打印成str再解析,所以这里先保存成str;@NOTE:当前只支持在meetnow中加:对于后续预约会议、VMR会议,如果支持的话,不要考虑保存的问题*/|-
 962 } conference_info_t;|-
|-
