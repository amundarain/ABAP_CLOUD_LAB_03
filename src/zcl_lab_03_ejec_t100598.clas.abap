CLASS zcl_lab_03_ejec_t100598 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_03_ejec_t100598 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
   "1. Polimorfismo con clases
   DATA: lt_organization TYPE STANDARD TABLE OF REF TO zcl_lab_29_organization,
         lo_organization TYPE REF TO   zcl_lab_29_organization,
         lo_germany      TYPE REF TO   zcl_lab_30_org_germany,
         lo_france       TYPE REF TO   zcl_lab_31_org_france.
   lo_germany = NEW #(  ).
   APPEND lo_germany TO  lt_organization.
   lo_france = NEW #(  ).
   APPEND lo_france TO  lt_organization.
   LOOP AT lt_organization INTO lo_organization.
     out->write( lo_organization->get_location(  ) ).
   ENDLOOP.


  ENDMETHOD.

ENDCLASS.
