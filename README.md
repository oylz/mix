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



# 1.[endpoint_interface](http://gitlab.leucs.com/server-ss/Apollo_FreeSwitch/tree/ee4ecd08418b4a67d911f37100b73d65303eb591/src/src/mod/endpoint/mod_mcu/mod_mcu.c#L10813)

```
    *module_interface = switch_loadable_module_create_module_interface(pool, modname);
    endpoint_interface = switch_loadable_module_create_interface(*module_interface, SWITCH_ENDPOINT_INTERFACE);
    endpoint_interface->interface_name = "mcu";
    endpoint_interface->io_routines = &mcu_io_routines;
    endpoint_interface->state_handler = &mcu_state_handlers;
    globals.endpoint_interface = endpoint_interface;
```

* [endpoint_interface->io_routines = &mcu_io_routines;](http://gitlab.leucs.com/server-ss/Apollo_FreeSwitch/tree/ee4ecd08418b4a67d911f37100b73d65303eb591/src/src/mod/endpoint/mod_mcu/mod_mcu.c#L7642)
```
switch_io_routines_t mcu_io_routines = {
    /*outgoing_channel*/ mcu_channel_outgoing_channel,
    /*read_frame*/ NULL,
    /*write_frame*/ NULL,
    /*kill_channel*/ NULL,
    /*send_dtmf*/ NULL,
    /*receive_message*/ mcu_channel_receive_message,
    /*receive_event*/ NULL,
    /*state_change*/ NULL,
    /*read_video_frame*/ NULL,
    /*write_video_frame*/ NULL,
    /*state_run*/ NULL
};
```

    * [mcu_channel_outgoing_channel](./mcu_endi/mcu_channel_outgoing_channel.c)
    * [mcu_channel_receive_message](./mcu_endi/mcu_channel_receive_message.c)

* [endpoint_interface->state_handler = &mcu_state_handlers;](http://gitlab.leucs.com/server-ss/Apollo_FreeSwitch/tree/ee4ecd08418b4a67d911f37100b73d65303eb591/src/src/mod/endpoint/mod_mcu/mod_mcu.c#L7627)
```
switch_state_handler_table_t mcu_state_handlers = {
    /*on_init */mcu_channel_on_init,
    /*on_routing */ mcu_channel_on_routing,
    /*on_execute */ mcu_channel_on_execute,
    /*on_hangup*/ mcu_channel_on_hangup,
    /*on_exchange_media*/ NULL,
    /*on_soft_execute*/ NULL,
    /*on_consume_media*/ NULL,
    /*on_hibernate*/ NULL,
    /*on_reset*/ NULL,
    /*on_park*/ NULL,
    /*on_reporting*/ NULL,
    /*on_destroy*/ mcu_channel_on_destroy
};
``` 

    * [mcu_channel_on_destroy](./mcu_endi/mcu_channel_on_destroy.c)
    * [mcu_channel_on_routing](./mcu_endi/mcu_channel_on_routing.c)
    * [mcu_channel_on_execute](./mcu_endi/mcu_channel_on_execute.c)
    * [mcu_channel_on_hangup](./mcu_endi/mcu_channel_on_hangup.c)
    * [mcu_channel_on_init](./mcu_endi/mcu_channel_on_init.c)
