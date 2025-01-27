CLASS zcl_lab_47_customer_service DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   CLASS-DATA LOG TYPE STRING.
   CLASS-METHODS ON_NEW_CALL FOR EVENT NEW_CALL OF zcl_lab_46_mobile_operator
                                                IMPORTING ev_phone_number .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_47_customer_service IMPLEMENTATION.
  METHOD on_new_call.
   LOG = ev_phone_number.
  ENDMETHOD.

ENDCLASS.
