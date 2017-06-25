ALTER TABLE ceds6sc.k12_lea_title_iii_professional_development ADD CONSTRAINT fk_k12_lea_title_iii_professional_dev_k12_lea FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.k12_lea( organization_id );

COMMENT ON CONSTRAINT fk_k12_lea_title_iii_professional_dev_k12_lea ON ceds6sc.k12_lea_title_iii_professional_development IS '';

ALTER TABLE ceds6sc.k12_lea_title_iii_professional_development ADD CONSTRAINT fk_k12_lea_title_iii_professional_dev_title_iii_professional_dev_type FOREIGN KEY ( ref_title_iii_professional_development_type_id ) REFERENCES ceds6sc.ref_title_iii_professional_development_type( ref_title_iii_professional_development_type_id );

COMMENT ON CONSTRAINT fk_k12_lea_title_iii_professional_dev_title_iii_professional_dev_type ON ceds6sc.k12_lea_title_iii_professional_development IS '';

ALTER TABLE ceds6sc.k12_organization_student_responsibility ADD CONSTRAINT fk_k12_org_student_responsibility_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_k12_org_student_responsibility_organization_person_role ON ceds6sc.k12_organization_student_responsibility IS '';

ALTER TABLE ceds6sc.k12_organization_student_responsibility ADD CONSTRAINT fk_k12_org_student_responsibility_ref_k12_responsibility_type FOREIGN KEY ( ref_k12_responsibility_type_id ) REFERENCES ceds6sc.ref_k12_responsibility_type( ref_k12_responsibility_type_id );

COMMENT ON CONSTRAINT fk_k12_org_student_responsibility_ref_k12_responsibility_type ON ceds6sc.k12_organization_student_responsibility IS '';

ALTER TABLE ceds6sc.k12_school ADD CONSTRAINT fk_k12_school_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT fk_k12_school_organization ON ceds6sc.k12_school IS '';

ALTER TABLE ceds6sc.k12_school ADD CONSTRAINT fk_k12_school_ref_admin_funding_control FOREIGN KEY ( ref_administrative_funding_control_id ) REFERENCES ceds6sc.ref_administrative_funding_control( ref_administrative_funding_control_id );

COMMENT ON CONSTRAINT fk_k12_school_ref_admin_funding_control ON ceds6sc.k12_school IS '';

ALTER TABLE ceds6sc.k12_school ADD CONSTRAINT fk_k12_school_ref_charter_school_approval_agency_type_id FOREIGN KEY ( ref_charter_school_approval_agency_type_id ) REFERENCES ceds6sc.ref_charter_school_approval_agency_type( ref_charter_school_approval_agency_type_id );

COMMENT ON CONSTRAINT fk_k12_school_ref_charter_school_approval_agency_type_id ON ceds6sc.k12_school IS '';

ALTER TABLE ceds6sc.k12_school ADD CONSTRAINT fk_k12_school_ref_charter_school_management_organization_type FOREIGN KEY ( ref_charter_school_management_organization_type_id ) REFERENCES ceds6sc.ref_charter_school_management_organization_type( ref_charter_school_management_organization_type_id );

COMMENT ON CONSTRAINT fk_k12_school_ref_charter_school_management_organization_type ON ceds6sc.k12_school IS '';

ALTER TABLE ceds6sc.k12_school ADD CONSTRAINT fk_k12_school_ref_charter_school_type FOREIGN KEY ( ref_charter_school_type_id ) REFERENCES ceds6sc.ref_charter_school_type( ref_charter_school_type_id );

COMMENT ON CONSTRAINT fk_k12_school_ref_charter_school_type ON ceds6sc.k12_school IS '';

ALTER TABLE ceds6sc.k12_school ADD CONSTRAINT fk_k12_school_ref_increased_learning_time_type FOREIGN KEY ( ref_increased_learning_time_type_id ) REFERENCES ceds6sc.ref_increased_learning_time_type( ref_increased_learning_time_type_id );

COMMENT ON CONSTRAINT fk_k12_school_ref_increased_learning_time_type ON ceds6sc.k12_school IS '';

ALTER TABLE ceds6sc.k12_school ADD CONSTRAINT fk_k12_school_ref_school_level FOREIGN KEY ( ref_school_level_id ) REFERENCES ceds6sc.ref_school_level( ref_school_level_id );

COMMENT ON CONSTRAINT fk_k12_school_ref_school_level ON ceds6sc.k12_school IS '';

ALTER TABLE ceds6sc.k12_school ADD CONSTRAINT fk_k12_school_ref_school_type FOREIGN KEY ( ref_school_type_id ) REFERENCES ceds6sc.ref_school_type( ref_school_type_id );

COMMENT ON CONSTRAINT fk_k12_school_ref_school_type ON ceds6sc.k12_school IS '';

ALTER TABLE ceds6sc.k12_school ADD CONSTRAINT fk_k12_school_ref_state_poverty_designation FOREIGN KEY ( ref_state_poverty_designation_id ) REFERENCES ceds6sc.ref_state_poverty_designation( ref_state_poverty_designation_id );

COMMENT ON CONSTRAINT fk_k12_school_ref_state_poverty_designation ON ceds6sc.k12_school IS '';

ALTER TABLE ceds6sc.k12_school_grade_offered ADD CONSTRAINT fk_k12_school_grade_offered_k12_school FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.k12_school( organization_id );

COMMENT ON CONSTRAINT fk_k12_school_grade_offered_k12_school ON ceds6sc.k12_school_grade_offered IS '';

ALTER TABLE ceds6sc.k12_school_grade_offered ADD CONSTRAINT fk_k12_school_grade_offered_ref_grade_level FOREIGN KEY ( ref_grade_level_id ) REFERENCES ceds6sc.ref_grade_level( ref_grade_level_id );

COMMENT ON CONSTRAINT fk_k12_school_grade_offered_ref_grade_level ON ceds6sc.k12_school_grade_offered IS '';

ALTER TABLE ceds6sc.k12_school_status ADD CONSTRAINT fk_k12_school_status_k12_school FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.k12_school( organization_id );

COMMENT ON CONSTRAINT fk_k12_school_status_k12_school ON ceds6sc.k12_school_status IS '';

ALTER TABLE ceds6sc.k12_school_status ADD CONSTRAINT fk_k12_school_status_ref_alternative_school_focus FOREIGN KEY ( ref_alternative_school_focus_id ) REFERENCES ceds6sc.ref_alternative_school_focus( ref_alternative_school_focus_id );

COMMENT ON CONSTRAINT fk_k12_school_status_ref_alternative_school_focus ON ceds6sc.k12_school_status IS '';

ALTER TABLE ceds6sc.k12_school_status ADD CONSTRAINT fk_k12_school_status_ref_internet_access FOREIGN KEY ( ref_internet_access_id ) REFERENCES ceds6sc.ref_internet_access( ref_internet_access_id );

COMMENT ON CONSTRAINT fk_k12_school_status_ref_internet_access ON ceds6sc.k12_school_status IS '';

ALTER TABLE ceds6sc.k12_school_status ADD CONSTRAINT fk_k12_school_status_ref_magnet_special_program FOREIGN KEY ( ref_magnet_special_program_id ) REFERENCES ceds6sc.ref_magnet_special_program( ref_magnet_special_program_id );

COMMENT ON CONSTRAINT fk_k12_school_status_ref_magnet_special_program ON ceds6sc.k12_school_status IS '';

ALTER TABLE ceds6sc.k12_school_status ADD CONSTRAINT fk_k12_school_status_ref_restructuring_action FOREIGN KEY ( ref_restructuring_action_id ) REFERENCES ceds6sc.ref_restructuring_action( ref_restructuring_action_id );

COMMENT ON CONSTRAINT fk_k12_school_status_ref_restructuring_action ON ceds6sc.k12_school_status IS '';

ALTER TABLE ceds6sc.k12_school_status ADD CONSTRAINT fk_k12_school_status_ref_title_1_school_status FOREIGN KEY ( ref_title_ischool_status_id ) REFERENCES ceds6sc.ref_title_i_school_status( ref_title_1_school_status_id );

COMMENT ON CONSTRAINT fk_k12_school_status_ref_title_1_school_status ON ceds6sc.k12_school_status IS '';

ALTER TABLE ceds6sc.k12_sea_alternate_fund_use ADD CONSTRAINT fk_k12_sea_alternate_fund_use_k12_sea_federal_funds FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.k12_sea_federal_funds( organization_id );

COMMENT ON CONSTRAINT fk_k12_sea_alternate_fund_use_k12_sea_federal_funds ON ceds6sc.k12_sea_alternate_fund_use IS '';

ALTER TABLE ceds6sc.k12_sea_alternate_fund_use ADD CONSTRAINT fk_k12_sea_alternate_fund_use_ref_alternate_fund_uses FOREIGN KEY ( ref_alternate_fund_uses_id ) REFERENCES ceds6sc.ref_alternate_fund_uses( ref_alternate_fund_uses_id );

COMMENT ON CONSTRAINT fk_k12_sea_alternate_fund_use_ref_alternate_fund_uses ON ceds6sc.k12_sea_alternate_fund_use IS '';

ALTER TABLE ceds6sc.k12_sea_federal_funds ADD CONSTRAINT fk_k12_sea_federal_funds_k12_sea FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.k12_sea( organization_id );

COMMENT ON CONSTRAINT fk_k12_sea_federal_funds_k12_sea ON ceds6sc.k12_sea_federal_funds IS '';

ALTER TABLE ceds6sc.k12_staff_employment ADD CONSTRAINT fk_k12_staff_employment_ref_employment_status FOREIGN KEY ( ref_employment_status_id ) REFERENCES ceds6sc.ref_employment_status( ref_employment_status_id );

COMMENT ON CONSTRAINT fk_k12_staff_employment_ref_employment_status ON ceds6sc.k12_staff_employment IS '';

ALTER TABLE ceds6sc.k12_staff_employment ADD CONSTRAINT fk_k12_staff_employment_ref_edu_staff_classification FOREIGN KEY ( ref_k12_staff_classification_id ) REFERENCES ceds6sc.ref_k12_staff_classification( ref_education_staff_classification_id );

COMMENT ON CONSTRAINT fk_k12_staff_employment_ref_edu_staff_classification ON ceds6sc.k12_staff_employment IS '';

ALTER TABLE ceds6sc.k12_staff_employment ADD CONSTRAINT fk_k12_staff_employment_staff_employment FOREIGN KEY ( staff_employment_id ) REFERENCES ceds6sc.staff_employment( staff_employment_id );

COMMENT ON CONSTRAINT fk_k12_staff_employment_staff_employment ON ceds6sc.k12_staff_employment IS '';

ALTER TABLE ceds6sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_organization_person FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT fk_k12_student_academic_record_organization_person ON ceds6sc.k12_student_academic_record IS '';

ALTER TABLE ceds6sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_gpa_weighted_indicator FOREIGN KEY ( ref_gpa_weighted_indicator_id ) REFERENCES ceds6sc.ref_gpa_weighted_indicator( ref_gpa_weighted_indicator_id );

COMMENT ON CONSTRAINT fk_k12_student_academic_record_ref_gpa_weighted_indicator ON ceds6sc.k12_student_academic_record IS '';

ALTER TABLE ceds6sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_hs_diploma_distinction_type FOREIGN KEY ( ref_high_school_diploma_distinction_type_id ) REFERENCES ceds6sc.ref_high_school_diploma_distinction_type( ref_high_school_diploma_distinction_type_id );

COMMENT ON CONSTRAINT fk_k12_student_academic_record_ref_hs_diploma_distinction_type ON ceds6sc.k12_student_academic_record IS '';

ALTER TABLE ceds6sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_high_school_diploma_type FOREIGN KEY ( ref_high_school_diploma_type_id ) REFERENCES ceds6sc.ref_high_school_diploma_type( ref_high_school_diploma_type_id );

COMMENT ON CONSTRAINT fk_k12_student_academic_record_ref_high_school_diploma_type ON ceds6sc.k12_student_academic_record IS '';

ALTER TABLE ceds6sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_pre_and_post_test_indicator FOREIGN KEY ( ref_pre_and_post_test_indicator_id ) REFERENCES ceds6sc.ref_pre_and_post_test_indicator( ref_pre_and_post_test_indicator_id );

COMMENT ON CONSTRAINT fk_k12_student_academic_record_ref_pre_and_post_test_indicator ON ceds6sc.k12_student_academic_record IS '';

ALTER TABLE ceds6sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_professional_technical_credential FOREIGN KEY ( ref_professional_technical_credential_type_id ) REFERENCES ceds6sc.ref_professional_technical_credential_type( ref_professional_technical_credential_type_id );

COMMENT ON CONSTRAINT fk_k12_student_academic_record_ref_professional_technical_credential ON ceds6sc.k12_student_academic_record IS '';

ALTER TABLE ceds6sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_progress_level FOREIGN KEY ( ref_progress_level_id ) REFERENCES ceds6sc.ref_progress_level( ref_progress_level_id );

COMMENT ON CONSTRAINT fk_k12_student_academic_record_ref_progress_level ON ceds6sc.k12_student_academic_record IS '';

ALTER TABLE ceds6sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_ps_enrollment_action FOREIGN KEY ( ref_ps_enrollment_action_id ) REFERENCES ceds6sc.ref_ps_enrollment_action( ref_ps_enrollment_action_id );

COMMENT ON CONSTRAINT fk_k12_student_academic_record_ref_ps_enrollment_action ON ceds6sc.k12_student_academic_record IS '';

ALTER TABLE ceds6sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_technology_literacy_status FOREIGN KEY ( ref_technology_literacy_status_id ) REFERENCES ceds6sc.ref_technology_literacy_status( ref_technology_literacy_status_id );

COMMENT ON CONSTRAINT fk_k12_student_academic_record_ref_technology_literacy_status ON ceds6sc.k12_student_academic_record IS '';

ALTER TABLE ceds6sc.k12_student_cohort ADD CONSTRAINT fk_k12_student_cohort_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_k12_student_cohort_organization_person_role ON ceds6sc.k12_student_cohort IS '';

ALTER TABLE ceds6sc.k12_student_course_section_mark ADD CONSTRAINT fk_k12_student_course_section_mark_k12_student_course_section FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.k12_student_course_section( organization_person_role_id );

COMMENT ON CONSTRAINT fk_k12_student_course_section_mark_k12_student_course_section ON ceds6sc.k12_student_course_section_mark IS '';

ALTER TABLE ceds6sc.k12_student_employment ADD CONSTRAINT fk_k12_student_employment_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_k12_student_employment_organization_person_role ON ceds6sc.k12_student_employment IS '';

ALTER TABLE ceds6sc.k12_student_employment ADD CONSTRAINT fk_k12_student_employment_ref_employed_after_exit FOREIGN KEY ( ref_employed_after_exit_id ) REFERENCES ceds6sc.ref_employed_after_exit( ref_employed_after_exit_id );

