CLASS zcl_lab_34_student DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
   METHODS set_name IMPORTING iv_name TYPE STRING.
   METHODS get_name RETURNING VALUE(rv_name) TYPE STRING.
  PROTECTED SECTION.
  PRIVATE SECTION.
  data NAME TYPE string.
ENDCLASS.

CLASS zcl_lab_34_student IMPLEMENTATION.
  METHOD get_name.
   rv_name = me->name.
  ENDMETHOD.

  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.

ENDCLASS.
