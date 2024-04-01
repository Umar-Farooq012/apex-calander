prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_210100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>17018364046666370
,p_default_application_id=>10031
,p_default_id_offset=>129745853005624605
,p_default_owner=>'DGMS'
);
end;
/
 
prompt APPLICATION 10031 - CRM
--
-- Application Export:
--   Application:     10031
--   Name:            CRM
--   Date and Time:   15:23 Monday April 1, 2024
--   Exported By:     UMAR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 56
--   Manifest End
--   Version:         21.1.7
--   Instance ID:     697968588975354
--

begin
null;
end;
/
prompt --application/pages/delete_00056
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>56);
end;
/
prompt --application/pages/page_00056
begin
wwv_flow_api.create_page(
 p_id=>56
,p_user_interface_id=>wwv_flow_api.id(139033628022878112)
,p_name=>'Calender'
,p_alias=>'CALENDER'
,p_step_title=>'Calender'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'UMAR'
,p_last_upd_yyyymmddhh24miss=>'20240401150951'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(154558600070991717)
,p_plug_name=>'Calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#ffe4c4;";'
,p_plug_template=>wwv_flow_api.id(138943968014878023)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ',
'    CRM.LEAD_ID,',
'    CRM.CONTACT_NO,',
'',
' ',
'  	',
'    CRM.ASSIGNED_TO||'' - ''|| CASE WHEN ACTIVE=''N'' THEN  CRM.TASK_TITLE ||'' -  ''|| ''PENDING'' || '' - ''||CRM.RESUME_DATE||'', ''||CRM.STAGES||'', ''|| ''CREATED BY'' || '', '' ||CRM.CREATED_BY',
'     else CRM.TASK_TITLE || '' - '' ||CRM.STATUS|| '' - ''||CRM.RESUME_DATE||'', ''||CRM.STAGES||'', ''|| ''CREATED BY'' || '', '' ||CRM.CREATED_BY end   ACTIVE,',
'    ',
'   CASE WHEN STATUS = ''IN-PROCESS'' THEN ''apex-cal-darkblue''',
'   when STATUS = ''COMPLETED'' THEN ''apex-cal-lime''',
'   when STATUS = ''PENDING'' THEN ''apex-cal-gray''',
'   end as css_class,',
'',
'',
'',
'    CRM. STATUS,',
'     ',
'    CRM.REMARKS,',
'    CRM.EMAIL,',
'    CRM.CITY,',
'    CRM.CREATED_ON,',
'    CRM.SOURCES,',
'    CRM.ASSIGNED_TO,',
'    CRM.TASK_NO,',
'  ',
'    ',
'    CRM.TRANSFER_REASONS,',
'    CRM.ASSIGNED_BY,',
'    CRM.BUSINESS_TYPE,',
'    ',
'    CRM.SEEN_TYPE,',
'  ',
'    CRM.LEAD_TIME,',
'    CRM.JOB_TITLE,',
'    CRM.COUNTRY,',
'    CRM.SOURCE_TYPE,',
'    CRM.NEXT_MEETINGS,',
'    CRM.CREATED_BY,',
'    CRM.OTHER_CITY,',
'    CRM.UPDATED_ON,',
'    CRM.DEALER_NAME,',
'    CRM.DEALER_NUMBER,',
'    ',
'    CRM.UPDATED_BY,',
'    CRM.DEALER_ID,',
'    ',
'    CRM.SITE_ID',
'  ',
'FROM CRM_SETUP_MAST CRM ',
'',
'WHERE',
'  (NVL(CRM.ASSIGNED_TO, CRM.CREATED_BY) IN',
'    (CASE ',
'      WHEN :P_USER_ID <> ''UMAR.FAROOQ'' AND :P_USER_ID <> ''RIZWAN BAKHT'' THEN :P_USER_ID ',
'     ',
'      ELSE NVL(CRM.ASSIGNED_TO, CRM.CREATED_BY) ',
'    END))',
' AND CRM.ASSIGNED_TO = NVL(:P56_USER,CRM.ASSIGNED_TO)   ',
' AND CRM.CREATED_BY = NVL(:P56_ASSIGNER, CREATED_BY)                  ',
'',
'AND CRM.CRM_TASK IS NOT NULL',
'',
'',
'',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P56_USER,P56_ASSIGNER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'CREATED_ON'
,p_attribute_02=>'CREATED_ON'
,p_attribute_03=>'ACTIVE'
,p_attribute_04=>'LEAD_ID'
,p_attribute_05=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.::P82_LEAD_ID:&LEAD_ID.'
,p_attribute_07=>'N'
,p_attribute_11=>'month:navigation'
,p_attribute_13=>'Y'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(232868543199262207)
,p_plug_name=>'User / Assigner'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(138943968014878023)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(233296834324365701)
,p_plug_name=>'Task Show'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useRegionTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(138953432802878030)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(138886380120877965)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(139010506335878080)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(232869176012262213)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(233296834324365701)
,p_button_name=>'Create_Task'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(139009124014878078)
,p_button_image_alt=>'Create Task'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V NUMBER;',
'BEGIN',
'SELECT  COUNT(*) INTO V FROM CRM_SETUP_MAST WHERE ASSIGNED_TO =:P_USER_ID',
'AND CRM_TASK IS NOT NULL;',
'IF (   :P_USER_ID= ''UMAR.FAROOQ'' OR :P_USER_ID = ''RIZWAN BAKHT'' ) THEN',
'RETURN ',
'     TRUE;',
'',
'ELSE',
'RETURN FALSE;',
'',
'',
'END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232868611610262208)
,p_name=>'P56_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(232868543199262207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT USER_NAME D, USER_NAME R FROM ',
'DGMS_APPLICATION_USERS',
'WHERE STATUS =''Y''',
'ORDER BY ID DESC',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(139006283866878073)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(250709770607326128)
,p_name=>'P56_ASSIGNER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(232868543199262207)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assigner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT CREATED_BY AS D , CREATED_BY AS R ',
'FROM CRM_SETUP_MAST',
'',
'WHERE CREATED_BY = :P_USER_ID'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_field_template=>wwv_flow_api.id(139006283866878073)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(252191023460314506)
,p_name=>'P56_APP_USER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(232868543199262207)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(232868717724262209)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_USER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(232868813608262210)
,p_event_id=>wwv_flow_api.id(232868717724262209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(154558600070991717)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(250709817830326129)
,p_name=>'REFRESH'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P56_ASSIGNER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(250709986853326130)
,p_event_id=>wwv_flow_api.id(250709817830326129)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(154558600070991717)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(252190878061314504)
,p_name=>'ITEM HIDE SHOW AGAINST APP_USER'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(252190969995314505)
,p_event_id=>wwv_flow_api.id(252190878061314504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var assignerItem = apex.item(''P56_ASSIGNER'');',
'var user = apex.item(''P56_USER'');',
'var userId = $v(''P56_APP_USER'');',
'var showUserId = ''UMAR.FAROOQ'';',
'var showUserId1 = ''RIZWAN BAKHT'';',
'',
'if (userId === showUserId || userId === showUserId1) {',
'    assignerItem.show();',
'    user.show();',
'} else {',
'    assignerItem.hide();',
'    user.hide();',
'}',
'',
''))
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
