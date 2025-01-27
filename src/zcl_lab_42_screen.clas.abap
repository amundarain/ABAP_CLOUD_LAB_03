CLASS zcl_lab_42_screen DEFINITION
  PUBLIC
  CREATE PUBLIC .
  PUBLIC SECTION.
    DATA screen_type TYPE STRING.
    EVENTS touch_screen EXPORTING VALUE(ev_horizontal) TYPE I
                                  VALUE(ev_vertical)   TYPE I.
    METHODS: constructor IMPORTING iv_screen_type   TYPE STRING OPTIONAL,
             element_Selected,
             check_touch_screen.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_42_screen IMPLEMENTATION.
  METHOD element_selected.
     RAISE EVENT touch_screen
        EXPORTING
          ev_horizontal = 1 ev_vertical = 2.
  ENDMETHOD.

  METHOD check_touch_screen.
   me->element_selected(  ).
  ENDMETHOD.

  METHOD constructor.
   me->screen_type =  iv_screen_type.
  ENDMETHOD.

ENDCLASS.
