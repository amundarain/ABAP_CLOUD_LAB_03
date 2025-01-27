CLASS zcl_lab_49_employee DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
  DATA LOG TYPE STRING.
  METHODS constructor.
  METHODS ON_PAYROLL_PAID FOR EVENT PAYROLL_PAID OF zcl_lab_48_administrative_dep  importing SENDER.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_49_employee IMPLEMENTATION.
  METHOD on_payroll_paid.
   me->log = SENDER->id_employee.
  ENDMETHOD.

  METHOD constructor.
   set HANDLER me->on_payroll_paid FOR ALL INSTANCES.
  ENDMETHOD.
ENDCLASS.