COMMENT ON CONSTRAINT fk_k12_student_employment_ref_employed_after_exit ON ceds6sc.k12_student_employment IS '';

ALTER TABLE ceds6sc.k12_student_employment ADD CONSTRAINT fk_k12_student_employment_ref_employed_while_enrolled FOREIGN KEY ( ref_employed_while_enrolled_id ) REFERENCES ceds6sc.ref_employed_while_enrolled( ref_employed_while_enrolled_id );

COMMENT ON CONSTRAINT fk_k12_student_employment_ref_employed_while_enrolled ON ceds6sc.k12_student_employment IS '';

ALTER TABLE ceds6sc.k12_student_graduation_plan ADD CONSTRAINT fk_k12_student_graduation_plan_k12_course FOREIGN KEY ( k12_course_id ) REFERENCES ceds6sc.k12_course( organization_id );

COMMENT ON CONSTRAINT fk_k12_student_graduation_plan_k12_course ON ceds6sc.k12_student_graduation_plan IS '';

ALTER TABLE ceds6sc.k12_student_graduation_plan ADD CONSTRAINT fk_k12_student_graduation_plan_organization_person FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_k12_student_graduation_plan_organization_person ON ceds6sc.k12_student_graduation_plan IS '';

ALTER TABLE ceds6sc.k12_student_graduation_plan ADD CONSTRAINT fk_k12_student_graduation_plan_ref_grade_level FOREIGN KEY ( ref_grade_level_when_course_taken_id ) REFERENCES ceds6sc.ref_grade_level( ref_grade_level_id );

COMMENT ON CONSTRAINT fk_k12_student_graduation_plan_ref_grade_level ON ceds6sc.k12_student_graduation_plan IS '';

ALTER TABLE ceds6sc.k12_student_graduation_plan ADD CONSTRAINT fk_k12_student_graduation_plan_ref_sced_course_subject_area FOREIGN KEY ( ref_sced_course_subject_area_id ) REFERENCES ceds6sc.ref_sced_course_subject_area( ref_sced_course_subject_area_id );

COMMENT ON CONSTRAINT fk_k12_student_graduation_plan_ref_sced_course_subject_area ON ceds6sc.k12_student_graduation_plan IS '';

ALTER TABLE ceds6sc.k12_student_session ADD CONSTRAINT fk_k12_student_session_organization_calendar_session FOREIGN KEY ( organization_calendar_session_id ) REFERENCES ceds6sc.organization_calendar_session( organization_calendar_session_id );

COMMENT ON CONSTRAINT fk_k12_student_session_organization_calendar_session ON ceds6sc.k12_student_session IS '';

ALTER TABLE ceds6sc.k12_student_session ADD CONSTRAINT fk_k12_student_session_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_k12_student_session_organization_person_role ON ceds6sc.k12_student_session IS '';

ALTER TABLE ceds6sc.learner_action ADD CONSTRAINT fk_assessment_item_learner_action_assessment_item_response FOREIGN KEY ( assessment_item_response_id ) REFERENCES ceds6sc.assessment_item_response( assessment_item_response_id );

COMMENT ON CONSTRAINT fk_assessment_item_learner_action_assessment_item_response ON ceds6sc.learner_action IS '';

ALTER TABLE ceds6sc.learner_action ADD CONSTRAINT fk_learner_action_ref_learner_action_type FOREIGN KEY ( ref_learner_action_type_id ) REFERENCES ceds6sc.ref_learner_action_type( ref_learner_action_type_id );

COMMENT ON CONSTRAINT fk_learner_action_ref_learner_action_type ON ceds6sc.learner_action IS '';

ALTER TABLE ceds6sc.learner_activity_learning_resource ADD CONSTRAINT fk_learner_assignment_learning_resource_learner_assignment FOREIGN KEY ( learner_activity_id ) REFERENCES ceds6sc.learner_activity( learner_activity_id );

COMMENT ON CONSTRAINT fk_learner_assignment_learning_resource_learner_assignment ON ceds6sc.learner_activity_learning_resource IS '';

ALTER TABLE ceds6sc.learner_activity_learning_resource ADD CONSTRAINT fk_learner_assignment_learning_resource_learning_resource FOREIGN KEY ( learning_resource_id ) REFERENCES ceds6sc.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT fk_learner_assignment_learning_resource_learning_resource ON ceds6sc.learner_activity_learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource_education_level ADD CONSTRAINT fk_learning_resource_grade_level_learning_resource FOREIGN KEY ( learning_resource_id ) REFERENCES ceds6sc.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT fk_learning_resource_grade_level_learning_resource ON ceds6sc.learning_resource_education_level IS '';

ALTER TABLE ceds6sc.learning_resource_education_level ADD CONSTRAINT fk_learning_resource_education_level_ref_education_level FOREIGN KEY ( ref_education_level_id ) REFERENCES ceds6sc.ref_education_level( ref_education_level_id );

COMMENT ON CONSTRAINT fk_learning_resource_education_level_ref_education_level ON ceds6sc.learning_resource_education_level IS '';

ALTER TABLE ceds6sc.learning_resource_peer_rating ADD CONSTRAINT fk_learning_resource_peer_rating_learning_resource FOREIGN KEY ( learning_resource_id ) REFERENCES ceds6sc.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT fk_learning_resource_peer_rating_learning_resource ON ceds6sc.learning_resource_peer_rating IS '';

ALTER TABLE ceds6sc.learning_resource_peer_rating ADD CONSTRAINT fk_learning_resource_peer_rating_peer_rating_system FOREIGN KEY ( peer_rating_system_id ) REFERENCES ceds6sc.peer_rating_system( peer_rating_system_id );

COMMENT ON CONSTRAINT fk_learning_resource_peer_rating_peer_rating_system ON ceds6sc.learning_resource_peer_rating IS '';

ALTER TABLE ceds6sc.learning_resource_peer_rating ADD CONSTRAINT fk_learning_resource_peer_rating_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_learning_resource_peer_rating_person ON ceds6sc.learning_resource_peer_rating IS '';

ALTER TABLE ceds6sc.learning_standard_item_association ADD CONSTRAINT fk_learning_standard_item_association_learning_standard_item FOREIGN KEY ( learning_standard_item_id ) REFERENCES ceds6sc.learning_standard_item( learning_standard_item_id );

COMMENT ON CONSTRAINT fk_learning_standard_item_association_learning_standard_item ON ceds6sc.learning_standard_item_association IS '';

ALTER TABLE ceds6sc.learning_standard_item_association ADD CONSTRAINT fk_learning_standard_item_association_ref_associated_entity_type FOREIGN KEY ( ref_entity_type_id ) REFERENCES ceds6sc.ref_entity_type( ref_entity_type_id );

COMMENT ON CONSTRAINT fk_learning_standard_item_association_ref_associated_entity_type ON ceds6sc.learning_standard_item_association IS '';

ALTER TABLE ceds6sc.learning_standard_item_association ADD CONSTRAINT fk_lsitem_association_ref_learning_standard_item_association FOREIGN KEY ( ref_learning_standard_item_association_type_id ) REFERENCES ceds6sc.ref_learning_standard_item_association_type( ref_learning_standard_item_association_type_id );

COMMENT ON CONSTRAINT fk_lsitem_association_ref_learning_standard_item_association ON ceds6sc.learning_standard_item_association IS '';

ALTER TABLE ceds6sc.organization ADD CONSTRAINT fk_organization_ref_organization_type FOREIGN KEY ( ref_organization_type_id ) REFERENCES ceds6sc.ref_organization_type( ref_organization_type_id );

COMMENT ON CONSTRAINT fk_organization_ref_organization_type ON ceds6sc.organization IS '';

ALTER TABLE ceds6sc.organization_calendar ADD CONSTRAINT fk_organization_calendar_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_organization_calendar_organization ON ceds6sc.organization_calendar IS '';

ALTER TABLE ceds6sc.organization_calendar_day ADD CONSTRAINT fk_organization_calendar_day_organization_calendar1 FOREIGN KEY ( organization_calendar_id ) REFERENCES ceds6sc.organization_calendar( organization_calendar_id );

COMMENT ON CONSTRAINT fk_organization_calendar_day_organization_calendar1 ON ceds6sc.organization_calendar_day IS '';

ALTER TABLE ceds6sc.organization_calendar_session ADD CONSTRAINT fk_organization_calendar_session_organization_calendar FOREIGN KEY ( organization_calendar_id ) REFERENCES ceds6sc.organization_calendar( organization_calendar_id );

COMMENT ON CONSTRAINT fk_organization_calendar_session_organization_calendar ON ceds6sc.organization_calendar_session IS '';

ALTER TABLE ceds6sc.organization_calendar_session ADD CONSTRAINT fk_organization_calendar_session_ref_session_type FOREIGN KEY ( ref_session_type_id ) REFERENCES ceds6sc.ref_session_type( ref_session_type_id );

