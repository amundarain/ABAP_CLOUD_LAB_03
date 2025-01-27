CLASS zcl_lab_43_navigation DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
   METHODS on_touch_screen FOR EVENT touch_screen OF zcl_lab_42_screen
                           IMPORTING ev_horizontal ev_vertical
                           sender.
   DATA: log TYPE STRING,
         sender_user TYPE STRING.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_43_navigation IMPLEMENTATION.
  METHOD on_touch_screen.
   me->log = |Valor Horizontal { ev_horizontal } Valor Vertical { ev_vertical } Screen Type { sender->screen_type }|.

  ENDMETHOD.
ENDCLASS.
