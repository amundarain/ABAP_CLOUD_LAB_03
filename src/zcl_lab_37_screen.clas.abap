CLASS zcl_lab_37_screen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
   METHODS set_screen_type IMPORTING iv_screen_type TYPE STRING.
   METHODS get_screen_type EXPORTING ev_screen_type TYPE STRING.
  PROTECTED SECTION.
  PRIVATE SECTION.
  data SCREEN_TYPE TYPE STRING.
ENDCLASS.
CLASS zcl_lab_37_screen IMPLEMENTATION.
  METHOD get_screen_type.
   ev_screen_type = me->screen_type.
  ENDMETHOD.
  METHOD set_screen_type.
    me->screen_type = iv_screen_type.
  ENDMETHOD.
ENDCLASS.
