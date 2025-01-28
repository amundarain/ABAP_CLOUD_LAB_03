CLASS zcl_lab_51_wz_friend DEFINITION
  PUBLIC

  CREATE PUBLIC
  .

  PUBLIC SECTION.
   METHODS get_helper.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_lab_51_wz_friend IMPLEMENTATION.
  METHOD get_helper.
   DATA(lo_helper) = NEW zcl_lab_50_work_zone(  ).
   lo_helper->helper->get_work_zone(  ).

  ENDMETHOD.

ENDCLASS.
