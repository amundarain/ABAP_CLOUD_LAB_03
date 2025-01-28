CLASS zcl_lab_50_work_zone DEFINITION
  PUBLIC

  CREATE PUBLIC
  GLOBAL FRIENDS zcl_lab_51_wz_friend.

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA ms_zone TYPE ty_work_zone.
  DATA helper TYPE REF TO lcl_helper.
  METHODS set_work_zone IMPORTING iv_zone TYPE ty_work_zone.

ENDCLASS.
CLASS zcl_lab_50_work_zone IMPLEMENTATION.
  METHOD set_work_zone.
   me->ms_zone = iv_zone.
  ENDMETHOD.
ENDCLASS.