COMMENT ON CONSTRAINT fk_organization_calendar_session_ref_session_type ON ceds6sc.organization_calendar_session IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_organization ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_amao_attnmnt_lep_students FOREIGN KEY ( amao_ayp_progress_attainment_lep_students ) REFERENCES ceds6sc.ref_amao_attainment_status( ref_amao_attainment_status_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_amao_attnmnt_lep_students ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_amao_attnmnt_lep_students_1 FOREIGN KEY ( amao_proficiency_attainment_lep_students ) REFERENCES ceds6sc.ref_amao_attainment_status( ref_amao_attainment_status_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_amao_attnmnt_lep_students_1 ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_amao_attnmnt_lep_students_2 FOREIGN KEY ( amao_progress_attainment_lep_students ) REFERENCES ceds6sc.ref_amao_attainment_status( ref_amao_attainment_status_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_amao_attnmnt_lep_students_2 ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_ayp_status FOREIGN KEY ( ref_ayp_status_id ) REFERENCES ceds6sc.ref_ayp_status( ref_ayp_status_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_ayp_status ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_ctegraduation_rate_inclusion FOREIGN KEY ( ref_cte_graduation_rate_inclusion_id ) REFERENCES ceds6sc.ref_cte_graduation_rate_inclusion( ref_cte_graduation_rate_inclusion_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_ctegraduation_rate_inclusion ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_elementary_middle_additional FOREIGN KEY ( ref_elementary_middle_additional_id ) REFERENCES ceds6sc.ref_elementary_middle_additional( ref_elementary_middle_additional_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_elementary_middle_additional ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_gun_free_schools_act_status FOREIGN KEY ( ref_gun_free_schools_act_status_reporting_id ) REFERENCES ceds6sc.ref_gun_free_schools_act_reporting_status( ref_gun_free_schools_act_status_reporting_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_gun_free_schools_act_status ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_hsgraduation_rate_indicator FOREIGN KEY ( ref_high_school_graduation_rate_indicator ) REFERENCES ceds6sc.ref_high_school_graduation_rate_indicator( ref_hsgraduation_rate_indicator_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_hsgraduation_rate_indicator ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_participation_status_ayp_2 FOREIGN KEY ( ref_participation_status_math_id ) REFERENCES ceds6sc.ref_participation_status_ayp( ref_participation_status_ayp_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_participation_status_ayp_2 ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_participation_status_ayp_3 FOREIGN KEY ( ref_participation_status_rla_id ) REFERENCES ceds6sc.ref_participation_status_ayp( ref_participation_status_ayp_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_participation_status_ayp_3 ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_proficiency_target_ayp FOREIGN KEY ( ref_proficiency_target_status_math_id ) REFERENCES ceds6sc.ref_proficiency_target_ayp( ref_proficiency_target_ayp_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_proficiency_target_ayp ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_proficiency_target_ayp_1 FOREIGN KEY ( ref_proficiency_target_status_rlaid ) REFERENCES ceds6sc.ref_proficiency_target_ayp( ref_proficiency_target_ayp_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_proficiency_target_ayp_1 ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_reconstituted_status FOREIGN KEY ( ref_reconstituted_status_id ) REFERENCES ceds6sc.ref_reconstituted_status( ref_reconstituted_status_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_reconstituted_status ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_identifier ADD CONSTRAINT fk_organization_identifier_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_organization_identifier_organization ON ceds6sc.organization_identifier IS '';

ALTER TABLE ceds6sc.organization_identifier ADD CONSTRAINT fk_organization_identifier_ref_identifier_organization FOREIGN KEY ( ref_organization_identification_system_id ) REFERENCES ceds6sc.ref_organization_identification_system( ref_organization_identification_system_id );

COMMENT ON CONSTRAINT fk_organization_identifier_ref_identifier_organization ON ceds6sc.organization_identifier IS '';

ALTER TABLE ceds6sc.organization_identifier ADD CONSTRAINT fk_organization_identifier_ref_organization_identifier_type FOREIGN KEY ( ref_organization_identifier_type_id ) REFERENCES ceds6sc.ref_organization_identifier_type( ref_organization_identifier_type_id );

COMMENT ON CONSTRAINT fk_organization_identifier_ref_organization_identifier_type ON ceds6sc.organization_identifier IS '';

ALTER TABLE ceds6sc.organization_location ADD CONSTRAINT fk_organization_location_location FOREIGN KEY ( location_id ) REFERENCES ceds6sc.location( location_id );

COMMENT ON CONSTRAINT fk_organization_location_location ON ceds6sc.organization_location IS '';

ALTER TABLE ceds6sc.organization_location ADD CONSTRAINT fk_organization_location_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_organization_location_organization ON ceds6sc.organization_location IS '';

ALTER TABLE ceds6sc.organization_location ADD CONSTRAINT fk_organization_location_ref_organization_location_type FOREIGN KEY ( ref_organization_location_type_id ) REFERENCES ceds6sc.ref_organization_location_type( ref_organization_location_type_id );

COMMENT ON CONSTRAINT fk_organization_location_ref_organization_location_type ON ceds6sc.organization_location IS '';

ALTER TABLE ceds6sc.organization_person_role ADD CONSTRAINT fk_organization_person_role_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_organization_person_role_organization ON ceds6sc.organization_person_role IS '';

ALTER TABLE ceds6sc.organization_person_role ADD CONSTRAINT fk_organization_person_role_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_organization_person_role_person ON ceds6sc.organization_person_role IS '';

ALTER TABLE ceds6sc.organization_person_role ADD CONSTRAINT fk_orgranization_person_role_role FOREIGN KEY ( role_id ) REFERENCES ceds6sc.role( role_id );

COMMENT ON CONSTRAINT fk_orgranization_person_role_role ON ceds6sc.organization_person_role IS '';

ALTER TABLE ceds6sc.organization_program_type ADD CONSTRAINT fk_organization_program_type_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_organization_program_type_organization ON ceds6sc.organization_program_type IS '';

ALTER TABLE ceds6sc.organization_program_type ADD CONSTRAINT fk_organization_program_type_ref_program_type FOREIGN KEY ( ref_program_type_id ) REFERENCES ceds6sc.ref_program_type( ref_program_type_id );

COMMENT ON CONSTRAINT fk_organization_program_type_ref_program_type ON ceds6sc.organization_program_type IS '';

ALTER TABLE ceds6sc.organization_technical_assistance ADD CONSTRAINT fk_organization_technical_assistance_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_organization_technical_assistance_organization ON ceds6sc.organization_technical_assistance IS '';

ALTER TABLE ceds6sc.organization_technical_assistance ADD CONSTRAINT fk_organization_technical_assistance_ref_technical_assistance_delivery_type FOREIGN KEY ( ref_technical_assistance_delivery_type_id ) REFERENCES ceds6sc.ref_technical_assistance_delivery_type( ref_technical_assistance_delivery_type_id );

COMMENT ON CONSTRAINT fk_organization_technical_assistance_ref_technical_assistance_delivery_type ON ceds6sc.organization_technical_assistance IS '';

ALTER TABLE ceds6sc.organization_technical_assistance ADD CONSTRAINT fk_organization_technical_assistance_ref_technical_assistance_type FOREIGN KEY ( ref_technical_assistance_type_id ) REFERENCES ceds6sc.ref_technical_assistance_type( ref_technical_assistance_type_id );

COMMENT ON CONSTRAINT fk_organization_technical_assistance_ref_technical_assistance_type ON ceds6sc.organization_technical_assistance IS '';

ALTER TABLE ceds6sc.organization_website ADD CONSTRAINT fk_organization_website_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_organization_website_organization ON ceds6sc.organization_website IS '';

ALTER TABLE ceds6sc.person ADD CONSTRAINT fk_person_ref_education_level FOREIGN KEY ( ref_highest_education_level_completed_id ) REFERENCES ceds6sc.ref_education_level( ref_education_level_id );

COMMENT ON CONSTRAINT fk_person_ref_education_level ON ceds6sc.person IS '';

ALTER TABLE ceds6sc.person ADD CONSTRAINT fk_person_ref_personal_information_verification FOREIGN KEY ( ref_personal_information_verification_id ) REFERENCES ceds6sc.ref_personal_information_verification( ref_personal_information_verification_id );

COMMENT ON CONSTRAINT fk_person_ref_personal_information_verification ON ceds6sc.person IS '';

ALTER TABLE ceds6sc.person ADD CONSTRAINT fk_person_ref_proof_of_residency_type FOREIGN KEY ( ref_proof_of_residency_type_id ) REFERENCES ceds6sc.ref_proof_of_residency_type( ref_proof_of_residency_type_id );

COMMENT ON CONSTRAINT fk_person_ref_proof_of_residency_type ON ceds6sc.person IS '';

ALTER TABLE ceds6sc.person ADD CONSTRAINT fk_person_ref_sex FOREIGN KEY ( ref_sex_id ) REFERENCES ceds6sc.ref_sex( ref_sex_id );

COMMENT ON CONSTRAINT fk_person_ref_sex ON ceds6sc.person IS '';

ALTER TABLE ceds6sc.person ADD CONSTRAINT fk_person_ref_state FOREIGN KEY ( ref_state_of_residence_id ) REFERENCES ceds6sc.ref_state( ref_state_id );

COMMENT ON CONSTRAINT fk_person_ref_state ON ceds6sc.person IS '';

ALTER TABLE ceds6sc.person ADD CONSTRAINT fk_person_ref_tribal_affiliation FOREIGN KEY ( ref_tribal_affiliation_id ) REFERENCES ceds6sc.ref_tribal_affiliation( ref_tribal_affiliation_id );

COMMENT ON CONSTRAINT fk_person_ref_tribal_affiliation ON ceds6sc.person IS '';

ALTER TABLE ceds6sc.person ADD CONSTRAINT fk_person_ref_us_citizenship_status FOREIGN KEY ( ref_us_citizenship_status_id ) REFERENCES ceds6sc.ref_us_citizenship_status( ref_us_citizenship_status_id );

COMMENT ON CONSTRAINT fk_person_ref_us_citizenship_status ON ceds6sc.person IS '';

ALTER TABLE ceds6sc.person ADD CONSTRAINT fk_person_ref_visa_type FOREIGN KEY ( ref_visa_type_id ) REFERENCES ceds6sc.ref_visa_type( ref_visa_type_id );

COMMENT ON CONSTRAINT fk_person_ref_visa_type ON ceds6sc.person IS '';

ALTER TABLE ceds6sc.person_allergy ADD CONSTRAINT fk_person_allergy_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_person_allergy_person ON ceds6sc.person_allergy IS '';

ALTER TABLE ceds6sc.person_allergy ADD CONSTRAINT fk_person_allergy_ref_allergy_severity FOREIGN KEY ( ref_allergy_severity_id ) REFERENCES ceds6sc.ref_allergy_severity( ref_allergy_severity_id );

COMMENT ON CONSTRAINT fk_person_allergy_ref_allergy_severity ON ceds6sc.person_allergy IS '';

ALTER TABLE ceds6sc.person_allergy ADD CONSTRAINT fk_person_allergy_ref_allergy_type_id FOREIGN KEY ( ref_allergy_type_id ) REFERENCES ceds6sc.ref_allergy_type( ref_allergy_type_id );

COMMENT ON CONSTRAINT fk_person_allergy_ref_allergy_type_id ON ceds6sc.person_allergy IS '';

ALTER TABLE ceds6sc.person_birthplace ADD CONSTRAINT fk_person_birthplace_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_person_birthplace_person ON ceds6sc.person_birthplace IS '';

ALTER TABLE ceds6sc.person_birthplace ADD CONSTRAINT fk_person_birthplace_ref_country FOREIGN KEY ( ref_country_id ) REFERENCES ceds6sc.ref_country( ref_country_id );

COMMENT ON CONSTRAINT fk_person_birthplace_ref_country ON ceds6sc.person_birthplace IS '';

ALTER TABLE ceds6sc.person_birthplace ADD CONSTRAINT fk_person_birthplace_ref_state FOREIGN KEY ( ref_state_id ) REFERENCES ceds6sc.ref_state( ref_state_id );

COMMENT ON CONSTRAINT fk_person_birthplace_ref_state ON ceds6sc.person_birthplace IS '';

ALTER TABLE ceds6sc.person_credential ADD CONSTRAINT fk_person_credential_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_person_credential_person ON ceds6sc.person_credential IS '';

ALTER TABLE ceds6sc.person_credential ADD CONSTRAINT fk_person_credential_ref_credential_type FOREIGN KEY ( ref_credential_type_id ) REFERENCES ceds6sc.ref_credential_type( ref_credential_type_id );

COMMENT ON CONSTRAINT fk_person_credential_ref_credential_type ON ceds6sc.person_credential IS '';

ALTER TABLE ceds6sc.person_credential ADD CONSTRAINT fk_person_credential_ref_state FOREIGN KEY ( ref_issuing_state_id ) REFERENCES ceds6sc.ref_state( ref_state_id );

COMMENT ON CONSTRAINT fk_person_credential_ref_state ON ceds6sc.person_credential IS '';

ALTER TABLE ceds6sc.person_demographic_race ADD CONSTRAINT fk_person_demographic_race_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_person_demographic_race_person ON ceds6sc.person_demographic_race IS '';

ALTER TABLE ceds6sc.person_demographic_race ADD CONSTRAINT fk_demographic_race_ref_race FOREIGN KEY ( ref_race_id ) REFERENCES ceds6sc.ref_race( ref_race_id );

COMMENT ON CONSTRAINT fk_demographic_race_ref_race ON ceds6sc.person_demographic_race IS '';

ALTER TABLE ceds6sc.person_email_address ADD CONSTRAINT fk_person_email_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_person_email_person ON ceds6sc.person_email_address IS '';

ALTER TABLE ceds6sc.person_email_address ADD CONSTRAINT fk_person_email_address_ref_email_type FOREIGN KEY ( ref_email_type_id ) REFERENCES ceds6sc.ref_email_type( ref_email_type_id );

COMMENT ON CONSTRAINT fk_person_email_address_ref_email_type ON ceds6sc.person_email_address IS '';

ALTER TABLE ceds6sc.person_health ADD CONSTRAINT fk_person_health_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_person_health_person ON ceds6sc.person_health IS '';

ALTER TABLE ceds6sc.person_health ADD CONSTRAINT fk_person_health_ref_dental_insurace_coverage_type FOREIGN KEY ( ref_dental_insurance_coverage_type_id ) REFERENCES ceds6sc.ref_dental_insurance_coverage_type( ref_dental_insurance_coverage_type_id );

COMMENT ON CONSTRAINT fk_person_health_ref_dental_insurace_coverage_type ON ceds6sc.person_health IS '';

ALTER TABLE ceds6sc.person_health ADD CONSTRAINT fk_person_health_ref_dental_screening_status FOREIGN KEY ( ref_dental_screening_status_id ) REFERENCES ceds6sc.ref_dental_screening_status( ref_dental_screening_status_id );

COMMENT ON CONSTRAINT fk_person_health_ref_dental_screening_status ON ceds6sc.person_health IS '';

ALTER TABLE ceds6sc.person_health ADD CONSTRAINT fk_person_health_ref_health_insurance_coverage FOREIGN KEY ( ref_health_insurance_coverage_id ) REFERENCES ceds6sc.ref_health_insurance_coverage( ref_health_insurance_coverage_id );

COMMENT ON CONSTRAINT fk_person_health_ref_health_insurance_coverage ON ceds6sc.person_health IS '';

ALTER TABLE ceds6sc.person_health ADD CONSTRAINT fk_person_health_ref_hearing_screening_status FOREIGN KEY ( ref_hearing_screening_status_id ) REFERENCES ceds6sc.ref_hearing_screening_status( ref_hearing_screening_status_id );

COMMENT ON CONSTRAINT fk_person_health_ref_hearing_screening_status ON ceds6sc.person_health IS '';

ALTER TABLE ceds6sc.person_health ADD CONSTRAINT fk_person_health_ref_medical_alert_indicator FOREIGN KEY ( ref_medical_alert_indicator_id ) REFERENCES ceds6sc.ref_medical_alert_indicator( ref_medical_alert_indicator_id );

COMMENT ON CONSTRAINT fk_person_health_ref_medical_alert_indicator ON ceds6sc.person_health IS '';

ALTER TABLE ceds6sc.person_health ADD CONSTRAINT fk_person_health_ref_vision_screening_status FOREIGN KEY ( ref_vision_screening_status_id ) REFERENCES ceds6sc.ref_vision_screening_status( ref_vision_screening_status_id );

COMMENT ON CONSTRAINT fk_person_health_ref_vision_screening_status ON ceds6sc.person_health IS '';

ALTER TABLE ceds6sc.person_homelessness ADD CONSTRAINT fk_homeless_primary_nighttime_residence_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_homeless_primary_nighttime_residence_person ON ceds6sc.person_homelessness IS '';

ALTER TABLE ceds6sc.person_homelessness ADD CONSTRAINT fk_homeless_primary_nighttime_residence_ref_homeless_nighttime_resid FOREIGN KEY ( ref_homeless_nighttime_residence_id ) REFERENCES ceds6sc.ref_homeless_nighttime_residence( ref_homeless_nighttime_residence_id );

COMMENT ON CONSTRAINT fk_homeless_primary_nighttime_residence_ref_homeless_nighttime_resid ON ceds6sc.person_homelessness IS '';

ALTER TABLE ceds6sc.person_immunization ADD CONSTRAINT fk_person_immunization_person1 FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_person_immunization_person1 ON ceds6sc.person_immunization IS '';

ALTER TABLE ceds6sc.person_immunization ADD CONSTRAINT fk_person_immunization_ref_immunization FOREIGN KEY ( ref_immunization_type_id ) REFERENCES ceds6sc.ref_immunization_type( ref_immunization_type_id );

COMMENT ON CONSTRAINT fk_person_immunization_ref_immunization ON ceds6sc.person_immunization IS '';

ALTER TABLE ceds6sc.person_military ADD CONSTRAINT fk_person_military_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_person_military_person ON ceds6sc.person_military IS '';

ALTER TABLE ceds6sc.person_military ADD CONSTRAINT fk_person_military_ref_military_active_student_indicator FOREIGN KEY ( ref_military_active_student_indicator_id ) REFERENCES ceds6sc.ref_military_active_student_indicator( ref_military_active_student_indicator_id );

COMMENT ON CONSTRAINT fk_person_military_ref_military_active_student_indicator ON ceds6sc.person_military IS '';

ALTER TABLE ceds6sc.person_military ADD CONSTRAINT fk_person_military_ref_military_branch FOREIGN KEY ( ref_military_branch_id ) REFERENCES ceds6sc.ref_military_branch( ref_military_branch_id );

COMMENT ON CONSTRAINT fk_person_military_ref_military_branch ON ceds6sc.person_military IS '';

ALTER TABLE ceds6sc.person_military ADD CONSTRAINT fk_person_military_ref_military_connected_student_indicator FOREIGN KEY ( ref_military_connected_student_indicator_id ) REFERENCES ceds6sc.ref_military_connected_student_indicator( ref_military_connected_student_indicator_id );

COMMENT ON CONSTRAINT fk_person_military_ref_military_connected_student_indicator ON ceds6sc.person_military IS '';

ALTER TABLE ceds6sc.person_military ADD CONSTRAINT fk_person_military_ref_military_veteran_student_indicator FOREIGN KEY ( ref_military_veteran_student_indicator_id ) REFERENCES ceds6sc.ref_military_veteran_student_indicator( ref_military_veteran_student_indicator_id );

COMMENT ON CONSTRAINT fk_person_military_ref_military_veteran_student_indicator ON ceds6sc.person_military IS '';

ALTER TABLE ceds6sc.person_program_participation ADD CONSTRAINT fk_person_program_participation_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_person_program_participation_organization_person_role ON ceds6sc.person_program_participation IS '';

ALTER TABLE ceds6sc.person_program_participation ADD CONSTRAINT fk_person_program_participation_ref_participation_type FOREIGN KEY ( ref_participation_type_id ) REFERENCES ceds6sc.ref_participation_type( ref_participation_type_id );

COMMENT ON CONSTRAINT fk_person_program_participation_ref_participation_type ON ceds6sc.person_program_participation IS '';

ALTER TABLE ceds6sc.person_program_participation ADD CONSTRAINT fk_person_program_participation_ref_program_exit_reason FOREIGN KEY ( ref_program_exit_reason_id ) REFERENCES ceds6sc.ref_program_exit_reason( ref_program_exit_reason_id );

COMMENT ON CONSTRAINT fk_person_program_participation_ref_program_exit_reason ON ceds6sc.person_program_participation IS '';

ALTER TABLE ceds6sc.person_relationship ADD CONSTRAINT fk_person_relationship_person_primary FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_person_relationship_person_primary ON ceds6sc.person_relationship IS '';

ALTER TABLE ceds6sc.person_relationship ADD CONSTRAINT fk_person_relationship_person_secondary FOREIGN KEY ( related_person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_person_relationship_person_secondary ON ceds6sc.person_relationship IS '';

ALTER TABLE ceds6sc.person_relationship ADD CONSTRAINT fk_person_relationship_ref_relationship FOREIGN KEY ( ref_person_relationship_id ) REFERENCES ceds6sc.ref_person_relationship( ref_person_relationship_id );

COMMENT ON CONSTRAINT fk_person_relationship_ref_relationship ON ceds6sc.person_relationship IS '';

ALTER TABLE ceds6sc.person_telephone ADD CONSTRAINT fk_person_phone_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_person_phone_person ON ceds6sc.person_telephone IS '';

ALTER TABLE ceds6sc.person_telephone ADD CONSTRAINT fk_person_phone_ref_person_telephone_type FOREIGN KEY ( ref_person_telephone_number_type_id ) REFERENCES ceds6sc.ref_person_telephone_number_type( ref_person_telephone_number_type_id );

COMMENT ON CONSTRAINT fk_person_phone_ref_person_telephone_type ON ceds6sc.person_telephone IS '';

ALTER TABLE ceds6sc.professional_development_requirement ADD CONSTRAINT fk_professional_development_requirement_competency_set FOREIGN KEY ( competency_set_id ) REFERENCES ceds6sc.competency_set( competency_set_id );

COMMENT ON CONSTRAINT fk_professional_development_requirement_competency_set ON ceds6sc.professional_development_requirement IS '';

ALTER TABLE ceds6sc.professional_development_requirement ADD CONSTRAINT fk_professional_development_requirement_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_professional_development_requirement_organization_person_role ON ceds6sc.professional_development_requirement IS '';

ALTER TABLE ceds6sc.professional_development_session_instructor ADD CONSTRAINT fk_pd_session_instructor_org_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_pd_session_instructor_org_person_role ON ceds6sc.professional_development_session_instructor IS '';

ALTER TABLE ceds6sc.professional_development_session_instructor ADD CONSTRAINT fk_pd_session_instructor_pd_session FOREIGN KEY ( professional_development_session_id ) REFERENCES ceds6sc.professional_development_session( professional_development_session_id );

COMMENT ON CONSTRAINT fk_pd_session_instructor_pd_session ON ceds6sc.professional_development_session_instructor IS '';

ALTER TABLE ceds6sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT fk_program_participation_ae_person_program_participation ON ceds6sc.program_participation_ae IS '';

ALTER TABLE ceds6sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_ref_ae_functioning_level_at_intake FOREIGN KEY ( ref_ae_functioning_level_at_intake_id ) REFERENCES ceds6sc.ref_ae_functioning_level_at_intake( ref_ae_functioning_level_at_intake_id );

COMMENT ON CONSTRAINT fk_program_participation_ae_ref_ae_functioning_level_at_intake ON ceds6sc.program_participation_ae IS '';

ALTER TABLE ceds6sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_ref_ae_functioning_level_at_posttest FOREIGN KEY ( ref_ae_functioning_level_at_posttest_id ) REFERENCES ceds6sc.ref_ae_functioning_level_at_posttest( ref_ae_functioning_level_at_posttest_id );

COMMENT ON CONSTRAINT fk_program_participation_ae_ref_ae_functioning_level_at_posttest ON ceds6sc.program_participation_ae IS '';

ALTER TABLE ceds6sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_ref_ae_instructional_program_type FOREIGN KEY ( ref_ae_instructional_program_type_id ) REFERENCES ceds6sc.ref_ae_instructional_program_type( ref_ae_instructional_program_type_id );

COMMENT ON CONSTRAINT fk_program_participation_ae_ref_ae_instructional_program_type ON ceds6sc.program_participation_ae IS '';

ALTER TABLE ceds6sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_ref_ae_postsecondary_transition_action FOREIGN KEY ( ref_ae_postsecondary_transition_action_id ) REFERENCES ceds6sc.ref_ae_postsecondary_transition_action( ref_ae_postsecondary_transition_action_id );

COMMENT ON CONSTRAINT fk_program_participation_ae_ref_ae_postsecondary_transition_action ON ceds6sc.program_participation_ae IS '';

ALTER TABLE ceds6sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ref_ae_special_program_type FOREIGN KEY ( ref_ae_special_program_type_id ) REFERENCES ceds6sc.ref_ae_special_program_type( ref_ae_special_program_type_id );

COMMENT ON CONSTRAINT fk_program_participation_ref_ae_special_program_type ON ceds6sc.program_participation_ae IS '';

ALTER TABLE ceds6sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_ref_correctional_education_facility_type FOREIGN KEY ( ref_correctional_education_facility_type_id ) REFERENCES ceds6sc.ref_correctional_education_facility_type( ref_correctional_education_facility_type_id );

COMMENT ON CONSTRAINT fk_program_participation_ae_ref_correctional_education_facility_type ON ceds6sc.program_participation_ae IS '';

ALTER TABLE ceds6sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_ref_goals_for_attending_adult_education FOREIGN KEY ( ref_goals_for_attending_adult_education_id ) REFERENCES ceds6sc.ref_goals_for_attending_adult_education( ref_goals_for_attending_adult_education_id );

COMMENT ON CONSTRAINT fk_program_participation_ae_ref_goals_for_attending_adult_education ON ceds6sc.program_participation_ae IS '';

ALTER TABLE ceds6sc.program_participation_ae ADD CONSTRAINT fk_program_participation_ae_ref_workbased_learning_opportunity_type FOREIGN KEY ( ref_workbased_learning_opportunity_type_id ) REFERENCES ceds6sc.ref_workbased_learning_opportunity_type( ref_workbased_learning_opportunity_type_id );

COMMENT ON CONSTRAINT fk_program_participation_ae_ref_workbased_learning_opportunity_type ON ceds6sc.program_participation_ae IS '';

ALTER TABLE ceds6sc.program_participation_food_service ADD CONSTRAINT fk_program_participation_food_srvc_person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT fk_program_participation_food_srvc_person_program_participation ON ceds6sc.program_participation_food_service IS '';

ALTER TABLE ceds6sc.program_participation_food_service ADD CONSTRAINT fk_program_participation_food_srvc_ref_school_food_service_program FOREIGN KEY ( ref_school_food_service_program_id ) REFERENCES ceds6sc.ref_school_food_service_program( ref_school_food_service_program_id );

COMMENT ON CONSTRAINT fk_program_participation_food_srvc_ref_school_food_service_program ON ceds6sc.program_participation_food_service IS '';

ALTER TABLE ceds6sc.program_participation_neglected ADD CONSTRAINT fk_program_participation_neglected_person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT fk_program_participation_neglected_person_program_participation ON ceds6sc.program_participation_neglected IS '';

ALTER TABLE ceds6sc.program_participation_neglected ADD CONSTRAINT fk_program_participation_neglected_ref_neglected_program_type FOREIGN KEY ( ref_neglected_program_type_id ) REFERENCES ceds6sc.ref_neglected_program_type( ref_neglected_program_type_id );

COMMENT ON CONSTRAINT fk_program_participation_neglected_ref_neglected_program_type ON ceds6sc.program_participation_neglected IS '';

ALTER TABLE ceds6sc.program_participation_teacher_prep ADD CONSTRAINT fk_prgm_participation_teacher_prep_person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT fk_prgm_participation_teacher_prep_person_program_participation ON ceds6sc.program_participation_teacher_prep IS '';

ALTER TABLE ceds6sc.program_participation_teacher_prep ADD CONSTRAINT fk_program_participation_teacher_prep_ref_alt_route_to_certification_or_licensure FOREIGN KEY ( ref_alt_route_to_certification_or_licensure_id ) REFERENCES ceds6sc.ref_alt_route_to_certification_or_licensure( ref_alt_route_to_certification_or_licensure_id );

COMMENT ON CONSTRAINT fk_program_participation_teacher_prep_ref_alt_route_to_certification_or_licensure ON ceds6sc.program_participation_teacher_prep IS '';

ALTER TABLE ceds6sc.program_participation_teacher_prep ADD CONSTRAINT fk_prgm_participation_teacher_prep_ref_crit_teach_shortage_candidate FOREIGN KEY ( ref_critical_teacher_shortage_candidate_id ) REFERENCES ceds6sc.ref_critical_teacher_shortage_candidate( ref_critical_teacher_shortage_candidate_id );

COMMENT ON CONSTRAINT fk_prgm_participation_teacher_prep_ref_crit_teach_shortage_candidate ON ceds6sc.program_participation_teacher_prep IS '';

ALTER TABLE ceds6sc.program_participation_teacher_prep ADD CONSTRAINT fk_program_participation_teacher_prep_ref_supervised_clinical_exper FOREIGN KEY ( ref_supervised_clinical_experience_id ) REFERENCES ceds6sc.ref_supervised_clinical_experience( ref_supervised_clinical_experience_id );

COMMENT ON CONSTRAINT fk_program_participation_teacher_prep_ref_supervised_clinical_exper ON ceds6sc.program_participation_teacher_prep IS '';

ALTER TABLE ceds6sc.program_participation_teacher_prep ADD CONSTRAINT fk_prgm_participation_teacher_prep_ref_teacher_prep_completer_status FOREIGN KEY ( ref_teacher_prep_completer_status_id ) REFERENCES ceds6sc.ref_teacher_prep_completer_status( ref_teacher_prep_completer_status_id );

COMMENT ON CONSTRAINT fk_prgm_participation_teacher_prep_ref_teacher_prep_completer_status ON ceds6sc.program_participation_teacher_prep IS '';

ALTER TABLE ceds6sc.program_participation_teacher_prep ADD CONSTRAINT fk_prgm_participation_teacher_prep_ref_teacher_prep_enroll_status FOREIGN KEY ( ref_teacher_prep_enrollment_status_id ) REFERENCES ceds6sc.ref_teacher_prep_enrollment_status( ref_teacher_prep_enrollment_status_id );

COMMENT ON CONSTRAINT fk_prgm_participation_teacher_prep_ref_teacher_prep_enroll_status ON ceds6sc.program_participation_teacher_prep IS '';

ALTER TABLE ceds6sc.program_participation_teacher_prep ADD CONSTRAINT fk_prgm_participation_teacher_prep_ref_teaching_credential_basis FOREIGN KEY ( ref_teaching_credential_basis_id ) REFERENCES ceds6sc.ref_teaching_credential_basis( ref_teaching_credential_basis_id );

COMMENT ON CONSTRAINT fk_prgm_participation_teacher_prep_ref_teaching_credential_basis ON ceds6sc.program_participation_teacher_prep IS '';

ALTER TABLE ceds6sc.program_participation_teacher_prep ADD CONSTRAINT fk_prgm_participation_teacher_prep_ref_teaching_credential_type FOREIGN KEY ( ref_teaching_credential_type_id ) REFERENCES ceds6sc.ref_teaching_credential_type( ref_teaching_credential_type_id );

COMMENT ON CONSTRAINT fk_prgm_participation_teacher_prep_ref_teaching_credential_type ON ceds6sc.program_participation_teacher_prep IS '';

ALTER TABLE ceds6sc.program_participation_title_iii_lep ADD CONSTRAINT fk_program_participation_title_iii__person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT fk_program_participation_title_iii__person_program_participation ON ceds6sc.program_participation_title_iii_lep IS '';

ALTER TABLE ceds6sc.program_participation_title_iii_lep ADD CONSTRAINT fk_program_participation_title_iii_lep_ref_title_iii_accountability FOREIGN KEY ( ref_title_iii_accountability_id ) REFERENCES ceds6sc.ref_title_iii_accountability( ref_title_iii_accountability_id );

COMMENT ON CONSTRAINT fk_program_participation_title_iii_lep_ref_title_iii_accountability ON ceds6sc.program_participation_title_iii_lep IS '';

ALTER TABLE ceds6sc.program_participation_title_iii_lep ADD CONSTRAINT fk_program_participation_title_iii_lep_ref_title_iii_lang_instr_prgm FOREIGN KEY ( ref_title_iii_language_instruction_program_type_id ) REFERENCES ceds6sc.ref_title_iii_language_instruction_program_type( ref_title_iii_language_instruction_program_type_id );

COMMENT ON CONSTRAINT fk_program_participation_title_iii_lep_ref_title_iii_lang_instr_prgm ON ceds6sc.program_participation_title_iii_lep IS '';

ALTER TABLE ceds6sc.ps_institution ADD CONSTRAINT fk_ps_institution_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT fk_ps_institution_organization ON ceds6sc.ps_institution IS '';

ALTER TABLE ceds6sc.ps_institution ADD CONSTRAINT fk_ps_institution_ref_admission_consideration_level FOREIGN KEY ( ref_admission_consideration_level_id ) REFERENCES ceds6sc.ref_admission_consideration_level( ref_admission_consideration_level_id );

COMMENT ON CONSTRAINT fk_ps_institution_ref_admission_consideration_level ON ceds6sc.ps_institution IS '';

ALTER TABLE ceds6sc.ps_institution ADD CONSTRAINT fk_ps_institution_ref_admission_consideration_type FOREIGN KEY ( ref_admission_consideration_type_id ) REFERENCES ceds6sc.ref_admission_consideration_type( ref_admission_consideration_type_id );

COMMENT ON CONSTRAINT fk_ps_institution_ref_admission_consideration_type ON ceds6sc.ps_institution IS '';

ALTER TABLE ceds6sc.ps_institution ADD CONSTRAINT fk_ps_institution_ref_classification FOREIGN KEY ( ref_carnegie_basic_classification_id ) REFERENCES ceds6sc.ref_carnegie_basic_classification( ref_carnegie_basic_classification_id );

COMMENT ON CONSTRAINT fk_ps_institution_ref_classification ON ceds6sc.ps_institution IS '';

ALTER TABLE ceds6sc.ps_institution ADD CONSTRAINT fk_ps_institution_ref_control_of_institution FOREIGN KEY ( ref_control_of_institution_id ) REFERENCES ceds6sc.ref_control_of_institution( ref_control_of_institution_id );

COMMENT ON CONSTRAINT fk_ps_institution_ref_control_of_institution ON ceds6sc.ps_institution IS '';

ALTER TABLE ceds6sc.ps_institution ADD CONSTRAINT fk_ps_institution_ref_level_of_institution FOREIGN KEY ( ref_level_of_institution_id ) REFERENCES ceds6sc.ref_level_of_institution( ref_level_of_institution_id );

COMMENT ON CONSTRAINT fk_ps_institution_ref_level_of_institution ON ceds6sc.ps_institution IS '';

ALTER TABLE ceds6sc.ps_institution ADD CONSTRAINT fk_ps_institution_ref_predominant_calendar_system FOREIGN KEY ( ref_predominant_calendar_system_id ) REFERENCES ceds6sc.ref_predominant_calendar_system( ref_predominant_calendar_system_id );

COMMENT ON CONSTRAINT fk_ps_institution_ref_predominant_calendar_system ON ceds6sc.ps_institution IS '';

ALTER TABLE ceds6sc.ps_institution ADD CONSTRAINT fk_ps_institution_ref_tenure_system FOREIGN KEY ( ref_tenure_system_id ) REFERENCES ceds6sc.ref_tenure_system( ref_tenure_system_id );

COMMENT ON CONSTRAINT fk_ps_institution_ref_tenure_system ON ceds6sc.ps_institution IS '';

ALTER TABLE ceds6sc.ps_program ADD CONSTRAINT fk_ps_program_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ps_program_organization ON ceds6sc.ps_program IS '';

ALTER TABLE ceds6sc.ps_program ADD CONSTRAINT fk_ps_program_ref_cip_code FOREIGN KEY ( ref_cip_code_id ) REFERENCES ceds6sc.ref_cip_code( ref_cip_code_id );

COMMENT ON CONSTRAINT fk_ps_program_ref_cip_code ON ceds6sc.ps_program IS '';

ALTER TABLE ceds6sc.ps_program ADD CONSTRAINT fk_ps_program_ref_cip_version FOREIGN KEY ( ref_cip_version_id ) REFERENCES ceds6sc.ref_cip_version( ref_cip_version_id );

COMMENT ON CONSTRAINT fk_ps_program_ref_cip_version ON ceds6sc.ps_program IS '';

ALTER TABLE ceds6sc.ps_program ADD CONSTRAINT fk_ps_program_ref_dqp_categories_of_learning FOREIGN KEY ( ref_dqp_categories_of_learning_id ) REFERENCES ceds6sc.ref_dqp_categories_of_learning( ref_dqp_categories_of_learning_id );

COMMENT ON CONSTRAINT fk_ps_program_ref_dqp_categories_of_learning ON ceds6sc.ps_program IS '';

ALTER TABLE ceds6sc.ps_program ADD CONSTRAINT fk_psprogram_ref_ps_exit_or_withdrawal_type FOREIGN KEY ( ref_ps_exit_or_withdrawal_type_id ) REFERENCES ceds6sc.ref_ps_exit_or_withdrawal_type( ref_ps_exit_or_withdrawal_type_id );

COMMENT ON CONSTRAINT fk_psprogram_ref_ps_exit_or_withdrawal_type ON ceds6sc.ps_program IS '';

ALTER TABLE ceds6sc.ps_program ADD CONSTRAINT fk_psprogram_ref_psprogram_level FOREIGN KEY ( ref_psprogram_level_id ) REFERENCES ceds6sc.ref_ps_program_level( ref_ps_program_level_id );

COMMENT ON CONSTRAINT fk_psprogram_ref_psprogram_level ON ceds6sc.ps_program IS '';

ALTER TABLE ceds6sc.ps_program ADD CONSTRAINT fk_ps_program_ref_program_length_hours_type FOREIGN KEY ( ref_program_length_hours_type_id ) REFERENCES ceds6sc.ref_program_length_hours_type( ref_program_length_hours_type_id );

COMMENT ON CONSTRAINT fk_ps_program_ref_program_length_hours_type ON ceds6sc.ps_program IS '';

ALTER TABLE ceds6sc.ps_program ADD CONSTRAINT fk_ps_program_ref_time_for_completion_units FOREIGN KEY ( ref_time_for_completion_units_id ) REFERENCES ceds6sc.ref_time_for_completion_units( ref_time_for_completion_units_id );

COMMENT ON CONSTRAINT fk_ps_program_ref_time_for_completion_units ON ceds6sc.ps_program IS '';

ALTER TABLE ceds6sc.ps_section_location ADD CONSTRAINT fk_ps_section_location_ps_section FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.ps_section( organization_id );

COMMENT ON CONSTRAINT fk_ps_section_location_ps_section ON ceds6sc.ps_section_location IS '';

ALTER TABLE ceds6sc.ps_section_location ADD CONSTRAINT fk_ps_section_location_ref_course_instruction_site_type FOREIGN KEY ( ref_course_instruction_site_type_id ) REFERENCES ceds6sc.ref_course_instruction_site_type( ref_course_instruction_site_type_id );

COMMENT ON CONSTRAINT fk_ps_section_location_ref_course_instruction_site_type ON ceds6sc.ps_section_location IS '';

ALTER TABLE ceds6sc.ps_student_academic_award ADD CONSTRAINT fk_ps_student_academic_award_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_ps_student_academic_award_organization_person_role ON ceds6sc.ps_student_academic_award IS '';

ALTER TABLE ceds6sc.ps_student_academic_award ADD CONSTRAINT fk_ps_academic_award_ref_academic_award_level FOREIGN KEY ( ref_academic_award_level_id ) REFERENCES ceds6sc.ref_academic_award_level( ref_academic_award_level_id );

COMMENT ON CONSTRAINT fk_ps_academic_award_ref_academic_award_level ON ceds6sc.ps_student_academic_award IS '';

ALTER TABLE ceds6sc.ps_student_admission_test ADD CONSTRAINT fk_ps_admission_test_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_ps_admission_test_organization_person_role ON ceds6sc.ps_student_admission_test IS '';

ALTER TABLE ceds6sc.ps_student_admission_test ADD CONSTRAINT fk_ps_admission_test_ref_standardized_admission_test FOREIGN KEY ( ref_standardized_admission_test_id ) REFERENCES ceds6sc.ref_standardized_admission_test( ref_standardized_admission_test_id );

COMMENT ON CONSTRAINT fk_ps_admission_test_ref_standardized_admission_test ON ceds6sc.ps_student_admission_test IS '';

ALTER TABLE ceds6sc.ps_student_cohort ADD CONSTRAINT fk_ps_student_cohort_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_ps_student_cohort_organization_person_role ON ceds6sc.ps_student_cohort IS '';

ALTER TABLE ceds6sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_ps_student_demographic_organization_person_role ON ceds6sc.ps_student_demographic IS '';

ALTER TABLE ceds6sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_campus_residency_type FOREIGN KEY ( ref_campus_residency_type_id ) REFERENCES ceds6sc.ref_campus_residency_type( ref_campus_residency_type_id );

COMMENT ON CONSTRAINT fk_ps_student_demographic_ref_campus_residency_type ON ceds6sc.ps_student_demographic IS '';

ALTER TABLE ceds6sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_cohort_exclusion FOREIGN KEY ( ref_cohort_exclusion_id ) REFERENCES ceds6sc.ref_cohort_exclusion( ref_cohort_exclusion_id );

COMMENT ON CONSTRAINT fk_ps_student_demographic_ref_cohort_exclusion ON ceds6sc.ps_student_demographic IS '';

ALTER TABLE ceds6sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_dependency_status FOREIGN KEY ( ref_dependency_status_id ) REFERENCES ceds6sc.ref_dependency_status( ref_dependency_status_id );

COMMENT ON CONSTRAINT fk_ps_student_demographic_ref_dependency_status ON ceds6sc.ps_student_demographic IS '';

ALTER TABLE ceds6sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_education_level FOREIGN KEY ( ref_paternal_education_level_id ) REFERENCES ceds6sc.ref_education_level( ref_education_level_id );

COMMENT ON CONSTRAINT fk_ps_student_demographic_ref_education_level ON ceds6sc.ps_student_demographic IS '';

ALTER TABLE ceds6sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_education_level_1 FOREIGN KEY ( ref_maternal_education_level_id ) REFERENCES ceds6sc.ref_education_level( ref_education_level_id );

COMMENT ON CONSTRAINT fk_ps_student_demographic_ref_education_level_1 ON ceds6sc.ps_student_demographic IS '';

ALTER TABLE ceds6sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_postsecondary_leptype FOREIGN KEY ( ref_ps_lep_type_id ) REFERENCES ceds6sc.ref_ps_lep_type( ref_ps_lep_type_id );

COMMENT ON CONSTRAINT fk_ps_student_demographic_ref_postsecondary_leptype ON ceds6sc.ps_student_demographic IS '';

ALTER TABLE ceds6sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_tuition_residency_type FOREIGN KEY ( ref_tuition_residency_type_id ) REFERENCES ceds6sc.ref_tuition_residency_type( ref_tuition_residency_type_id );

COMMENT ON CONSTRAINT fk_ps_student_demographic_ref_tuition_residency_type ON ceds6sc.ps_student_demographic IS '';

ALTER TABLE ceds6sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_ps_student_enrollment_organization_person_role ON ceds6sc.ps_student_enrollment IS '';

ALTER TABLE ceds6sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_developmental_education_referral_status FOREIGN KEY ( ref_developmental_education_referral_status_id ) REFERENCES ceds6sc.ref_developmental_education_referral_status( ref_developmental_education_referral_status_id );

COMMENT ON CONSTRAINT fk_ps_student_enrollment_ref_developmental_education_referral_status ON ceds6sc.ps_student_enrollment IS '';

ALTER TABLE ceds6sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_developmental_education_type FOREIGN KEY ( ref_developmental_education_type_id ) REFERENCES ceds6sc.ref_developmental_education_type( ref_developmental_education_type_id );

COMMENT ON CONSTRAINT fk_ps_student_enrollment_ref_developmental_education_type ON ceds6sc.ps_student_enrollment IS '';

ALTER TABLE ceds6sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_distance_education_course_enr FOREIGN KEY ( ref_distance_education_course_enrollment_id ) REFERENCES ceds6sc.ref_distance_education_course_enrollment( ref_distance_education_course_enrollment_id );

COMMENT ON CONSTRAINT fk_ps_student_enrollment_ref_distance_education_course_enr ON ceds6sc.ps_student_enrollment IS '';

ALTER TABLE ceds6sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_doctoral_exams_required_code FOREIGN KEY ( ref_doctoral_exams_required_code_id ) REFERENCES ceds6sc.ref_doctoral_exams_required_code( ref_doctoral_exams_required_code_id );

COMMENT ON CONSTRAINT fk_ps_student_enrollment_ref_doctoral_exams_required_code ON ceds6sc.ps_student_enrollment IS '';

ALTER TABLE ceds6sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_graduate_or_doctoral_exam_results_status FOREIGN KEY ( ref_graduate_or_doctoral_exam_results_status_id ) REFERENCES ceds6sc.ref_graduate_or_doctoral_exam_results_status( ref_graduate_or_doctoral_exam_results_status_id );

COMMENT ON CONSTRAINT fk_ps_student_enrollment_ref_graduate_or_doctoral_exam_results_status ON ceds6sc.ps_student_enrollment IS '';

ALTER TABLE ceds6sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_instructional_activity_hours FOREIGN KEY ( ref_instructional_activity_hours_id ) REFERENCES ceds6sc.ref_instructional_activity_hours( ref_instructional_activity_hours_id );

COMMENT ON CONSTRAINT fk_ps_student_enrollment_ref_instructional_activity_hours ON ceds6sc.ps_student_enrollment IS '';

ALTER TABLE ceds6sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_ps_enrollment_award_type FOREIGN KEY ( ref_ps_enrollment_award_type_id ) REFERENCES ceds6sc.ref_ps_enrollment_award_type( ref_ps_enrollment_award_type_id );

COMMENT ON CONSTRAINT fk_ps_student_enrollment_ref_ps_enrollment_award_type ON ceds6sc.ps_student_enrollment IS '';

ALTER TABLE ceds6sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_ps_enrollment_status FOREIGN KEY ( ref_ps_enrollment_status_id ) REFERENCES ceds6sc.ref_ps_enrollment_status( ref_ps_enrollment_status_id );

COMMENT ON CONSTRAINT fk_ps_student_enrollment_ref_ps_enrollment_status ON ceds6sc.ps_student_enrollment IS '';

ALTER TABLE ceds6sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_ps_enrollment_type FOREIGN KEY ( ref_ps_enrollment_type_id ) REFERENCES ceds6sc.ref_ps_enrollment_type( ref_ps_enrollment_type_id );

COMMENT ON CONSTRAINT fk_ps_student_enrollment_ref_ps_enrollment_type ON ceds6sc.ps_student_enrollment IS '';

ALTER TABLE ceds6sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_ps_student_level FOREIGN KEY ( ref_ps_student_level_id ) REFERENCES ceds6sc.ref_ps_student_level( ref_ps_student_level_id );

COMMENT ON CONSTRAINT fk_ps_student_enrollment_ref_ps_student_level ON ceds6sc.ps_student_enrollment IS '';

ALTER TABLE ceds6sc.ps_student_enrollment ADD CONSTRAINT fk_ps_student_enrollment_ref_transfer_ready FOREIGN KEY ( ref_transfer_ready_id ) REFERENCES ceds6sc.ref_transfer_ready( ref_transfer_ready_id );

COMMENT ON CONSTRAINT fk_ps_student_enrollment_ref_transfer_ready ON ceds6sc.ps_student_enrollment IS '';

ALTER TABLE ceds6sc.ps_student_section ADD CONSTRAINT fk_ps_student_section_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_ps_student_section_organization_person_role ON ceds6sc.ps_student_section IS '';

ALTER TABLE ceds6sc.ps_student_section ADD CONSTRAINT fk_ps_student_section_ref_course_academic_grade_status_code FOREIGN KEY ( ref_course_academic_grade_status_code_id ) REFERENCES ceds6sc.ref_course_academic_grade_status_code( ref_course_academic_grade_status_code_id );

COMMENT ON CONSTRAINT fk_ps_student_section_ref_course_academic_grade_status_code ON ceds6sc.ps_student_section IS '';

ALTER TABLE ceds6sc.ps_student_section ADD CONSTRAINT fk_ps_student_section_ref_course_repeat_code FOREIGN KEY ( ref_course_repeat_code_id ) REFERENCES ceds6sc.ref_course_repeat_code( ref_course_repeat_code_id );

COMMENT ON CONSTRAINT fk_ps_student_section_ref_course_repeat_code ON ceds6sc.ps_student_section IS '';

ALTER TABLE ceds6sc.ps_student_program ADD CONSTRAINT fk_ps_student_program_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_ps_student_program_organization_person_role ON ceds6sc.ps_student_program IS '';

ALTER TABLE ceds6sc.ps_student_program ADD CONSTRAINT fk_ps_student_program_ps_program FOREIGN KEY ( ps_program_id ) REFERENCES ceds6sc.ps_program( ps_program_id );

COMMENT ON CONSTRAINT fk_ps_student_program_ps_program ON ceds6sc.ps_student_program IS '';

ALTER TABLE ceds6sc.ps_student_program ADD CONSTRAINT fk_ps_student_enrollment_cip_ref_cip_use FOREIGN KEY ( ref_cip_use_id ) REFERENCES ceds6sc.ref_cip_use( ref_cip_use_id );

COMMENT ON CONSTRAINT fk_ps_student_enrollment_cip_ref_cip_use ON ceds6sc.ps_student_program IS '';

ALTER TABLE ceds6sc.ps_student_program ADD CONSTRAINT fk_ps_student_program_ref_transfer_out_indicator FOREIGN KEY ( ref_transfer_out_indicator_id ) REFERENCES ceds6sc.ref_transfer_out_indicator( ref_transfer_out_indicator_id );

COMMENT ON CONSTRAINT fk_ps_student_program_ref_transfer_out_indicator ON ceds6sc.ps_student_program IS '';

ALTER TABLE ceds6sc.ps_student_program ADD CONSTRAINT fk_ps_student_program_ref_workbased_learning_opportunity_type FOREIGN KEY ( ref_workbased_learning_opportunity_type_id ) REFERENCES ceds6sc.ref_workbased_learning_opportunity_type( ref_workbased_learning_opportunity_type_id );

COMMENT ON CONSTRAINT fk_ps_student_program_ref_workbased_learning_opportunity_type ON ceds6sc.ps_student_program IS '';

ALTER TABLE ceds6sc.ref_absent_attendance_category ADD CONSTRAINT fk_ref_absent_attendance_category_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_absent_attendance_category_organization ON ceds6sc.ref_absent_attendance_category IS '';

ALTER TABLE ceds6sc.ref_academic_honor_type ADD CONSTRAINT fk_ref_academic_honor_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_academic_honor_type_organization ON ceds6sc.ref_academic_honor_type IS '';

ALTER TABLE ceds6sc.ref_academic_subject ADD CONSTRAINT fk_ref_academic_subject_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_academic_subject_organization ON ceds6sc.ref_academic_subject IS '';

ALTER TABLE ceds6sc.ref_accommodations_needed_type ADD CONSTRAINT fk_ref_accommodations_needed_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_accommodations_needed_type_organization ON ceds6sc.ref_accommodations_needed_type IS '';

ALTER TABLE ceds6sc.ref_activity_recognition_type ADD CONSTRAINT fk_ref_activity_recognition_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_activity_recognition_type_organization ON ceds6sc.ref_activity_recognition_type IS '';

ALTER TABLE ceds6sc.ref_additional_credit_type ADD CONSTRAINT fk_ref_additional_credit_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_additional_credit_type_organization ON ceds6sc.ref_additional_credit_type IS '';

ALTER TABLE ceds6sc.ref_administrative_funding_control ADD CONSTRAINT fk_ref_admin_funding_control_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_admin_funding_control_organization ON ceds6sc.ref_administrative_funding_control IS '';

ALTER TABLE ceds6sc.ref_admission_consideration_type ADD CONSTRAINT fk_ref_admission_consideration_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_admission_consideration_type_organization ON ceds6sc.ref_admission_consideration_type IS '';

ALTER TABLE ceds6sc.ref_advanced_placement_course_code ADD CONSTRAINT fk_ref_advanced_placement_course_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_advanced_placement_course_code_organization ON ceds6sc.ref_advanced_placement_course_code IS '';

ALTER TABLE ceds6sc.ref_ae_functioning_level_at_intake ADD CONSTRAINT fk_ref_aefunctioning_level_at_intake_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_aefunctioning_level_at_intake_organization ON ceds6sc.ref_ae_functioning_level_at_intake IS '';

ALTER TABLE ceds6sc.ref_ae_instructional_program_type ADD CONSTRAINT fk_ref_aeinstructional_program_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_aeinstructional_program_type_organization ON ceds6sc.ref_ae_instructional_program_type IS '';

ALTER TABLE ceds6sc.ref_ae_special_program_type ADD CONSTRAINT fk_ref_ae_special_program_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_ae_special_program_type_organization ON ceds6sc.ref_ae_special_program_type IS '';

ALTER TABLE ceds6sc.ref_ae_staff_employment_status ADD CONSTRAINT fk_ref_ae_staff_employment_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_ae_staff_employment_status_organization ON ceds6sc.ref_ae_staff_employment_status IS '';

ALTER TABLE ceds6sc.ref_allergy_type ADD CONSTRAINT fk_ref_allergy_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_allergy_type_organization ON ceds6sc.ref_allergy_type IS '';

ALTER TABLE ceds6sc.ref_alternate_fund_uses ADD CONSTRAINT fk_ref_alternate_fund_uses_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_alternate_fund_uses_organization ON ceds6sc.ref_alternate_fund_uses IS '';

ALTER TABLE ceds6sc.ref_amao_attainment_status ADD CONSTRAINT fk_ref_amao_attainment_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_amao_attainment_status_organization ON ceds6sc.ref_amao_attainment_status IS '';

ALTER TABLE ceds6sc.ref_assessment_asset_identifier_type ADD CONSTRAINT fk_ref_assessment_asset_identifier_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_asset_identifier_type_organization ON ceds6sc.ref_assessment_asset_identifier_type IS '';

ALTER TABLE ceds6sc.ref_assessment_eldevelopmental_domain ADD CONSTRAINT fk_ref_assessment_eldevelopmental_domain_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_eldevelopmental_domain_organization ON ceds6sc.ref_assessment_eldevelopmental_domain IS '';

ALTER TABLE ceds6sc.ref_assessment_item_characteristic_type ADD CONSTRAINT fk_ref_assess_item_char_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assess_item_char_type_organization ON ceds6sc.ref_assessment_item_characteristic_type IS '';

ALTER TABLE ceds6sc.ref_assessment_item_response_status ADD CONSTRAINT fk_ref_assess_item_response_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assess_item_response_status_organization ON ceds6sc.ref_assessment_item_response_status IS '';

ALTER TABLE ceds6sc.ref_assessment_need_alternative_representation_type ADD CONSTRAINT fk_ref_assessment_need_alternative_representation_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_need_alternative_representation_type_organization ON ceds6sc.ref_assessment_need_alternative_representation_type IS '';

ALTER TABLE ceds6sc.ref_assessment_need_braille_mark_type ADD CONSTRAINT fk_ref_assessment_need_braille_mark_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_need_braille_mark_type_organization ON ceds6sc.ref_assessment_need_braille_mark_type IS '';

ALTER TABLE ceds6sc.ref_assessment_need_hazard_type ADD CONSTRAINT fk_ref_assessment_need_hazard_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_need_hazard_type_organization ON ceds6sc.ref_assessment_need_hazard_type IS '';

ALTER TABLE ceds6sc.ref_assessment_need_language_learner_type ADD CONSTRAINT fk_ref_assessment_need_language_learner_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_need_language_learner_type_organization ON ceds6sc.ref_assessment_need_language_learner_type IS '';

ALTER TABLE ceds6sc.ref_assessment_need_number_of_braille_dots ADD CONSTRAINT fk_ref_assessment_need_number_of_braille_dots_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_need_number_of_braille_dots_organization ON ceds6sc.ref_assessment_need_number_of_braille_dots IS '';

ALTER TABLE ceds6sc.ref_assessment_need_spoken_source_preference_type ADD CONSTRAINT fk_ref_assessment_need_spoken_source_preference_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_need_spoken_source_preference_type_organization ON ceds6sc.ref_assessment_need_spoken_source_preference_type IS '';

ALTER TABLE ceds6sc.ref_assessment_need_usage_type ADD CONSTRAINT fk_ref_assessment_need_usage_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_need_usage_type_organization ON ceds6sc.ref_assessment_need_usage_type IS '';

ALTER TABLE ceds6sc.ref_assessment_participation_indicator ADD CONSTRAINT fk_ref_assessment_participation_indicator_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_participation_indicator_organization ON ceds6sc.ref_assessment_participation_indicator IS '';

ALTER TABLE ceds6sc.ref_assessment_pretest_outcome ADD CONSTRAINT fk_ref_assessment_subtest_result_pretest_outcome_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_subtest_result_pretest_outcome_organization ON ceds6sc.ref_assessment_pretest_outcome IS '';

ALTER TABLE ceds6sc.ref_assessment_reason_not_completing ADD CONSTRAINT fk_ref_assessment_reason_not_completing_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_reason_not_completing_organization ON ceds6sc.ref_assessment_reason_not_completing IS '';

ALTER TABLE ceds6sc.ref_assessment_registration_completion_status ADD CONSTRAINT fk_ref_assessment_registration_completion_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_registration_completion_status_organization ON ceds6sc.ref_assessment_registration_completion_status IS '';

ALTER TABLE ceds6sc.ref_assessment_result_data_type ADD CONSTRAINT fk_ref_assessment_result_data_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_result_data_type_organization ON ceds6sc.ref_assessment_result_data_type IS '';

ALTER TABLE ceds6sc.ref_assessment_session_special_circumstance_type ADD CONSTRAINT fk_ref_assessment_session_special_circumstance_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_session_special_circumstance_type_organization ON ceds6sc.ref_assessment_session_special_circumstance_type IS '';

ALTER TABLE ceds6sc.ref_assessment_session_type ADD CONSTRAINT fk_ref_assessment_session_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_session_type_organization ON ceds6sc.ref_assessment_session_type IS '';

ALTER TABLE ceds6sc.ref_assessment_type ADD CONSTRAINT fk_ref_assessment_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_type_organization ON ceds6sc.ref_assessment_type IS '';

ALTER TABLE ceds6sc.ref_attendance_event_type ADD CONSTRAINT fk_ref_attendance_event_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_attendance_event_type_organization ON ceds6sc.ref_attendance_event_type IS '';

ALTER TABLE ceds6sc.ref_ayp_status ADD CONSTRAINT fk_ref_aypstatus_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_aypstatus_organization ON ceds6sc.ref_ayp_status IS '';

ALTER TABLE ceds6sc.ref_billable_basis_type ADD CONSTRAINT fk_ref_billable_basis_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_billable_basis_type_organization ON ceds6sc.ref_billable_basis_type IS '';

ALTER TABLE ceds6sc.ref_blooms_taxonomy_domain ADD CONSTRAINT fk_ref_blooms_taxonomy_domain_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_blooms_taxonomy_domain_organization ON ceds6sc.ref_blooms_taxonomy_domain IS '';

ALTER TABLE ceds6sc.ref_calendar_event_type ADD CONSTRAINT fk_ref_calendar_event_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_calendar_event_type_organization ON ceds6sc.ref_calendar_event_type IS '';

ALTER TABLE ceds6sc.ref_career_cluster ADD CONSTRAINT fk_ref_career_cluster_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_career_cluster_organization ON ceds6sc.ref_career_cluster IS '';

ALTER TABLE ceds6sc.ref_carnegie_basic_classification ADD CONSTRAINT fk_ref_carnegie_basic_classification_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_carnegie_basic_classification_organization ON ceds6sc.ref_carnegie_basic_classification IS '';

ALTER TABLE ceds6sc.ref_charter_school_management_organization_type ADD CONSTRAINT fk_ref_charter_school_management_organization_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_charter_school_management_organization_type_organization ON ceds6sc.ref_charter_school_management_organization_type IS '';

ALTER TABLE ceds6sc.ref_child_development_associate_type ADD CONSTRAINT fk_ref_child_dev_associate_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_child_dev_associate_type_organization ON ceds6sc.ref_child_development_associate_type IS '';

ALTER TABLE ceds6sc.ref_child_outcomes_summary_rating ADD CONSTRAINT fk_ref_child_outcomes_summary_rating_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_child_outcomes_summary_rating_organization ON ceds6sc.ref_child_outcomes_summary_rating IS '';

ALTER TABLE ceds6sc.ref_cip_use ADD CONSTRAINT fk_ref_cip_use_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_cip_use_organization ON ceds6sc.ref_cip_use IS '';

ALTER TABLE ceds6sc.ref_classroom_position_type ADD CONSTRAINT fk_ref_classroom_position_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_classroom_position_type_organization ON ceds6sc.ref_classroom_position_type IS '';

ALTER TABLE ceds6sc.ref_communication_method ADD CONSTRAINT fk_ref_communication_method_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_communication_method_organization ON ceds6sc.ref_communication_method IS '';

ALTER TABLE ceds6sc.ref_competency_set_completion_criteria ADD CONSTRAINT fk_ref_competency_set_completion_criteria_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_competency_set_completion_criteria_organization ON ceds6sc.ref_competency_set_completion_criteria IS '';

ALTER TABLE ceds6sc.ref_continuation_of_services ADD CONSTRAINT fk_ref_continuation_of_services_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_continuation_of_services_organization ON ceds6sc.ref_continuation_of_services IS '';

ALTER TABLE ceds6sc.ref_core_knowledge_area ADD CONSTRAINT fk_ref_core_knowledge_area_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_core_knowledge_area_organization ON ceds6sc.ref_core_knowledge_area IS '';

ALTER TABLE ceds6sc.ref_corrective_action_type ADD CONSTRAINT fk_ref_corrective_action_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_corrective_action_type_organization ON ceds6sc.ref_corrective_action_type IS '';

ALTER TABLE ceds6sc.ref_county ADD CONSTRAINT fk_ref_county_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_county_org ON ceds6sc.ref_county IS '';

ALTER TABLE ceds6sc.ref_course_applicable_education_level ADD CONSTRAINT fk_ref_course_applicable_education_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_course_applicable_education_level_organization ON ceds6sc.ref_course_applicable_education_level IS '';

ALTER TABLE ceds6sc.ref_course_credit_level_type ADD CONSTRAINT fk_ref_course_credit_level_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_course_credit_level_type_organization ON ceds6sc.ref_course_credit_level_type IS '';

ALTER TABLE ceds6sc.ref_course_gpa_applicability ADD CONSTRAINT fk_ref_course_gpa_applicability_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_course_gpa_applicability_organization ON ceds6sc.ref_course_gpa_applicability IS '';

ALTER TABLE ceds6sc.ref_course_instruction_method ADD CONSTRAINT fk_ref_course_instruction_method_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_course_instruction_method_organization ON ceds6sc.ref_course_instruction_method IS '';

ALTER TABLE ceds6sc.ref_course_interaction_mode ADD CONSTRAINT fk_ref_course_interaction_mode_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_course_interaction_mode_organization ON ceds6sc.ref_course_interaction_mode IS '';

ALTER TABLE ceds6sc.ref_course_level_type ADD CONSTRAINT fk_ref_course_level_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_course_level_type_organization ON ceds6sc.ref_course_level_type IS '';

ALTER TABLE ceds6sc.ref_course_section_assessment_reporting_method ADD CONSTRAINT fk_ref_course_section_assessment_reporting_method_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_course_section_assessment_reporting_method_organization ON ceds6sc.ref_course_section_assessment_reporting_method IS '';

ALTER TABLE ceds6sc.ref_course_section_enrollment_status_type ADD CONSTRAINT fk_ref_course_section_enrollment_status_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_course_section_enrollment_status_type_organization ON ceds6sc.ref_course_section_enrollment_status_type IS '';

ALTER TABLE ceds6sc.ref_course_section_exit_type ADD CONSTRAINT fk_ref_course_section_exit_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_course_section_exit_type_organization ON ceds6sc.ref_course_section_exit_type IS '';

ALTER TABLE ceds6sc.ref_credit_hours_applied_other_program ADD CONSTRAINT fk_ref_credit_hours_applied_other_program_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_credit_hours_applied_other_program_organization ON ceds6sc.ref_credit_hours_applied_other_program IS '';

ALTER TABLE ceds6sc.ref_critical_teacher_shortage_candidate ADD CONSTRAINT fk_ref_crit_teach_shortage_candidate_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_crit_teach_shortage_candidate_organization ON ceds6sc.ref_critical_teacher_shortage_candidate IS '';

ALTER TABLE ceds6sc.ref_cte_non_traditional_gender_status ADD CONSTRAINT fk_ref_cte_non_traditional_gender_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_cte_non_traditional_gender_status_organization ON ceds6sc.ref_cte_non_traditional_gender_status IS '';

ALTER TABLE ceds6sc.ref_dental_insurance_coverage_type ADD CONSTRAINT fk_ref_dental_insurance_coverage_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_dental_insurance_coverage_type_organization ON ceds6sc.ref_dental_insurance_coverage_type IS '';

ALTER TABLE ceds6sc.ref_dependency_status ADD CONSTRAINT fk_ref_dependency_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_dependency_status_organization ON ceds6sc.ref_dependency_status IS '';

ALTER TABLE ceds6sc.ref_developmental_education_type ADD CONSTRAINT fk_ref_developmental_education_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_developmental_education_type_organization ON ceds6sc.ref_developmental_education_type IS '';

ALTER TABLE ceds6sc.ref_directory_information_block_status ADD CONSTRAINT fk_ref_directory_information_block_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_directory_information_block_status_organization ON ceds6sc.ref_directory_information_block_status IS '';

ALTER TABLE ceds6sc.ref_disability_condition_type ADD CONSTRAINT fk_ref_disability_condition_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_disability_condition_type_organization ON ceds6sc.ref_disability_condition_type IS '';

ALTER TABLE ceds6sc.ref_disability_type ADD CONSTRAINT fk_ref_disability_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_disability_organization ON ceds6sc.ref_disability_type IS '';

ALTER TABLE ceds6sc.ref_discipline_length_difference_reason ADD CONSTRAINT fk_ref_discipline_length_difference_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_discipline_length_difference_organization ON ceds6sc.ref_discipline_length_difference_reason IS '';

ALTER TABLE ceds6sc.ref_discipline_method_of_cwd ADD CONSTRAINT fk_ref_discipline_method_of_cwd_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_discipline_method_of_cwd_organization ON ceds6sc.ref_discipline_method_of_cwd IS '';

ALTER TABLE ceds6sc.ref_distance_education_course_enrollment ADD CONSTRAINT fk_ref_distance_education_course_enr_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_distance_education_course_enr_organization ON ceds6sc.ref_distance_education_course_enrollment IS '';

ALTER TABLE ceds6sc.ref_dqp_categories_of_learning ADD CONSTRAINT fk_ref_dqp_categories_of_learning_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_dqp_categories_of_learning_organization ON ceds6sc.ref_dqp_categories_of_learning IS '';

ALTER TABLE ceds6sc.ref_early_childhood_program_enrollment_type ADD CONSTRAINT fk_ref_early_childhood_program_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_early_childhood_program_type_organization ON ceds6sc.ref_early_childhood_program_enrollment_type IS '';

ALTER TABLE ceds6sc.ref_education_level ADD CONSTRAINT fk_ref_education_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_education_level_organization ON ceds6sc.ref_education_level IS '';

ALTER TABLE ceds6sc.ref_education_level ADD CONSTRAINT fk_ref_education_level_ref_education_level_type FOREIGN KEY ( ref_education_level_type_id ) REFERENCES ceds6sc.ref_education_level_type( ref_education_level_type_id );

COMMENT ON CONSTRAINT fk_ref_education_level_ref_education_level_type ON ceds6sc.ref_education_level IS '';

ALTER TABLE ceds6sc.ref_education_verification_method ADD CONSTRAINT fk_ref_education_verification_method_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_education_verification_method_organization ON ceds6sc.ref_education_verification_method IS '';

ALTER TABLE ceds6sc.ref_el_education_staff_classification ADD CONSTRAINT fk_ref_el_education_staff_classification_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_el_education_staff_classification_organization ON ceds6sc.ref_el_education_staff_classification IS '';

ALTER TABLE ceds6sc.ref_el_facility_licensing_status ADD CONSTRAINT fk_ref_el_facility_licensing_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_el_facility_licensing_status_organization ON ceds6sc.ref_el_facility_licensing_status IS '';

ALTER TABLE ceds6sc.ref_el_group_size_standard_met ADD CONSTRAINT fk_ref_el_group_size_standard_met_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_el_group_size_standard_met_organization ON ceds6sc.ref_el_group_size_standard_met IS '';

ALTER TABLE ceds6sc.ref_lea_type ADD CONSTRAINT fk_ref_lea_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_lea_type_organization ON ceds6sc.ref_lea_type IS '';

ALTER TABLE ceds6sc.ref_learning_standard_item_testability_type ADD CONSTRAINT fk_ref_learning_standard_item_testability_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_learning_standard_item_testability_type_organization ON ceds6sc.ref_learning_standard_item_testability_type IS '';

ALTER TABLE ceds6sc.ref_level_of_institution ADD CONSTRAINT fk_ref_level_of_institution_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_level_of_institution_organization ON ceds6sc.ref_level_of_institution IS '';

ALTER TABLE ceds6sc.ref_literacy_assessment ADD CONSTRAINT fk_ref_literacy_assessment_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_literacy_assessment_organization ON ceds6sc.ref_literacy_assessment IS '';

ALTER TABLE ceds6sc.ref_medical_alert_indicator ADD CONSTRAINT fk_ref_med_alert_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_med_alert_org ON ceds6sc.ref_medical_alert_indicator IS '';

ALTER TABLE ceds6sc.ref_mep_project_based ADD CONSTRAINT fk_ref_mepproject_based_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_mepproject_based_organization ON ceds6sc.ref_mep_project_based IS '';

ALTER TABLE ceds6sc.ref_mep_service_type ADD CONSTRAINT fk_ref_mepservice_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_mepservice_type_organization ON ceds6sc.ref_mep_service_type IS '';

ALTER TABLE ceds6sc.ref_mep_staff_category ADD CONSTRAINT fk_ref_mep_staff_category_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_mep_staff_category_organization ON ceds6sc.ref_mep_staff_category IS '';

ALTER TABLE ceds6sc.ref_military_active_student_indicator ADD CONSTRAINT fk_ref_military_active_student_indicator_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_military_active_student_indicator_organization ON ceds6sc.ref_military_active_student_indicator IS '';

ALTER TABLE ceds6sc.ref_military_connected_student_indicator ADD CONSTRAINT fk_ref_military_connected_student_indicator_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_military_connected_student_indicator_organization ON ceds6sc.ref_military_connected_student_indicator IS '';

ALTER TABLE ceds6sc.ref_multiple_intelligence_type ADD CONSTRAINT fk_ref_multiple_intelligence_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_multiple_intelligence_type_organization ON ceds6sc.ref_multiple_intelligence_type IS '';

ALTER TABLE ceds6sc.ref_naep_aspects_of_reading ADD CONSTRAINT fk_ref_naepaspects_of_reading_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_naepaspects_of_reading_organization ON ceds6sc.ref_naep_aspects_of_reading IS '';

ALTER TABLE ceds6sc.ref_need_determination_method ADD CONSTRAINT fk_ref_need_determination_method_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_need_determination_method_organization ON ceds6sc.ref_need_determination_method IS '';

ALTER TABLE ceds6sc.ref_non_promotion_reason ADD CONSTRAINT fk_ref_non_promotion_reason_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_non_promotion_reason_organization ON ceds6sc.ref_non_promotion_reason IS '';

ALTER TABLE ceds6sc.ref_operational_status ADD CONSTRAINT fk_ref_operational_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_operational_status_organization ON ceds6sc.ref_operational_status IS '';

ALTER TABLE ceds6sc.ref_operational_status ADD CONSTRAINT fk_ref_operational_status_ref_operational_status_type FOREIGN KEY ( ref_operational_status_type_id ) REFERENCES ceds6sc.ref_operational_status_type( ref_operational_status_type_id );

COMMENT ON CONSTRAINT fk_ref_operational_status_ref_operational_status_type ON ceds6sc.ref_operational_status IS '';

ALTER TABLE ceds6sc.ref_organization_element_type ADD CONSTRAINT fk_ref_organization_element_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_organization_element_type_organization ON ceds6sc.ref_organization_element_type IS '';

ALTER TABLE ceds6sc.ref_organization_identifier_type ADD CONSTRAINT fk_ref_organization_identifier_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_organization_identifier_type_organization ON ceds6sc.ref_organization_identifier_type IS '';

ALTER TABLE ceds6sc.ref_organization_location_type ADD CONSTRAINT fk_ref_organization_loc_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_organization_loc_org ON ceds6sc.ref_organization_location_type IS '';

ALTER TABLE ceds6sc.ref_organization_relationship ADD CONSTRAINT fk_ref_organization_relationship_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_organization_relationship_organization ON ceds6sc.ref_organization_relationship IS '';

ALTER TABLE ceds6sc.ref_other_name_type ADD CONSTRAINT fk_ref_other_name_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_other_name_organization ON ceds6sc.ref_other_name_type IS '';

ALTER TABLE ceds6sc.ref_paraprofessional_qualification ADD CONSTRAINT fk_ref_paraprofessional_qualification_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_paraprofessional_qualification_organization ON ceds6sc.ref_paraprofessional_qualification IS '';

ALTER TABLE ceds6sc.ref_participation_type ADD CONSTRAINT fk_ref_participation_type_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_participation_type_organization ON ceds6sc.ref_participation_type IS '';

ALTER TABLE ceds6sc.ref_pd_activity_approved_purpose ADD CONSTRAINT fk_ref_pd_activity_approved_for_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_pd_activity_approved_for_organization ON ceds6sc.ref_pd_activity_approved_purpose IS '';

ALTER TABLE ceds6sc.ref_pd_activity_education_levels_addressed ADD CONSTRAINT fk_ref_pd_activity_education_levels_addressed_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_pd_activity_education_levels_addressed_organization ON ceds6sc.ref_pd_activity_education_levels_addressed IS '';

ALTER TABLE ceds6sc.ref_pd_activity_target_audience ADD CONSTRAINT fk_ref_pd_activity_target_audience_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_pd_activity_target_audience_organization ON ceds6sc.ref_pd_activity_target_audience IS '';

ALTER TABLE ceds6sc.ref_pd_audience_type ADD CONSTRAINT fk_ref_pd_audience_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_pd_audience_type_organization ON ceds6sc.ref_pd_audience_type IS '';

ALTER TABLE ceds6sc.ref_pd_instructional_delivery_mode ADD CONSTRAINT fk_ref_pd_instructional_delivery_mode_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_pd_instructional_delivery_mode_organization ON ceds6sc.ref_pd_instructional_delivery_mode IS '';

ALTER TABLE ceds6sc.ref_person_identifier_type ADD CONSTRAINT fk_ref_person_identifier_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_person_identifier_type_organization ON ceds6sc.ref_person_identifier_type IS '';

ALTER TABLE ceds6sc.ref_person_relationship ADD CONSTRAINT fk_ref_relationship_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_relationship_organization ON ceds6sc.ref_person_relationship IS '';

ALTER TABLE ceds6sc.ref_person_telephone_number_type ADD CONSTRAINT fk_ref_person_telephone_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_person_telephone_type_organization ON ceds6sc.ref_person_telephone_number_type IS '';

ALTER TABLE ceds6sc.ref_population_served ADD CONSTRAINT fk_ref_population_served_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_population_served_organization ON ceds6sc.ref_population_served IS '';

ALTER TABLE ceds6sc.ref_pre_k_eligible_ages_non_idea ADD CONSTRAINT fk_ref_pre_k_eligible_ages_non_idea_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_pre_k_eligible_ages_non_idea_organization ON ceds6sc.ref_pre_k_eligible_ages_non_idea IS '';

ALTER TABLE ceds6sc.ref_pre_kindergarten_eligibility ADD CONSTRAINT fk_ref_pre_kindergarten_eligibility_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_pre_kindergarten_eligibility_organization ON ceds6sc.ref_pre_kindergarten_eligibility IS '';

ALTER TABLE ceds6sc.ref_professional_development_financial_support ADD CONSTRAINT fk_ref_prof_dev_financial_support_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_prof_dev_financial_support_organization ON ceds6sc.ref_professional_development_financial_support IS '';

ALTER TABLE ceds6sc.ref_professional_technical_credential_type ADD CONSTRAINT fk_ref_prof_tech_credential_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_prof_tech_credential_type_organization ON ceds6sc.ref_professional_technical_credential_type IS '';

ALTER TABLE ceds6sc.ref_proficiency_target_ayp ADD CONSTRAINT fk_ref_proficiency_target_ayp_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_proficiency_target_ayp_organization ON ceds6sc.ref_proficiency_target_ayp IS '';

ALTER TABLE ceds6sc.ref_program_exit_reason ADD CONSTRAINT fk_ref_program_exit_reason_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_program_exit_reason_organization ON ceds6sc.ref_program_exit_reason IS '';

ALTER TABLE ceds6sc.ref_program_length_hours_type ADD CONSTRAINT fk_ref_program_length_hours_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_program_length_hours_type_organization ON ceds6sc.ref_program_length_hours_type IS '';

ALTER TABLE ceds6sc.ref_program_type ADD CONSTRAINT fk_ref_program_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_program_type_organization ON ceds6sc.ref_program_type IS '';

ALTER TABLE ceds6sc.ref_promotion_reason ADD CONSTRAINT fk_ref_promotion_reason_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_promotion_reason_organization ON ceds6sc.ref_promotion_reason IS '';

ALTER TABLE ceds6sc.ref_ps_enrollment_action ADD CONSTRAINT fk_ref_ps_enrollment_action_organization FOREIGN KEY ( ref_jurisdiction ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_ps_enrollment_action_organization ON ceds6sc.ref_ps_enrollment_action IS '';

ALTER TABLE ceds6sc.ref_ps_enrollment_status ADD CONSTRAINT fk_ref_ps_enrollment_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_ps_enrollment_status_organization ON ceds6sc.ref_ps_enrollment_status IS '';

ALTER TABLE ceds6sc.ref_ps_lep_type ADD CONSTRAINT fk_ref_postsecondary_leptype_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_postsecondary_leptype_organization ON ceds6sc.ref_ps_lep_type IS '';

ALTER TABLE ceds6sc.ref_ps_exit_or_withdrawal_type ADD CONSTRAINT fk_ref_ps_exit_or_withdrawal_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_ps_exit_or_withdrawal_type_organization ON ceds6sc.ref_ps_exit_or_withdrawal_type IS '';

ALTER TABLE ceds6sc.ref_public_school_choice_status ADD CONSTRAINT fk_ref_public_school_choice_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_public_school_choice_status_organization ON ceds6sc.ref_public_school_choice_status IS '';

ALTER TABLE ceds6sc.ref_purpose_of_monitoring_visit ADD CONSTRAINT fk_ref_purpose_of_monitoring_visit_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_purpose_of_monitoring_visit_organization ON ceds6sc.ref_purpose_of_monitoring_visit IS '';

ALTER TABLE ceds6sc.ref_race ADD CONSTRAINT fk_ref_race_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_race_organization ON ceds6sc.ref_race IS '';

ALTER TABLE ceds6sc.ref_reason_delay_transition_conf ADD CONSTRAINT fk_ref_reason_delay_transition_conf_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_reason_delay_transition_conf_organization ON ceds6sc.ref_reason_delay_transition_conf IS '';

ALTER TABLE ceds6sc.ref_referral_outcome ADD CONSTRAINT fk_ref_referral_outcome_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_referral_outcome_organization ON ceds6sc.ref_referral_outcome IS '';

ALTER TABLE ceds6sc.ref_restructuring_action ADD CONSTRAINT fk_ref_restructuring_action_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_restructuring_action_organization ON ceds6sc.ref_restructuring_action IS '';

ALTER TABLE ceds6sc.ref_role_status ADD CONSTRAINT fk_ref_role_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_role_status_organization ON ceds6sc.ref_role_status IS '';

ALTER TABLE ceds6sc.ref_role_status ADD CONSTRAINT fk_ref_role_status_ref_role_status_type FOREIGN KEY ( ref_role_status_type_id ) REFERENCES ceds6sc.ref_role_status_type( ref_role_status_type_id );

COMMENT ON CONSTRAINT fk_ref_role_status_ref_role_status_type ON ceds6sc.ref_role_status IS '';

ALTER TABLE ceds6sc.ref_sced_course_level ADD CONSTRAINT fk_ref_sced_course_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_sced_course_level_organization ON ceds6sc.ref_sced_course_level IS '';

ALTER TABLE ceds6sc.ref_scheduled_well_child_screening ADD CONSTRAINT fk_ref_scheduled_well_child_screening_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_scheduled_well_child_screening_organization ON ceds6sc.ref_scheduled_well_child_screening IS '';

ALTER TABLE ceds6sc.ref_school_improvement_funds ADD CONSTRAINT fk_ref_school_improvement_funds_organization_1 FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_school_improvement_funds_organization_1 ON ceds6sc.ref_school_improvement_funds IS '';

ALTER TABLE ceds6sc.ref_school_level ADD CONSTRAINT fk_ref_school_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_school_level_organization ON ceds6sc.ref_school_level IS '';

ALTER TABLE ceds6sc.ref_score_metric_type ADD CONSTRAINT fk_ref_score_metric_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_score_metric_type_organization ON ceds6sc.ref_score_metric_type IS '';

ALTER TABLE ceds6sc.ref_service_option ADD CONSTRAINT fk_ref_service_option_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_service_option_organization ON ceds6sc.ref_service_option IS '';

ALTER TABLE ceds6sc.ref_session_type ADD CONSTRAINT fk_ref_session_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_session_type_organization ON ceds6sc.ref_session_type IS '';

ALTER TABLE ceds6sc.ref_sig_intervention_type ADD CONSTRAINT fk_ref_sig_intervention_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_sig_intervention_type_organization ON ceds6sc.ref_sig_intervention_type IS '';

ALTER TABLE ceds6sc.ref_space_use_type ADD CONSTRAINT fk_ref_space_use_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_space_use_type_organization ON ceds6sc.ref_space_use_type IS '';

ALTER TABLE ceds6sc.ref_special_education_exit_reason ADD CONSTRAINT fk_ref_special_education_exit_reason_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_special_education_exit_reason_organization ON ceds6sc.ref_special_education_exit_reason IS '';

ALTER TABLE ceds6sc.ref_staff_performance_level ADD CONSTRAINT fk_ref_staff_performance_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_staff_performance_level_organization ON ceds6sc.ref_staff_performance_level IS '';

ALTER TABLE ceds6sc.ref_state ADD CONSTRAINT fk_ref_state_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_state_organization ON ceds6sc.ref_state IS '';

ALTER TABLE ceds6sc.ref_state_poverty_designation ADD CONSTRAINT fk_ref_state_poverty_designation_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_state_poverty_designation_organization ON ceds6sc.ref_state_poverty_designation IS '';

ALTER TABLE ceds6sc.ref_supervised_clinical_experience ADD CONSTRAINT fk_ref_supervised_clinical_exper_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_supervised_clinical_exper_organization ON ceds6sc.ref_supervised_clinical_experience IS '';

ALTER TABLE ceds6sc.ref_teacher_education_exam_score_type ADD CONSTRAINT fk_ref_teacher_edu_exam_score_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_teacher_edu_exam_score_type_organization ON ceds6sc.ref_teacher_education_exam_score_type IS '';

ALTER TABLE ceds6sc.ref_teacher_prep_completer_status ADD CONSTRAINT fk_ref_teacher_prep_completer_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_teacher_prep_completer_status_organization ON ceds6sc.ref_teacher_prep_completer_status IS '';

ALTER TABLE ceds6sc.ref_teaching_assignment_role ADD CONSTRAINT fk_ref_teaching_assignment_role_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_teaching_assignment_role_organization ON ceds6sc.ref_teaching_assignment_role IS '';

ALTER TABLE ceds6sc.ref_teaching_credential_type ADD CONSTRAINT fk_ref_teaching_credential_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_teaching_credential_type_organization ON ceds6sc.ref_teaching_credential_type IS '';

ALTER TABLE ceds6sc.ref_technical_assistance_type ADD CONSTRAINT fk_ref_technical_assistance_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_technical_assistance_type_organization ON ceds6sc.ref_technical_assistance_type IS '';

ALTER TABLE ceds6sc.ref_telephone_number_type ADD CONSTRAINT fk_ref_telephone_number_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_telephone_number_type_organization ON ceds6sc.ref_telephone_number_type IS '';

ALTER TABLE ceds6sc.ref_text_complexity_system ADD CONSTRAINT fk_ref_text_complexity_system_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_text_complexity_system_organization ON ceds6sc.ref_text_complexity_system IS '';

ALTER TABLE ceds6sc.ref_title_iii_accountability ADD CONSTRAINT fk_ref_title_iii_accountability_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_title_iii_accountability_organization ON ceds6sc.ref_title_iii_accountability IS '';

ALTER TABLE ceds6sc.ref_title_iii_professional_development_type ADD CONSTRAINT fk_ref_title_iii_professional_dev_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_title_iii_professional_dev_type_organization ON ceds6sc.ref_title_iii_professional_development_type IS '';

ALTER TABLE ceds6sc.ref_title_i_instructional_services ADD CONSTRAINT fk_ref_title_i_instructional_services_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_title_i_instructional_services_organization ON ceds6sc.ref_title_i_instructional_services IS '';

ALTER TABLE ceds6sc.ref_title_i_program_type ADD CONSTRAINT fk_ref_title_i_program_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_title_i_program_type_organization ON ceds6sc.ref_title_i_program_type IS '';

ALTER TABLE ceds6sc.ref_transfer_out_indicator ADD CONSTRAINT fk_ref_transfer_out_indicator_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_transfer_out_indicator_organization ON ceds6sc.ref_transfer_out_indicator IS '';

ALTER TABLE ceds6sc.ref_tribal_affiliation ADD CONSTRAINT fk_ref_tribal_affiliation_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_tribal_affiliation_organization ON ceds6sc.ref_tribal_affiliation IS '';

ALTER TABLE ceds6sc.ref_tuition_residency_type ADD CONSTRAINT fk_ref_tuition_residency_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_tuition_residency_type_organization ON ceds6sc.ref_tuition_residency_type IS '';

ALTER TABLE ceds6sc.ref_us_citizenship_status ADD CONSTRAINT fk_ref_us_citizenship_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_us_citizenship_status_organization ON ceds6sc.ref_us_citizenship_status IS '';

ALTER TABLE ceds6sc.ref_vision_screening_status ADD CONSTRAINT fk_ref_vision_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_vision_org ON ceds6sc.ref_vision_screening_status IS '';

ALTER TABLE ceds6sc.ref_wage_verification ADD CONSTRAINT fk_ref_wage_verification_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_wage_verification_organization ON ceds6sc.ref_wage_verification IS '';

ALTER TABLE ceds6sc.ref_wf_program_participation ADD CONSTRAINT fk_ref_wfprogram_participation_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_wfprogram_participation_organization ON ceds6sc.ref_wf_program_participation IS '';

ALTER TABLE ceds6sc.required_immunization ADD CONSTRAINT fk_required_immunization_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_required_immunization_organization ON ceds6sc.required_immunization IS '';

ALTER TABLE ceds6sc.required_immunization ADD CONSTRAINT fk_required_immunization_ref_immunization FOREIGN KEY ( ref_immunization_type_id ) REFERENCES ceds6sc.ref_immunization_type( ref_immunization_type_id );

COMMENT ON CONSTRAINT fk_required_immunization_ref_immunization ON ceds6sc.required_immunization IS '';

ALTER TABLE ceds6sc.role_attendance ADD CONSTRAINT fk_role_attendance_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_role_attendance_organization_person_role ON ceds6sc.role_attendance IS '';

ALTER TABLE ceds6sc.role_status ADD CONSTRAINT fk_role_status_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_role_status_organization_person_role ON ceds6sc.role_status IS '';

ALTER TABLE ceds6sc.role_status ADD CONSTRAINT fk_role_status_ref_ref_role_status FOREIGN KEY ( ref_role_status_id ) REFERENCES ceds6sc.ref_role_status( ref_role_status_id );

COMMENT ON CONSTRAINT fk_role_status_ref_ref_role_status ON ceds6sc.role_status IS '';

ALTER TABLE ceds6sc.services_received ADD CONSTRAINT fk_services_received_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_services_received_organization_person_role ON ceds6sc.services_received IS '';

ALTER TABLE ceds6sc.services_received ADD CONSTRAINT fk_services_received_ref_services FOREIGN KEY ( ref_services_id ) REFERENCES ceds6sc.ref_services( ref_services_id );

COMMENT ON CONSTRAINT fk_services_received_ref_services ON ceds6sc.services_received IS '';

ALTER TABLE ceds6sc.staff_employment ADD CONSTRAINT fk_staff_employment_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_staff_employment_organization_person_role ON ceds6sc.staff_employment IS '';

ALTER TABLE ceds6sc.staff_employment ADD CONSTRAINT fk_staff_employment_ref_employment_separation_reason FOREIGN KEY ( ref_employment_separation_reason_id ) REFERENCES ceds6sc.ref_employment_separation_reason( ref_employment_separation_reason_id );

COMMENT ON CONSTRAINT fk_staff_employment_ref_employment_separation_reason ON ceds6sc.staff_employment IS '';

ALTER TABLE ceds6sc.staff_employment ADD CONSTRAINT fk_staff_employment_ref_employment_separation_type FOREIGN KEY ( ref_employment_separation_type_id ) REFERENCES ceds6sc.ref_employment_separation_type( ref_employment_separation_type_id );

COMMENT ON CONSTRAINT fk_staff_employment_ref_employment_separation_type ON ceds6sc.staff_employment IS '';

ALTER TABLE ceds6sc.staff_experience ADD CONSTRAINT fk_staff_experience_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_staff_experience_person ON ceds6sc.staff_experience IS '';

ALTER TABLE ceds6sc.staff_technical_assistance ADD CONSTRAINT fk_staff_technical_assistance_org_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_staff_technical_assistance_org_person_role ON ceds6sc.staff_technical_assistance IS '';

ALTER TABLE ceds6sc.staff_technical_assistance ADD CONSTRAINT fk_staff_technical_assistance_ref_technical_assistance_delivery_type FOREIGN KEY ( ref_technical_assistance_delivery_type_id ) REFERENCES ceds6sc.ref_technical_assistance_delivery_type( ref_technical_assistance_delivery_type_id );

COMMENT ON CONSTRAINT fk_staff_technical_assistance_ref_technical_assistance_delivery_type ON ceds6sc.staff_technical_assistance IS '';

ALTER TABLE ceds6sc.staff_technical_assistance ADD CONSTRAINT fk_staff_technical_assistance_ref_technical_assistance_type FOREIGN KEY ( ref_technical_assistance_type_id ) REFERENCES ceds6sc.ref_technical_assistance_type( ref_technical_assistance_type_id );

COMMENT ON CONSTRAINT fk_staff_technical_assistance_ref_technical_assistance_type ON ceds6sc.staff_technical_assistance IS '';

ALTER TABLE ceds6sc.teacher_student_data_link_exclusion ADD CONSTRAINT fk_teacher_student_data_link_exclusion_k12_staff_assignment FOREIGN KEY ( teacher_organization_person_role_id ) REFERENCES ceds6sc.k12_staff_assignment( organization_person_role_id );

COMMENT ON CONSTRAINT fk_teacher_student_data_link_exclusion_k12_staff_assignment ON ceds6sc.teacher_student_data_link_exclusion IS '';

ALTER TABLE ceds6sc.teacher_student_data_link_exclusion ADD CONSTRAINT fk_teacher_student_data_link_exclusion_k12_student_course_section FOREIGN KEY ( student_organization_person_role_id ) REFERENCES ceds6sc.k12_student_course_section( organization_person_role_id );

COMMENT ON CONSTRAINT fk_teacher_student_data_link_exclusion_k12_student_course_section ON ceds6sc.teacher_student_data_link_exclusion IS '';

ALTER TABLE ceds6sc.workforce_program_participation ADD CONSTRAINT fk_workforce_program_participation_person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT fk_workforce_program_participation_person_program_participation ON ceds6sc.workforce_program_participation IS '';

ALTER TABLE ceds6sc.workforce_program_participation ADD CONSTRAINT fk_workforce_program_partic_ref_professional_technical_credential FOREIGN KEY ( ref_professional_technical_credential_type_id ) REFERENCES ceds6sc.ref_professional_technical_credential_type( ref_professional_technical_credential_type_id );

COMMENT ON CONSTRAINT fk_workforce_program_partic_ref_professional_technical_credential ON ceds6sc.workforce_program_participation IS '';

ALTER TABLE ceds6sc.workforce_program_participation ADD CONSTRAINT fk_workforce_program_partic_ref_wf_program_participation FOREIGN KEY ( ref_wf_program_participation_id ) REFERENCES ceds6sc.ref_wf_program_participation( ref_wf_program_participation_id );

COMMENT ON CONSTRAINT fk_workforce_program_partic_ref_wf_program_participation ON ceds6sc.workforce_program_participation IS '';

