CLASS zcl_lab_44_operating_system DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
   data log TYPE STRING.
   INTERFACES: zif_lab_05_browser.
   ALIASES: close_windows FOR zif_lab_05_browser~close_windows.
   METHODS MOUSE_MOVEMENT RETURNING VALUE(rv_event_mov) TYPE STRING.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_44_operating_system IMPLEMENTATION.
  METHOD mouse_movement.
   rv_event_mov = |'Llamo al evento ... close_windows ' { cl_abap_context_info=>get_system_time(  ) }| .
   RAISE EVENT close_windows.
  ENDMETHOD.

ENDCLASS.
