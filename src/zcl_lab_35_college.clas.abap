CLASS zcl_lab_35_college DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
   METHODS ENROLL_STUDENT     IMPORTING iv_enroll_student  TYPE REF TO  zcl_lab_34_student.
   METHODS get_ENROLL_STUDENT RETURNING  VALUE(ro_studen)  TYPE REF TO  zcl_lab_34_student.
  PROTECTED SECTION.
  PRIVATE SECTION.
   DATA enr_student TYPE  REF TO zcl_lab_34_student.
ENDCLASS.

CLASS zcl_lab_35_college IMPLEMENTATION.
  METHOD enroll_student.
   me->enr_student = iv_enroll_student.
  ENDMETHOD.
  METHOD get_enroll_student.
   ro_studen = me->enr_student.
  ENDMETHOD.
ENDCLASS.
