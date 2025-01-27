CLASS zcl_lab_41_organization DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS set_headquarters IMPORTING iv_headquarters TYPE STRING.
  METHODS get_headquarters EXPORTING ev_headquarters TYPE STRING.
  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA headquarters TYPE STRING.
ENDCLASS.



CLASS zcl_lab_41_organization IMPLEMENTATION.
  METHOD set_headquarters.
   me->headquarters = iv_headquarters.
  ENDMETHOD.

  METHOD get_headquarters.
   ev_headquarters  =   me->headquarters.
  ENDMETHOD.

ENDCLASS.
