CLASS zcl_lab_48_administrative_dep DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
  DATA id_employee TYPE STRING.
  DATA log TYPE STRING.
  EVENTS PAYROLL_PAID.
  METHODS constructor IMPORTING iv_employee_id TYPE STRING.
  METHODS NOTIFY_EMPLOYEE.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lab_48_administrative_dep IMPLEMENTATION.
  METHOD constructor.
   me->id_employee = iv_employee_id.
  ENDMETHOD.
  METHOD notify_employee.
   me->log = |'Llamo al Evento Actualiza ID Empleado' { me->id_employee }|.
   RAISE EVENT PAYROLL_PAID.
  ENDMETHOD.
ENDCLASS.
