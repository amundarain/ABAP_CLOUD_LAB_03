CLASS zcl_lab_40_actual_budget  DEFINITION INHERITING FROM zcl_lab_39_budget
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS GET_BUDGET REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_40_actual_budget IMPLEMENTATION.
  METHOD get_budget.
   rv_budget = 'Test Budget'.
  ENDMETHOD.

ENDCLASS.
