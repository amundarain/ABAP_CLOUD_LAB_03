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
   "Polimorfismo, asociación y composición
   "1. Polimorfismo con clases
*   DATA: lt_organization TYPE STANDARD TABLE OF REF TO zcl_lab_29_organization,
*         lo_organization TYPE REF TO   zcl_lab_29_organization,
*         lo_germany      TYPE REF TO   zcl_lab_30_org_germany,
*         lo_france       TYPE REF TO   zcl_lab_31_org_france.
*   lo_germany = NEW #(  ).
*   APPEND lo_germany TO  lt_organization.
*   lo_france = NEW #(  ).
*   APPEND lo_france TO  lt_organization.
*   LOOP AT lt_organization INTO lo_organization.
*     out->write( lo_organization->get_location(  ) ).
*   ENDLOOP.

   "2. Polimorfismo con interfaces
*   DATA: lt_num_employee       TYPE STANDARD TABLE OF REF TO zif_lab_04_employee,
*         lo_num_employee       TYPE REF TO   zif_lab_04_employee,
*         lo_internal_empl      TYPE REF TO   zcl_lab_32_internal_empl,
*         lo_expatriate_emple   TYPE REF TO   zcl_lab_33_expatriate_empl.
*   lo_internal_empl = NEW #(  ).
*   APPEND lo_internal_empl TO  lt_num_employee.
*   lo_expatriate_emple = NEW #(  ).
*   APPEND lo_expatriate_emple TO  lt_num_employee.
*   LOOP AT lt_num_employee INTO lo_num_employee.
*     out->write( lo_num_employee->get_employees_count(  ) ).
*   ENDLOOP.

   "3. Asociación
*   DATA(lo_student)  = NEW zcl_lab_34_student(  ).
*   DATA(lo_college)  = NEW zcl_lab_35_college(  ).
*
*   lo_student->set_name( 'ANGEL' ).
*
*   lo_college->enroll_student( lo_student ).
*
*   out->write( lo_college->get_enroll_student(  )->get_name(  ) ).

   "4. Composición
*   DATA(lo_screen)  = NEW zcl_lab_37_screen(  ).
*   DATA(lo_phone)  = NEW zcl_lab_36_phone( lo_screen ).
*
*   lo_screen->set_screen_type( 'PANTALLA TACTIL HD' ).
*   lo_phone->phone->get_screen_type( IMPORTING ev_screen_type = DATA(lv_type_screen) ).
*   out->write( lv_type_screen ).

   "5 Múltiples referencias apuntando al mismo objeto
*    DATA(lo_prod_price_1) = NEW zcl_lab_38_prod_price(  ).
*    DATA(lo_prod_price_2) = NEW zcl_lab_38_prod_price(  ).
*
*
*    lo_prod_price_1 = NEW #(  ).
*    lo_prod_price_2 = NEW #(  ).
*
*
*    lo_prod_price_1->price = 10.
*    lo_prod_price_2->price = 20.
*
*    lo_prod_price_1 = lo_prod_price_2.
*
*    out->write( |lo_prod_price_1 { lo_prod_price_1->price }| ).
*    out->write( |lo_prod_price_2 { lo_prod_price_2->price }| ).

 "6 Crear instancias de tipos distintos
* DATA lo_budget TYPE REF TO zcl_lab_40_actual_budget.
*
* lo_budget = NEW zcl_lab_40_actual_budget(  ).
*
* out->write( lo_budget->get_budget(  ) ).

 "7 Asignar instancias a la clase genérica Object
* DATA go_obj_organization TYPE REF TO OBJECT.
* go_obj_organization = NEW zcl_lab_41_organization(  ).
*
* DATA(lv_set_headquarters) = 'SET_HEADQUARTERS'.
* DATA(lv_get_headquarters) = 'GET_HEADQUARTERS'.
* DATA lv_receipt TYPE STRING.
* CALL METHOD go_obj_organization->(lv_set_headquarters) EXPORTING iv_headquarters = 'Head Test'.
* CALL METHOD go_obj_organization->(lv_get_headquarters) IMPORTING ev_headquarters = lv_receipt .
*
* out->write( lv_receipt ).
"**********************************EVENTOS ********************************

   "Eventos en orientación a objetos
   "1 Definición y levantamiento de objetos
   "2 Establecer clase receptora
   "3 Establecer referencia manejadora – EVENT HANDLER
   "4 Utilizar la referencia del objeto diseñador con SENDER
*
*   DATA(lo_touch_screen) = new zcl_lab_42_screen( iv_screen_type = 'Plana'  ).
*   DATA(lo_navigation) = new zcl_lab_43_navigation(  ).
*   SET HANDLER lo_navigation->on_touch_screen FOR lo_touch_screen.
*   lo_touch_screen->check_touch_screen(  ).
*   if lo_navigation->log is INITIAL.
*   out->write( |IS INITIAL: { lo_navigation->log } | ).
*   ELSE.
*   out->write( |NO IS INITIAL: { lo_navigation->log } | ).
*   ENDIF.
   "5 Definir eventos en las interfaces
   "6 Desactivar objeto manejador
*   DATA(lo_operating_system) = new zcl_lab_44_operating_system( ).
*   DATA(lo_system) = new zcl_lab_45_chrome( ).
*   SET HANDLER lo_system->on_close_window FOR lo_operating_system ACTIVATION abap_true.
*   lo_operating_system->mouse_movement(  ).
*
*   out->write( |Crea Evento 1: { lo_operating_system->mouse_movement(  ) } | ).
*   out->write( |on_close_window 1: { lo_system->log } | ).
*   SET HANDLER lo_system->on_close_window FOR lo_operating_system ACTIVATION abap_false.
*   lo_operating_system->mouse_movement(  ).
*   out->write( |Crea Evento 2: { lo_operating_system->mouse_movement(  ) } | ).
*   lo_system->log = 'No llama al evento'.
*   out->write( |on_close_window 2: { lo_system->log } | ).

   "7 Eventos estáticos
*   DATA(lo_mobile_operator) = new zcl_lab_46_mobile_operator( ).
*   DATA(lo_customer_service) = new zcl_lab_47_customer_service( ).
*   SET HANDLER zcl_lab_47_customer_service=>on_new_call.
*   zcl_lab_46_mobile_operator=>assign_call(  ).
*   out->write( zcl_lab_47_customer_service=>log ).

   "8 ALL INSTANCE
*   DATA(go_employe_id_1) = new zcl_lab_48_administrative_dep( iv_employee_id = '1' ).
*   DATA(go_employe_id_2) = new zcl_lab_48_administrative_dep( iv_employee_id = '2' ).
*   DATA(go_employe_id_3) = new zcl_lab_48_administrative_dep( iv_employee_id = '3' ).
*   DATA(go_payroll_paid) = new zcl_lab_49_employee(  ).
*
*   "SET HANDLER go_payroll_paid->on_payroll_paid FOR ALL INSTANCES. "go_employe_id_1.
*   go_employe_id_1->notify_employee(  ).
*   out->write( go_payroll_paid->log ).
*  " SET HANDLER go_payroll_paid->on_payroll_paid FOR go_employe_id_2.
*   go_employe_id_2->notify_employee(  ).
*   out->write( go_payroll_paid->log ).
*  " SET HANDLER go_payroll_paid->on_payroll_paid FOR go_employe_id_3.
*   go_employe_id_3->notify_employee(  ).
*   out->write( go_payroll_paid->log ).






  ENDMETHOD.

ENDCLASS.
