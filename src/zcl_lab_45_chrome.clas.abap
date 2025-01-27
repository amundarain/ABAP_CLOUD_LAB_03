CLASS zcl_lab_45_chrome DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA: log TYPE STRING.
  METHODS ON_CLOSE_WINDOW FOR EVENT close_windows OF zif_lab_05_browser.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_45_chrome IMPLEMENTATION.
  METHOD on_close_window.
   me->log = |'on_close_window'{  cl_abap_context_info=>get_system_time(  ) }|.
  ENDMETHOD.

ENDCLASS.
