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
--   Date and Time:   11:58 Saturday March 30, 2024
--   Exported By:     UMAR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 82
--   Manifest End
--   Version:         21.1.7
--   Instance ID:     697968588975354
--

begin
null;
end;
/
prompt --application/pages/delete_00082
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>82);
end;
/
prompt --application/pages/page_00082
begin
wwv_flow_api.create_page(
 p_id=>82
,p_user_interface_id=>wwv_flow_api.id(139033628022878112)
,p_name=>'User Task'
,p_alias=>'USER-TASK'
,p_step_title=>'User Task'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'UMAR'
,p_last_upd_yyyymmddhh24miss=>'20240125183116'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(233218779995000886)
,p_plug_name=>'User Task'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#D5DCDC;"'
,p_plug_template=>wwv_flow_api.id(138943968014878023)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LEAD_ID,',
'       CONTACT_NO,',
'       FULL__NAME,',
'       EMAIL,',
'       CITY,',
'       CREATED_ON,',
'       SOURCES,',
'       ASSIGNED_TO,',
'       TASK_NO,',
'       REMARKS,',
'       STAGES,',
'       TRANSFER_REASONS,',
'       ASSIGNED_BY,',
'       BUSINESS_TYPE,',
'       RESUME_DATE,',
'       SEEN_TYPE,',
'       ACTIVE,',
'       LEAD_TIME,',
'       JOB_TITLE,',
'       COUNTRY,',
'       SOURCE_TYPE,',
'       NEXT_MEETINGS,',
'       CREATED_BY,',
'       OTHER_CITY,',
'       UPDATED_ON,',
'       DEALER_NAME,',
'       DEALER_NUMBER,',
'       TASK_TITLE,',
'       UPDATED_BY,',
'       DEALER_ID,',
'       SITE_ID,',
'       STATUS,',
'       CRM_TASK',
'  from CRM_SETUP_MAST'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(233296978856365702)
,p_plug_name=>'Enter Task'
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
 p_id=>wwv_flow_api.id(233241225838000904)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(233296978856365702)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(139009124014878078)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(233242478575000907)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(233296978856365702)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(139009124014878078)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_condition=>'P82_LEAD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(233242812210000907)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(233296978856365702)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(139009124014878078)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_condition=>'P82_LEAD_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(233243102271000907)
,p_branch_action=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232869335575262215)
,p_name=>'P82_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_prompt=>'<B>STATUS</B>'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:COMPLETED;COMPLETED,PENDING;PENDING,IN-PROCESS;IN-PROCESS'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(139006283866878073)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232869405868262216)
,p_name=>'P82_TASK_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_prompt=>'Task Title'
,p_source=>'TASK_TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_read_only_when=>'P82_CHECK'
,p_read_only_when2=>'Y'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(139006283866878073)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232870534573262227)
,p_name=>'P82_CHECK'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233219186838000887)
,p_name=>'P82_LEAD_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lead Id'
,p_source=>'LEAD_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(139006283866878073)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233219520910000891)
,p_name=>'P82_CONTACT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'CONTACT_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233219916485000892)
,p_name=>'P82_FULL__NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'FULL__NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233220381042000893)
,p_name=>'P82_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233220700716000893)
,p_name=>'P82_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_default=>'MULTAN'
,p_source=>'CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233221130211000893)
,p_name=>'P82_CREATED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'CREATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233221517906000894)
,p_name=>'P82_SOURCES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_default=>'Company'
,p_source=>'SOURCES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233221938085000894)
,p_name=>'P82_ASSIGNED_TO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_prompt=>'Assigned To'
,p_source=>'ASSIGNED_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT USER_NAME D, USER_NAME R FROM ',
'DGMS_APPLICATION_USERS',
'WHERE STATUS =''Y''',
'AND USER_NAME  != :APP_USER',
'ORDER BY ',
'    ID DESC',
''))
,p_cSize=>30
,p_read_only_when=>'P82_CHECK'
,p_read_only_when2=>'Y'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(139006283866878073)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233222352622000894)
,p_name=>'P82_TASK_NO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'TASK_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233222709431000894)
,p_name=>'P82_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1500
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(139006283866878073)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233223194423000894)
,p_name=>'P82_STAGES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_prompt=>'Stages'
,p_source=>'STAGES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC(,):Well, your work is done.Well, your work is done.Your work is not complete.Your work is not complete.Complete work immediatelyComplete work immediately'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when=>'P82_CHECK'
,p_read_only_when2=>'Y'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(139006283866878073)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233223549034000895)
,p_name=>'P82_TRANSFER_REASONS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_prompt=>'Task Description'
,p_source=>'TRANSFER_REASONS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P82_CHECK'
,p_read_only_when2=>'Y'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(139006283866878073)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233223980932000895)
,p_name=>'P82_ASSIGNED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'ASSIGNED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233224310800000895)
,p_name=>'P82_BUSINESS_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'BUSINESS_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233224794788000895)
,p_name=>'P82_RESUME_DATE'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_prompt=>'Task Due Date'
,p_source=>'RESUME_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P82_CHECK'
,p_read_only_when2=>'Y'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(139006283866878073)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233225542713000896)
,p_name=>'P82_SEEN_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'SEEN_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233225915777000897)
,p_name=>'P82_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_default=>'N'
,p_source=>'ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233226386932000897)
,p_name=>'P82_LEAD_TIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'LEAD_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233226770557000897)
,p_name=>'P82_JOB_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'JOB_TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233227149821000897)
,p_name=>'P82_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'COUNTRY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233227566112000897)
,p_name=>'P82_SOURCE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'SOURCE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233227940229000897)
,p_name=>'P82_NEXT_MEETINGS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'NEXT_MEETINGS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233228336917000898)
,p_name=>'P82_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233228746117000898)
,p_name=>'P82_OTHER_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'OTHER_CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233229130093000898)
,p_name=>'P82_UPDATED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'UPDATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233229597027000898)
,p_name=>'P82_DEALER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'DEALER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233229905006000898)
,p_name=>'P82_DEALER_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'DEALER_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233230732398000899)
,p_name=>'P82_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233231133462000899)
,p_name=>'P82_DEALER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_source=>'DEALER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233231513702000899)
,p_name=>'P82_SITE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_default=>'RETURN :P_SITE_ID;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'SITE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233297011179365703)
,p_name=>'P82_CRM_TASK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_source_plug_id=>wwv_flow_api.id(233218779995000886)
,p_item_default=>'1'
,p_source=>'CRM_TASK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(233225213480000896)
,p_validation_name=>'P82_RESUME_DATE must be timestamp'
,p_validation_sequence=>140
,p_validation=>'P82_RESUME_DATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(233224794788000895)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(232868966333262211)
,p_name=>'Disable remarks'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P82_LEAD_ID'
,p_condition_element=>'P82_LEAD_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(232869046424262212)
,p_event_id=>wwv_flow_api.id(232868966333262211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P82_REMARKS,P82_STATUS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(233244073517000909)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(233218779995000886)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form User Task'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(232869213865262214)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
'   UPDATE CRM_SETUP_MAST',
'   SET ACTIVE = ''Y'',',
'     ',
'   REMARKS = CASE',
'                  WHEN :P82_REMARKS IS NOT NULL AND :P82_STATUS IS NULL THEN ''acknowledge''',
'                  ELSE :P82_STATUS',
'               END,',
'   TASK_UPDATE_BY=:P_USER_ID,',
'   TASK_UPDATE_DATE=SYSDATE',
'  WHERE LEAD_ID = :P82_LEAD_ID;',
'  ',
'   COMMIT;',
' EXCEPTION',
'   WHEN NO_DATA_FOUND THEN',
'     NULL;',
' END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(233242478575000907)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(233243637636000908)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(233218779995000886)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form User Task'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(232870477375262226)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_NUM VARCHAR2(100);',
'BEGIN',
'select COUNT(*) INTO V_NUM  FROM CRM_SETUP_MAST ',
'WHERE (CREATED_BY  = :APP_USER AND LEAD_ID =:P82_LEAD_ID )',
'OR :P82_LEAD_ID IS NULL;',
'IF V_NUM > 0 THEN',
':P82_CHECK := ''Y'';',
'ELSE ',
':P82_CHECK := ''N'';',
'END IF ;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
