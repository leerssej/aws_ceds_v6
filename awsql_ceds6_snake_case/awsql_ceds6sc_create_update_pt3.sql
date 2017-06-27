ALTER TABLE ceds6sc.course_section_assessment_reporting ADD CONSTRAINT fk_course_section_assessment_reporting_course_section FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.course_section( organization_id );

COMMENT ON CONSTRAINT fk_course_section_assessment_reporting_course_section ON ceds6sc.course_section_assessment_reporting IS '';

ALTER TABLE ceds6sc.course_section_assessment_reporting ADD CONSTRAINT fk_course_section_assessment_reporting_ref_csassessment_report_method FOREIGN KEY ( ref_course_section_assessment_reporting_method_id ) REFERENCES ceds6sc.ref_course_section_assessment_reporting_method( ref_course_section_assessment_reporting_method_id );

COMMENT ON CONSTRAINT fk_course_section_assessment_reporting_ref_csassessment_report_method ON ceds6sc.course_section_assessment_reporting IS '';

ALTER TABLE ceds6sc.course_section_schedule ADD CONSTRAINT fk_course_section_schedule_course_section FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.course_section( organization_id );

COMMENT ON CONSTRAINT fk_course_section_schedule_course_section ON ceds6sc.course_section_schedule IS '';

ALTER TABLE ceds6sc.cte_student_academic_record ADD CONSTRAINT fk_cte_student_academic_record_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_cte_student_academic_record_organization_person_role ON ceds6sc.cte_student_academic_record IS '';

ALTER TABLE ceds6sc.cte_student_academic_record ADD CONSTRAINT fk_cte_student_academic_record_ref_professional_technical_credential FOREIGN KEY ( ref_professional_technical_credential_type_id ) REFERENCES ceds6sc.ref_professional_technical_credential_type( ref_professional_technical_credential_type_id );

COMMENT ON CONSTRAINT fk_cte_student_academic_record_ref_professional_technical_credential ON ceds6sc.cte_student_academic_record IS '';

ALTER TABLE ceds6sc.early_childhood_credential ADD CONSTRAINT fk_early_childhood_credential_person_credential FOREIGN KEY ( person_credential_id ) REFERENCES ceds6sc.person_credential( person_credential_id );

COMMENT ON CONSTRAINT fk_early_childhood_credential_person_credential ON ceds6sc.early_childhood_credential IS '';

ALTER TABLE ceds6sc.early_childhood_credential ADD CONSTRAINT fk_early_childhood_credential_ref_early_childhood_credential FOREIGN KEY ( ref_early_childhood_credential_id ) REFERENCES ceds6sc.ref_early_childhood_credential( ref_early_childhood_credential_id );

COMMENT ON CONSTRAINT fk_early_childhood_credential_ref_early_childhood_credential ON ceds6sc.early_childhood_credential IS '';

ALTER TABLE ceds6sc.el_child_developmental_assessment ADD CONSTRAINT fk_el_child_developmental_assessment_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_el_child_developmental_assessment_person ON ceds6sc.el_child_developmental_assessment IS '';

ALTER TABLE ceds6sc.el_child_developmental_assessment ADD CONSTRAINT fk_el_child_developmental_assessment_ref_child_developmental_screening_status FOREIGN KEY ( ref_child_developmental_screening_status_id ) REFERENCES ceds6sc.ref_child_developmental_screening_status( ref_child_developmental_screening_status_id );

COMMENT ON CONSTRAINT fk_el_child_developmental_assessment_ref_child_developmental_screening_status ON ceds6sc.el_child_developmental_assessment IS '';

ALTER TABLE ceds6sc.el_child_developmental_assessment ADD CONSTRAINT fk_el_child_developmental_assessment_ref_developmental_evaluation_finding FOREIGN KEY ( ref_developmental_evaluation_finding_id ) REFERENCES ceds6sc.ref_developmental_evaluation_finding( ref_developmental_evaluation_finding_id );

COMMENT ON CONSTRAINT fk_el_child_developmental_assessment_ref_developmental_evaluation_finding ON ceds6sc.el_child_developmental_assessment IS '';

ALTER TABLE ceds6sc.el_child_individualized_program ADD CONSTRAINT fk_el_child_individualized_program_individualized_program FOREIGN KEY ( individualized_program_id ) REFERENCES ceds6sc.individualized_program( individualized_program_id );

COMMENT ON CONSTRAINT fk_el_child_individualized_program_individualized_program ON ceds6sc.el_child_individualized_program IS '';

ALTER TABLE ceds6sc.el_child_individualized_program ADD CONSTRAINT fk_el_child_individualized_program_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_el_child_individualized_program_person ON ceds6sc.el_child_individualized_program IS '';

ALTER TABLE ceds6sc.el_child_individualized_program ADD CONSTRAINT fk_el_child_individualized_program_ref_idea_iep_status FOREIGN KEY ( ref_idea_iep_status_id ) REFERENCES ceds6sc.ref_idea_iep_status( ref_idea_iep_status_id );

COMMENT ON CONSTRAINT fk_el_child_individualized_program_ref_idea_iep_status ON ceds6sc.el_child_individualized_program IS '';

ALTER TABLE ceds6sc.el_child_individualized_program ADD CONSTRAINT fk_el_child_individualized_program_ref_idea_part_c_eligibility_category FOREIGN KEY ( ref_idea_part_c_eligibility_category_id ) REFERENCES ceds6sc.ref_idea_part_c_eligibility_category( ref_idea_part_c_eligibility_category_id );

COMMENT ON CONSTRAINT fk_el_child_individualized_program_ref_idea_part_c_eligibility_category ON ceds6sc.el_child_individualized_program IS '';

ALTER TABLE ceds6sc.el_child_program_eligibility ADD CONSTRAINT fk_el_child_program_eligibility_org_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_el_child_program_eligibility_org_person_role ON ceds6sc.el_child_program_eligibility IS '';

ALTER TABLE ceds6sc.el_child_services_application ADD CONSTRAINT fk_el_child_services_application_org_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_el_child_services_application_org_person_role ON ceds6sc.el_child_services_application IS '';

ALTER TABLE ceds6sc.el_class_section ADD CONSTRAINT fk_el_class_section_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_el_class_section_organization ON ceds6sc.el_class_section IS '';

ALTER TABLE ceds6sc.el_class_section ADD CONSTRAINT fk_el_class_section_ref_environment_setting FOREIGN KEY ( ref_environment_setting_id ) REFERENCES ceds6sc.ref_environment_setting( ref_environment_setting_id );

COMMENT ON CONSTRAINT fk_el_class_section_ref_environment_setting ON ceds6sc.el_class_section IS '';

ALTER TABLE ceds6sc.el_class_section ADD CONSTRAINT fk_el_class_section_ref_service_option FOREIGN KEY ( ref_service_option_id ) REFERENCES ceds6sc.ref_service_option( ref_service_option_id );

COMMENT ON CONSTRAINT fk_el_class_section_ref_service_option ON ceds6sc.el_class_section IS '';

ALTER TABLE ceds6sc.el_enrollment ADD CONSTRAINT fk_el_enrollment_el_class_section FOREIGN KEY ( el_class_section_id ) REFERENCES ceds6sc.el_class_section( organization_id );

COMMENT ON CONSTRAINT fk_el_enrollment_el_class_section ON ceds6sc.el_enrollment IS '';

ALTER TABLE ceds6sc.el_enrollment ADD CONSTRAINT fk_ec_program_enrollment_organization_person FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT fk_ec_program_enrollment_organization_person ON ceds6sc.el_enrollment IS '';

ALTER TABLE ceds6sc.el_enrollment ADD CONSTRAINT fk_el_enrollment_ref_el_federal_funding_type FOREIGN KEY ( ref_el_federal_funding_type_id ) REFERENCES ceds6sc.ref_el_federal_funding_type( ref_el_federal_funding_type_id );

COMMENT ON CONSTRAINT fk_el_enrollment_ref_el_federal_funding_type ON ceds6sc.el_enrollment IS '';

ALTER TABLE ceds6sc.el_enrollment ADD CONSTRAINT fk_el_enrollment_ref_food_service_participation FOREIGN KEY ( ref_food_service_participation_id ) REFERENCES ceds6sc.ref_food_service_participation( ref_food_service_participation_id );

COMMENT ON CONSTRAINT fk_el_enrollment_ref_food_service_participation ON ceds6sc.el_enrollment IS '';

ALTER TABLE ceds6sc.el_enrollment ADD CONSTRAINT fk_el_enrollment_ref_idea_environment_el FOREIGN KEY ( ref_idea_environment_el_id ) REFERENCES ceds6sc.ref_idea_environment_el( ref_idea_environment_el_id );

COMMENT ON CONSTRAINT fk_el_enrollment_ref_idea_environment_el ON ceds6sc.el_enrollment IS '';

ALTER TABLE ceds6sc.el_enrollment ADD CONSTRAINT fk_el_enrollment_ref_service_option FOREIGN KEY ( ref_service_option_id ) REFERENCES ceds6sc.ref_service_option( ref_service_option_id );

COMMENT ON CONSTRAINT fk_el_enrollment_ref_service_option ON ceds6sc.el_enrollment IS '';

ALTER TABLE ceds6sc.el_facility_licensing ADD CONSTRAINT fk_el_facility_licensing_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_el_facility_licensing_organization ON ceds6sc.el_facility_licensing IS '';

ALTER TABLE ceds6sc.el_facility_licensing ADD CONSTRAINT fk_el_facility_licensing_ref_el_facility_licensing_status FOREIGN KEY ( ref_el_facility_licensing_status_id ) REFERENCES ceds6sc.ref_el_facility_licensing_status( ref_el_facility_licensing_status_id );

COMMENT ON CONSTRAINT fk_el_facility_licensing_ref_el_facility_licensing_status ON ceds6sc.el_facility_licensing IS '';

ALTER TABLE ceds6sc.el_facility_licensing ADD CONSTRAINT fk_el_facility_licensing_ref_license_exempt FOREIGN KEY ( ref_license_exempt_id ) REFERENCES ceds6sc.ref_license_exempt( ref_license_exempt_id );

COMMENT ON CONSTRAINT fk_el_facility_licensing_ref_license_exempt ON ceds6sc.el_facility_licensing IS '';

ALTER TABLE ceds6sc.el_organization_funds ADD CONSTRAINT fk_el_organization_funds_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_el_organization_funds_organization ON ceds6sc.el_organization_funds IS '';

ALTER TABLE ceds6sc.el_organization_funds ADD CONSTRAINT fk_el_organization_funds_ref_billable_basis_type FOREIGN KEY ( ref_billable_basis_type_id ) REFERENCES ceds6sc.ref_billable_basis_type( ref_billable_basis_type_id );

COMMENT ON CONSTRAINT fk_el_organization_funds_ref_billable_basis_type ON ceds6sc.el_organization_funds IS '';

ALTER TABLE ceds6sc.el_organization_funds ADD CONSTRAINT fk_el_organization_funds_ref_el_federal_funding_type FOREIGN KEY ( ref_el_federal_funding_type_id ) REFERENCES ceds6sc.ref_el_federal_funding_type( ref_el_federal_funding_type_id );

COMMENT ON CONSTRAINT fk_el_organization_funds_ref_el_federal_funding_type ON ceds6sc.el_organization_funds IS '';

ALTER TABLE ceds6sc.el_organization_funds ADD CONSTRAINT fk_el_organization_funds_ref_el_local_revenue_source FOREIGN KEY ( ref_el_local_revenue_source_id ) REFERENCES ceds6sc.ref_el_local_revenue_source( ref_el_local_revenue_source_id );

COMMENT ON CONSTRAINT fk_el_organization_funds_ref_el_local_revenue_source ON ceds6sc.el_organization_funds IS '';

ALTER TABLE ceds6sc.el_organization_funds ADD CONSTRAINT fk_el_organization_funds_ref_el_other_federal_funding_sources FOREIGN KEY ( ref_el_other_federal_funding_sources_id ) REFERENCES ceds6sc.ref_el_other_federal_funding_sources( ref_el_other_federal_funding_sources_id );

COMMENT ON CONSTRAINT fk_el_organization_funds_ref_el_other_federal_funding_sources ON ceds6sc.el_organization_funds IS '';

ALTER TABLE ceds6sc.el_organization_funds ADD CONSTRAINT fk_el_organization_funds_ref_el_state_revenue_source FOREIGN KEY ( ref_el_state_revenue_source_id ) REFERENCES ceds6sc.ref_el_state_revenue_source( ref_el_state_revenue_source_id );

COMMENT ON CONSTRAINT fk_el_organization_funds_ref_el_state_revenue_source ON ceds6sc.el_organization_funds IS '';

ALTER TABLE ceds6sc.el_organization_funds ADD CONSTRAINT fk_el_organization_funds_ref_reimbursement_type FOREIGN KEY ( ref_reimbursement_type_id ) REFERENCES ceds6sc.ref_reimbursement_type( ref_reimbursement_type_id );

COMMENT ON CONSTRAINT fk_el_organization_funds_ref_reimbursement_type ON ceds6sc.el_organization_funds IS '';

ALTER TABLE ceds6sc.el_program_licensing ADD CONSTRAINT fk_el_program_licensing_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_el_program_licensing_organization ON ceds6sc.el_program_licensing IS '';

ALTER TABLE ceds6sc.el_program_licensing ADD CONSTRAINT fk_el_program_licensing_ref_el_program_license_status FOREIGN KEY ( ref_el_program_license_status_id ) REFERENCES ceds6sc.ref_el_program_license_status( ref_el_program_license_status_id );

COMMENT ON CONSTRAINT fk_el_program_licensing_ref_el_program_license_status ON ceds6sc.el_program_licensing IS '';

ALTER TABLE ceds6sc.el_program_licensing ADD CONSTRAINT fk_el_program_licensing_ref_license_exempt FOREIGN KEY ( ref_license_exempt_id ) REFERENCES ceds6sc.ref_license_exempt( ref_license_exempt_id );

COMMENT ON CONSTRAINT fk_el_program_licensing_ref_license_exempt ON ceds6sc.el_program_licensing IS '';

ALTER TABLE ceds6sc.el_quality_rating_improvement ADD CONSTRAINT fk_el_quality_rating_improvement_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_el_quality_rating_improvement_organization ON ceds6sc.el_quality_rating_improvement IS '';

ALTER TABLE ceds6sc.el_quality_rating_improvement ADD CONSTRAINT fk_el_quality_rating_improvement_ref_qris_participation FOREIGN KEY ( ref_qris_participation_id ) REFERENCES ceds6sc.ref_qris_participation( ref_qris_participation_id );

COMMENT ON CONSTRAINT fk_el_quality_rating_improvement_ref_qris_participation ON ceds6sc.el_quality_rating_improvement IS '';

ALTER TABLE ceds6sc.el_staff ADD CONSTRAINT fk_el_staff_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_el_staff_organization_person_role ON ceds6sc.el_staff IS '';

ALTER TABLE ceds6sc.el_staff ADD CONSTRAINT fk_el_staff_ref_child_dev_associate_type FOREIGN KEY ( ref_child_development_associate_type_id ) REFERENCES ceds6sc.ref_child_development_associate_type( ref_child_development_associate_type_id );

COMMENT ON CONSTRAINT fk_el_staff_ref_child_dev_associate_type ON ceds6sc.el_staff IS '';

ALTER TABLE ceds6sc.el_staff_education ADD CONSTRAINT fk_el_staff_education_el_staff FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.el_staff( organization_person_role_id );

COMMENT ON CONSTRAINT fk_el_staff_education_el_staff ON ceds6sc.el_staff_education IS '';

ALTER TABLE ceds6sc.el_staff_education ADD CONSTRAINT fk_el_staff_ref_el_level_of_specialization FOREIGN KEY ( ref_el_level_of_specialization_id ) REFERENCES ceds6sc.ref_el_level_of_specialization( ref_el_level_of_specialization_id );

COMMENT ON CONSTRAINT fk_el_staff_ref_el_level_of_specialization ON ceds6sc.el_staff_education IS '';

ALTER TABLE ceds6sc.el_staff_education ADD CONSTRAINT fk_el_staff_education_ref_el_pd_topic_area FOREIGN KEY ( ref_el_professional_development_topic_area_id ) REFERENCES ceds6sc.ref_el_professional_development_topic_area( ref_el_professional_development_topic_area_id );

COMMENT ON CONSTRAINT fk_el_staff_education_ref_el_pd_topic_area ON ceds6sc.el_staff_education IS '';

ALTER TABLE ceds6sc.facility ADD CONSTRAINT fk_facility_location FOREIGN KEY ( location_id ) REFERENCES ceds6sc.location( location_id );

COMMENT ON CONSTRAINT fk_facility_location ON ceds6sc.facility IS '';

ALTER TABLE ceds6sc.facility ADD CONSTRAINT fk_facility_ref_building_use_type FOREIGN KEY ( ref_building_use_type_id ) REFERENCES ceds6sc.ref_building_use_type( ref_building_use_type_id );

COMMENT ON CONSTRAINT fk_facility_ref_building_use_type ON ceds6sc.facility IS '';

ALTER TABLE ceds6sc.facility ADD CONSTRAINT fk_facility_ref_space_use_type FOREIGN KEY ( ref_space_use_type_id ) REFERENCES ceds6sc.ref_space_use_type( ref_space_use_type_id );

COMMENT ON CONSTRAINT fk_facility_ref_space_use_type ON ceds6sc.facility IS '';

ALTER TABLE ceds6sc.financial_aid_award ADD CONSTRAINT fk_financial_aid_award_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_financial_aid_award_organization_person_role ON ceds6sc.financial_aid_award IS '';

ALTER TABLE ceds6sc.financial_aid_award ADD CONSTRAINT fk_financial_aid_award_ref_financial_aid_award_status FOREIGN KEY ( ref_financial_aid_status_id ) REFERENCES ceds6sc.ref_financial_aid_award_status( ref_financial_aid_status_id );

COMMENT ON CONSTRAINT fk_financial_aid_award_ref_financial_aid_award_status ON ceds6sc.financial_aid_award IS '';

ALTER TABLE ceds6sc.financial_aid_award ADD CONSTRAINT fk_financial_aid_award_ref_financial_aid_award_type FOREIGN KEY ( ref_financial_aid_award_type_id ) REFERENCES ceds6sc.ref_financial_aid_award_type( ref_financial_aid_award_type_id );

COMMENT ON CONSTRAINT fk_financial_aid_award_ref_financial_aid_award_type ON ceds6sc.financial_aid_award IS '';

ALTER TABLE ceds6sc.incident_person ADD CONSTRAINT fk_incident_person_incident FOREIGN KEY ( incident_id ) REFERENCES ceds6sc.incident( incident_id );

COMMENT ON CONSTRAINT fk_incident_person_incident ON ceds6sc.incident_person IS '';

ALTER TABLE ceds6sc.incident_person ADD CONSTRAINT fk_incident_person_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_incident_person_person ON ceds6sc.incident_person IS '';

ALTER TABLE ceds6sc.incident_person ADD CONSTRAINT fk_incident_person_ref_incident_person_role_type FOREIGN KEY ( ref_incident_person_role_type_id ) REFERENCES ceds6sc.ref_incident_person_role_type( ref_incident_person_role_type_id );

COMMENT ON CONSTRAINT fk_incident_person_ref_incident_person_role_type ON ceds6sc.incident_person IS '';

ALTER TABLE ceds6sc.incident_person ADD CONSTRAINT fk_incident_person_ref_incident_person_type FOREIGN KEY ( ref_incident_person_type_id ) REFERENCES ceds6sc.ref_incident_person_type( ref_incident_person_type_id );

COMMENT ON CONSTRAINT fk_incident_person_ref_incident_person_type ON ceds6sc.incident_person IS '';

ALTER TABLE ceds6sc.individualized_program_service ADD CONSTRAINT fk_individualized_program_service_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc.person( person_id );

COMMENT ON CONSTRAINT fk_individualized_program_service_person ON ceds6sc.individualized_program_service IS '';

ALTER TABLE ceds6sc.individualized_program_service ADD CONSTRAINT fk_individualized_program_service_ref_individualized_program_planned_service_type FOREIGN KEY ( ref_individualized_program_planned_service_type_id ) REFERENCES ceds6sc.ref_individualized_program_planned_service_type( ref_individualized_program_planned_service_type_id );

COMMENT ON CONSTRAINT fk_individualized_program_service_ref_individualized_program_planned_service_type ON ceds6sc.individualized_program_service IS '';

ALTER TABLE ceds6sc.individualized_program_service ADD CONSTRAINT fk_individualized_program_service_ref_method_of_service_delivery FOREIGN KEY ( ref_method_of_service_delivery_id ) REFERENCES ceds6sc.ref_method_of_service_delivery( ref_method_of_service_delivery_id );

COMMENT ON CONSTRAINT fk_individualized_program_service_ref_method_of_service_delivery ON ceds6sc.individualized_program_service IS '';

ALTER TABLE ceds6sc.individualized_program_service ADD CONSTRAINT fk_individualized_program_service_ref_service_frequency FOREIGN KEY ( ref_service_frequency_id ) REFERENCES ceds6sc.ref_service_frequency( ref_service_frequency_id );

COMMENT ON CONSTRAINT fk_individualized_program_service_ref_service_frequency ON ceds6sc.individualized_program_service IS '';

ALTER TABLE ceds6sc.k12_lea ADD CONSTRAINT fk_k12_lea_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.organization( organization_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT fk_k12_lea_organization ON ceds6sc.k12_lea IS '';

ALTER TABLE ceds6sc.k12_lea ADD CONSTRAINT fk_k12_lea_ref_lea_improvement_status FOREIGN KEY ( ref_lea_improvement_status_id ) REFERENCES ceds6sc.ref_lea_improvement_status( ref_lea_improvement_status_id );

COMMENT ON CONSTRAINT fk_k12_lea_ref_lea_improvement_status ON ceds6sc.k12_lea IS '';

ALTER TABLE ceds6sc.k12_lea ADD CONSTRAINT fk_k12_lea_ref_lea_type FOREIGN KEY ( ref_lea_type_id ) REFERENCES ceds6sc.ref_lea_type( ref_lea_type_id );

COMMENT ON CONSTRAINT fk_k12_lea_ref_lea_type ON ceds6sc.k12_lea IS '';

ALTER TABLE ceds6sc.k12_lea ADD CONSTRAINT fk_k12_lea_ref_public_school_choice_status FOREIGN KEY ( ref_public_school_choice_status_id ) REFERENCES ceds6sc.ref_public_school_choice_status( ref_public_school_choice_status_id );

COMMENT ON CONSTRAINT fk_k12_lea_ref_public_school_choice_status ON ceds6sc.k12_lea IS '';

ALTER TABLE ceds6sc.k12_lea_federal_reporting ADD CONSTRAINT fk_k12_lea_federal_reporting_k12_lea FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.k12_lea( organization_id );

COMMENT ON CONSTRAINT fk_k12_lea_federal_reporting_k12_lea ON ceds6sc.k12_lea_federal_reporting IS '';

ALTER TABLE ceds6sc.k12_lea_federal_reporting ADD CONSTRAINT fk_k12_lea_federal_reporting_ref_barrier_to_educating_homeless FOREIGN KEY ( ref_barrier_to_educating_homeless_id ) REFERENCES ceds6sc.ref_barrier_to_educating_homeless( ref_barrier_to_educating_homeless_id );

COMMENT ON CONSTRAINT fk_k12_lea_federal_reporting_ref_barrier_to_educating_homeless ON ceds6sc.k12_lea_federal_reporting IS '';

ALTER TABLE ceds6sc.k12_lea_federal_reporting ADD CONSTRAINT fk_k12_lea_federal_reporting_ref_integrated_technology_status FOREIGN KEY ( ref_integrated_technology_status_id ) REFERENCES ceds6sc.ref_integrated_technology_status( ref_integrated_technology_status_id );

COMMENT ON CONSTRAINT fk_k12_lea_federal_reporting_ref_integrated_technology_status ON ceds6sc.k12_lea_federal_reporting IS '';

ALTER TABLE ceds6sc.k12_lea_pre_k_eligible_ages_idea ADD CONSTRAINT fk_k12_lea_pre_k_eligible_ages_idea_k12_lea FOREIGN KEY ( organization_id ) REFERENCES ceds6sc.k12_lea( organization_id );

COMMENT ON CONSTRAINT fk_k12_lea_pre_k_eligible_ages_idea_k12_lea ON ceds6sc.k12_lea_pre_k_eligible_ages_idea IS '';

ALTER TABLE ceds6sc.k12_lea_pre_k_eligible_ages_idea ADD CONSTRAINT fk_k12_lea_pre_k_eligible_ages_idea_ref_pre_k_eligible_ages_non_idea FOREIGN KEY ( ref_pre_k_eligible_ages_non_idea_id ) REFERENCES ceds6sc.ref_pre_k_eligible_ages_non_idea( ref_pre_k_eligible_ages_non_idea_id );

COMMENT ON CONSTRAINT fk_k12_lea_pre_k_eligible_ages_idea_ref_pre_k_eligible_ages_non_idea ON ceds6sc.k12_lea_pre_k_eligible_ages_idea IS '';

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

ALTER TABLE ceds6sc.k12_school_status ADD CONSTRAINT fk_k12_school_status_ref_title_1_school_status FOREIGN KEY ( ref_title_i_school_status_id ) REFERENCES ceds6sc.ref_title_i_school_status( ref_title_1_school_status_id );

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

ALTER TABLE ceds6sc.k12_student_academic_record ADD CONSTRAINT fk_k12_student_academic_record_ref_hsdiploma_distinction_type FOREIGN KEY ( ref_high_school_diploma_distinction_type_id ) REFERENCES ceds6sc.ref_high_school_diploma_distinction_type( ref_high_school_diploma_distinction_type_id );

COMMENT ON CONSTRAINT fk_k12_student_academic_record_ref_hsdiploma_distinction_type ON ceds6sc.k12_student_academic_record IS '';

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

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_language FOREIGN KEY ( ref_language_id ) REFERENCES ceds6sc.ref_language( ref_language_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_language ON ceds6sc.learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_learning_resource_access_api_type FOREIGN KEY ( ref_learning_resource_access_api_type_id ) REFERENCES ceds6sc.ref_learning_resource_access_api_type( ref_learning_resource_access_api_type_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_learning_resource_access_api_type ON ceds6sc.learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_learning_resource_access_hazard_type FOREIGN KEY ( ref_learning_resource_access_hazard_type_id ) REFERENCES ceds6sc.ref_learning_resource_access_hazard_type( ref_learning_resource_access_hazard_type_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_learning_resource_access_hazard_type ON ceds6sc.learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_learning_resource_access_mode_type FOREIGN KEY ( ref_learning_resource_access_mode_type_id ) REFERENCES ceds6sc.ref_learning_resource_access_mode_type( ref_learning_resource_access_mode_type_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_learning_resource_access_mode_type ON ceds6sc.learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_learning_resource_access_rights_url FOREIGN KEY ( ref_learning_resource_access_rights_url_id ) REFERENCES ceds6sc.ref_learning_resource_access_rights_url( ref_learning_resource_access_rights_url_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_learning_resource_access_rights_url ON ceds6sc.learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_learning_resource_author_type FOREIGN KEY ( ref_learning_resource_author_type_id ) REFERENCES ceds6sc.ref_learning_resource_author_type( ref_learning_resource_author_type_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_learning_resource_author_type ON ceds6sc.learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_learning_resource_book_format_type_id FOREIGN KEY ( ref_learning_resource_book_format_type_id ) REFERENCES ceds6sc.ref_learning_resource_book_format_type( ref_learning_resource_book_format_type_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_learning_resource_book_format_type_id ON ceds6sc.learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_learning_resource_control_flexibility_type FOREIGN KEY ( ref_learning_resource_control_flexibility_type_id ) REFERENCES ceds6sc.ref_learning_resource_control_flexibility_type( ref_learning_resource_control_flexibility_type_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_learning_resource_control_flexibility_type ON ceds6sc.learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_learning_resource_digital_media_sub_type FOREIGN KEY ( ref_learning_resource_digital_media_sub_type_id ) REFERENCES ceds6sc.ref_learning_resource_digital_media_sub_type( ref_learning_resource_digital_media_sub_type_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_learning_resource_digital_media_sub_type ON ceds6sc.learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_learning_resource_digital_media_type FOREIGN KEY ( ref_learning_resource_digital_media_type_id ) REFERENCES ceds6sc.ref_learning_resource_digital_media_type( ref_learning_resource_digital_media_type_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_learning_resource_digital_media_type ON ceds6sc.learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_lr_educational_use FOREIGN KEY ( ref_learning_resource_educational_use_id ) REFERENCES ceds6sc.ref_learning_resource_educational_use( ref_learning_resource_educational_use_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_lr_educational_use ON ceds6sc.learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_lr_intended_end_user_role FOREIGN KEY ( ref_learning_resource_intended_end_user_role_id ) REFERENCES ceds6sc.ref_learning_resource_intended_end_user_role( ref_learning_resource_intended_end_user_role_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_lr_intended_end_user_role ON ceds6sc.learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_learning_resource_interaction_mode FOREIGN KEY ( ref_learning_resource_interaction_mode_id ) REFERENCES ceds6sc.ref_learning_resource_interaction_mode( ref_learning_resource_interaction_mode_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_learning_resource_interaction_mode ON ceds6sc.learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_lr_interactivity_type FOREIGN KEY ( ref_learning_resource_interactivity_type_id ) REFERENCES ceds6sc.ref_learning_resource_interactivity_type( ref_learning_resource_interactivity_type_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_lr_interactivity_type ON ceds6sc.learning_resource IS '';

ALTER TABLE ceds6sc.learning_resource ADD CONSTRAINT fk_learning_resource_ref_lr_type FOREIGN KEY ( ref_learning_resource_type_id ) REFERENCES ceds6sc.ref_learning_resource_type( ref_learning_resource_type_id );

COMMENT ON CONSTRAINT fk_learning_resource_ref_lr_type ON ceds6sc.learning_resource IS '';

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

ALTER TABLE ceds6sc.learning_standard_document ADD CONSTRAINT fk_learning_standard_document_ref_language FOREIGN KEY ( ref_language_id ) REFERENCES ceds6sc.ref_language( ref_language_id );

COMMENT ON CONSTRAINT fk_learning_standard_document_ref_language ON ceds6sc.learning_standard_document IS '';

ALTER TABLE ceds6sc.learning_standard_document ADD CONSTRAINT fk_learning_standard_document_ref_ls_document_publication_status FOREIGN KEY ( ref_learning_standard_document_publication_status_id ) REFERENCES ceds6sc.ref_learning_standard_document_publication_status( ref_learning_standard_document_publication_status_id );

COMMENT ON CONSTRAINT fk_learning_standard_document_ref_ls_document_publication_status ON ceds6sc.learning_standard_document IS '';

ALTER TABLE ceds6sc.learning_standard_item_association ADD CONSTRAINT fk_learning_standard_item_association_learning_standard_item FOREIGN KEY ( learning_standard_item_id ) REFERENCES ceds6sc.learning_standard_item( learning_standard_item_id );

COMMENT ON CONSTRAINT fk_learning_standard_item_association_learning_standard_item ON ceds6sc.learning_standard_item_association IS '';

ALTER TABLE ceds6sc.learning_standard_item_association ADD CONSTRAINT fk_learning_standard_item_association_ref_associated_entity_type FOREIGN KEY ( ref_entity_type_id ) REFERENCES ceds6sc.ref_entity_type( ref_entity_type_id );

COMMENT ON CONSTRAINT fk_learning_standard_item_association_ref_associated_entity_type ON ceds6sc.learning_standard_item_association IS '';

ALTER TABLE ceds6sc.learning_standard_item_association ADD CONSTRAINT fk_ls_item_association_ref_learning_standard_item_association FOREIGN KEY ( ref_learning_standard_item_association_type_id ) REFERENCES ceds6sc.ref_learning_standard_item_association_type( ref_learning_standard_item_association_type_id );

COMMENT ON CONSTRAINT fk_ls_item_association_ref_learning_standard_item_association ON ceds6sc.learning_standard_item_association IS '';

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

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_amaoattainment_lepstudents FOREIGN KEY ( amao_ayp_progress_attainment_lep_students ) REFERENCES ceds6sc.ref_amao_attainment_status( ref_amao_attainment_status_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_amaoattainment_lepstudents ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_amaoattainment_lepstudents1 FOREIGN KEY ( amao_proficiency_attainment_lep_students ) REFERENCES ceds6sc.ref_amao_attainment_status( ref_amao_attainment_status_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_amaoattainment_lepstudents1 ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_amaoattainment_lepstudents2 FOREIGN KEY ( amao_progress_attainment_lep_students ) REFERENCES ceds6sc.ref_amao_attainment_status( ref_amao_attainment_status_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_amaoattainment_lepstudents2 ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_ayp_status FOREIGN KEY ( ref_ayp_status_id ) REFERENCES ceds6sc.ref_ayp_status( ref_ayp_status_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_ayp_status ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_cte_graduation_rate_inclusion FOREIGN KEY ( ref_cte_graduation_rate_inclusion_id ) REFERENCES ceds6sc.ref_cte_graduation_rate_inclusion( ref_cte_graduation_rate_inclusion_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_cte_graduation_rate_inclusion ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_elementary_middle_additional FOREIGN KEY ( ref_elementary_middle_additional_id ) REFERENCES ceds6sc.ref_elementary_middle_additional( ref_elementary_middle_additional_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_elementary_middle_additional ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_gun_free_schools_act_status FOREIGN KEY ( ref_gun_free_schools_act_status_reporting_id ) REFERENCES ceds6sc.ref_gun_free_schools_act_reporting_status( ref_gun_free_schools_act_status_reporting_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_gun_free_schools_act_status ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_hsgraduation_rate_indicator FOREIGN KEY ( ref_high_school_graduation_rate_indicator ) REFERENCES ceds6sc.ref_high_school_graduation_rate_indicator( ref_hsgraduation_rate_indicator_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_hsgraduation_rate_indicator ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_participation_status_ayp2 FOREIGN KEY ( ref_participation_status_math_id ) REFERENCES ceds6sc.ref_participation_status_ayp( ref_participation_status_ayp_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_participation_status_ayp2 ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_participation_status_ayp3 FOREIGN KEY ( ref_participation_status_rla_id ) REFERENCES ceds6sc.ref_participation_status_ayp( ref_participation_status_ayp_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_participation_status_ayp3 ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_proficiency_target_ayp FOREIGN KEY ( ref_proficiency_target_status_math_id ) REFERENCES ceds6sc.ref_proficiency_target_ayp( ref_proficiency_target_ayp_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_proficiency_target_ayp ON ceds6sc.organization_federal_accountability IS '';

ALTER TABLE ceds6sc.organization_federal_accountability ADD CONSTRAINT fk_organization_fed_accntblty_ref_proficiency_target_ayp1 FOREIGN KEY ( ref_proficiency_target_status_rlaid ) REFERENCES ceds6sc.ref_proficiency_target_ayp( ref_proficiency_target_ayp_id );

COMMENT ON CONSTRAINT fk_organization_fed_accntblty_ref_proficiency_target_ayp1 ON ceds6sc.organization_federal_accountability IS '';

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

ALTER TABLE ceds6sc.program_participation_title_i_ ADD CONSTRAINT fk_program_participation_title_i__person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT fk_program_participation_title_i__person_program_participation ON ceds6sc.program_participation_title_i_ IS '';

ALTER TABLE ceds6sc.program_participation_title_i_ ADD CONSTRAINT fk_program_participation_title_i__ref_title_i_indicator FOREIGN KEY ( ref_title_i_indicator_id ) REFERENCES ceds6sc.ref_title_i_indicator( ref_title_i_indicator_id );

COMMENT ON CONSTRAINT fk_program_participation_title_i__ref_title_i_indicator ON ceds6sc.program_participation_title_i_ IS '';

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

ALTER TABLE ceds6sc.ps_program ADD CONSTRAINT fk_ps_program_ref_dqpcategories_of_learning FOREIGN KEY ( ref_dqpcategories_of_learning_id ) REFERENCES ceds6sc.ref_dqpcategories_of_learning( ref_dqpcategories_of_learning_id );

COMMENT ON CONSTRAINT fk_ps_program_ref_dqpcategories_of_learning ON ceds6sc.ps_program IS '';

ALTER TABLE ceds6sc.ps_program ADD CONSTRAINT fk_ps_program_ref_ps_exit_or_withdrawal_type FOREIGN KEY ( ref_ps_exit_or_withdrawal_type_id ) REFERENCES ceds6sc.ref_ps_exit_or_withdrawal_type( ref_ps_exit_or_withdrawal_type_id );

COMMENT ON CONSTRAINT fk_ps_program_ref_ps_exit_or_withdrawal_type ON ceds6sc.ps_program IS '';

ALTER TABLE ceds6sc.ps_program ADD CONSTRAINT fk_ps_program_ref_ps_program_level FOREIGN KEY ( ref_ps_program_level_id ) REFERENCES ceds6sc.ref_ps_program_level( ref_ps_program_level_id );

COMMENT ON CONSTRAINT fk_ps_program_ref_ps_program_level ON ceds6sc.ps_program IS '';

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

ALTER TABLE ceds6sc.ps_student_demographic ADD CONSTRAINT fk_ps_student_demographic_ref_education_level1 FOREIGN KEY ( ref_maternal_education_level_id ) REFERENCES ceds6sc.ref_education_level( ref_education_level_id );

COMMENT ON CONSTRAINT fk_ps_student_demographic_ref_education_level1 ON ceds6sc.ps_student_demographic IS '';

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

ALTER TABLE ceds6sc.ps_student_section ADD CONSTRAINT fk_ps_student_section_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_ps_student_section_organization_person_role ON ceds6sc.ps_student_section IS '';

ALTER TABLE ceds6sc.ps_student_section ADD CONSTRAINT fk_ps_student_section_ref_course_academic_grade_status_code FOREIGN KEY ( ref_course_academic_grade_status_code_id ) REFERENCES ceds6sc.ref_course_academic_grade_status_code( ref_course_academic_grade_status_code_id );

COMMENT ON CONSTRAINT fk_ps_student_section_ref_course_academic_grade_status_code ON ceds6sc.ps_student_section IS '';

ALTER TABLE ceds6sc.ps_student_section ADD CONSTRAINT fk_ps_student_section_ref_course_repeat_code FOREIGN KEY ( ref_course_repeat_code_id ) REFERENCES ceds6sc.ref_course_repeat_code( ref_course_repeat_code_id );

COMMENT ON CONSTRAINT fk_ps_student_section_ref_course_repeat_code ON ceds6sc.ps_student_section IS '';

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

ALTER TABLE ceds6sc.ref_ae_functioning_level_at_intake ADD CONSTRAINT fk_ref_ae_functioning_level_at_intake_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_ae_functioning_level_at_intake_organization ON ceds6sc.ref_ae_functioning_level_at_intake IS '';

ALTER TABLE ceds6sc.ref_ae_instructional_program_type ADD CONSTRAINT fk_ref_ae_instructional_program_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_ae_instructional_program_type_organization ON ceds6sc.ref_ae_instructional_program_type IS '';

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

ALTER TABLE ceds6sc.ref_assessment_el_developmental_domain ADD CONSTRAINT fk_ref_assessment_el_developmental_domain_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_assessment_el_developmental_domain_organization ON ceds6sc.ref_assessment_el_developmental_domain IS '';

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

ALTER TABLE ceds6sc.ref_dqpcategories_of_learning ADD CONSTRAINT fk_ref_dqpcategories_of_learning_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_dqpcategories_of_learning_organization ON ceds6sc.ref_dqpcategories_of_learning IS '';

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

ALTER TABLE ceds6sc.ref_el_local_revenue_source ADD CONSTRAINT fk_ref_el_local_revenue_source_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_el_local_revenue_source_organization ON ceds6sc.ref_el_local_revenue_source IS '';

ALTER TABLE ceds6sc.ref_el_outcome_measurement_level ADD CONSTRAINT fk_ref_el_outcome_measurement_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_el_outcome_measurement_level_organization ON ceds6sc.ref_el_outcome_measurement_level IS '';

ALTER TABLE ceds6sc.ref_el_program_eligibility ADD CONSTRAINT fk_ref_el_program_eligibility_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_el_program_eligibility_organization ON ceds6sc.ref_el_program_eligibility IS '';

ALTER TABLE ceds6sc.ref_el_program_license_status ADD CONSTRAINT fk_ref_el_program_license_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_el_program_license_status_organization ON ceds6sc.ref_el_program_license_status IS '';

ALTER TABLE ceds6sc.ref_el_service_type ADD CONSTRAINT fk_ref_el_service_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_el_service_type_organization ON ceds6sc.ref_el_service_type IS '';

ALTER TABLE ceds6sc.ref_el_trainer_core_knowledge_area ADD CONSTRAINT fk_ref_el_trainer_core_knowledge_area_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_el_trainer_core_knowledge_area_organization ON ceds6sc.ref_el_trainer_core_knowledge_area IS '';

ALTER TABLE ceds6sc.ref_email_type ADD CONSTRAINT fk_ref_email_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_email_type_organization ON ceds6sc.ref_email_type IS '';

ALTER TABLE ceds6sc.ref_employed_prior_to_enrollment ADD CONSTRAINT fk_ref_employed_prior_to_enrollment_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_employed_prior_to_enrollment_organization ON ceds6sc.ref_employed_prior_to_enrollment IS '';

ALTER TABLE ceds6sc.ref_employment_contract_type ADD CONSTRAINT fk_ref_employment_contract_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_employment_contract_type_organization ON ceds6sc.ref_employment_contract_type IS '';

ALTER TABLE ceds6sc.ref_employment_separation_reason ADD CONSTRAINT fk_ref_employment_separation_reason_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_employment_separation_reason_organization ON ceds6sc.ref_employment_separation_reason IS '';

ALTER TABLE ceds6sc.ref_employment_status ADD CONSTRAINT fk_ref_employment_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_employment_status_organization ON ceds6sc.ref_employment_status IS '';

ALTER TABLE ceds6sc.ref_end_of_term_status ADD CONSTRAINT fk_ref_end_of_term_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_end_of_term_status_organization ON ceds6sc.ref_end_of_term_status IS '';

ALTER TABLE ceds6sc.ref_entity_type ADD CONSTRAINT fk_ref_associated_entity_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_associated_entity_type_organization ON ceds6sc.ref_entity_type IS '';

ALTER TABLE ceds6sc.ref_environment_setting ADD CONSTRAINT fk_ref_environment_setting_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_environment_setting_organization ON ceds6sc.ref_environment_setting IS '';

ALTER TABLE ceds6sc.ref_ers_rural_urban_continuum_code ADD CONSTRAINT fk_ref_ers_rural_urban_continuum_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_ers_rural_urban_continuum_code_organization ON ceds6sc.ref_ers_rural_urban_continuum_code IS '';

ALTER TABLE ceds6sc.ref_exit_or_withdrawal_type ADD CONSTRAINT fk_ref_exit_or_withdrawal_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_exit_or_withdrawal_type_organization ON ceds6sc.ref_exit_or_withdrawal_type IS '';

ALTER TABLE ceds6sc.ref_federal_program_funding_allocation_type ADD CONSTRAINT fk_ref_federal_funding_allocation_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_federal_funding_allocation_organization ON ceds6sc.ref_federal_program_funding_allocation_type IS '';

ALTER TABLE ceds6sc.ref_financial_account_category ADD CONSTRAINT fk_ref_financial_account_category_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_financial_account_category_organization ON ceds6sc.ref_financial_account_category IS '';

ALTER TABLE ceds6sc.ref_financial_account_program_code ADD CONSTRAINT fk_ref_financial_account_program_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_financial_account_program_code_organization ON ceds6sc.ref_financial_account_program_code IS '';

ALTER TABLE ceds6sc.ref_financial_aid_application_type ADD CONSTRAINT fk_ref_financial_aid_appl_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_financial_aid_appl_type_organization ON ceds6sc.ref_financial_aid_application_type IS '';

ALTER TABLE ceds6sc.ref_financial_aid_award_type ADD CONSTRAINT fk_ref_financial_aid_award_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_financial_aid_award_type_organization ON ceds6sc.ref_financial_aid_award_type IS '';

ALTER TABLE ceds6sc.ref_financial_aid_veterans_benefit_type ADD CONSTRAINT fk_ref_financial_aid_veterans_benefit_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_financial_aid_veterans_benefit_type_organization ON ceds6sc.ref_financial_aid_veterans_benefit_type IS '';

ALTER TABLE ceds6sc.ref_financial_expenditure_level_of_instruction_code ADD CONSTRAINT fk_ref_financial_expenditure_level_of_instruction_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_financial_expenditure_level_of_instruction_code_organization ON ceds6sc.ref_financial_expenditure_level_of_instruction_code IS '';

ALTER TABLE ceds6sc.ref_firearm_type ADD CONSTRAINT fk_ref_firearm_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_firearm_type_organization ON ceds6sc.ref_firearm_type IS '';

ALTER TABLE ceds6sc.ref_food_service_participation ADD CONSTRAINT fk_ref_food_service_participation_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_food_service_participation_organization ON ceds6sc.ref_food_service_participation IS '';

ALTER TABLE ceds6sc.ref_full_time_status ADD CONSTRAINT fk_ref_full_time_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_full_time_status_organization ON ceds6sc.ref_full_time_status IS '';

ALTER TABLE ceds6sc.ref_gpa_weighted_indicator ADD CONSTRAINT fk_ref_gpa_weighted_indicator_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_gpa_weighted_indicator_organization ON ceds6sc.ref_gpa_weighted_indicator IS '';

ALTER TABLE ceds6sc.ref_grade_level_type ADD CONSTRAINT fk_ref_grade_level_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_grade_level_type_organization ON ceds6sc.ref_grade_level_type IS '';

ALTER TABLE ceds6sc.ref_graduate_assistant_ipeds_category ADD CONSTRAINT fk_ref_graduate_assist_ipeds_category_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_graduate_assist_ipeds_category_organization ON ceds6sc.ref_graduate_assistant_ipeds_category IS '';

ALTER TABLE ceds6sc.ref_gun_free_schools_act_reporting_status ADD CONSTRAINT fk_ref_gun_free_schools_act_status_organization1 FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_gun_free_schools_act_status_organization1 ON ceds6sc.ref_gun_free_schools_act_reporting_status IS '';

ALTER TABLE ceds6sc.ref_hearing_screening_status ADD CONSTRAINT fk_ref_hearing_screening_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_hearing_screening_status_organization ON ceds6sc.ref_hearing_screening_status IS '';

ALTER TABLE ceds6sc.ref_high_school_diploma_type ADD CONSTRAINT fk_ref_high_school_diploma_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_high_school_diploma_type_organization ON ceds6sc.ref_high_school_diploma_type IS '';

ALTER TABLE ceds6sc.ref_higher_education_institution_accreditation_status ADD CONSTRAINT fk_ref_higher_ed_institution_accreditation_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_higher_ed_institution_accreditation_status_organization ON ceds6sc.ref_higher_education_institution_accreditation_status IS '';

ALTER TABLE ceds6sc.ref_idea_discipline_method_firearm ADD CONSTRAINT fk_ref_idea_discipline_method_firearm_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_idea_discipline_method_firearm_organization ON ceds6sc.ref_idea_discipline_method_firearm IS '';

ALTER TABLE ceds6sc.ref_idea_educational_environment_school_age ADD CONSTRAINT fk_ref_idea_ed_environment_school_age_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_idea_ed_environment_school_age_organization ON ceds6sc.ref_idea_educational_environment_school_age IS '';

ALTER TABLE ceds6sc.ref_idea_iep_status ADD CONSTRAINT fk_ref_idea_iep_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_idea_iep_status_organization ON ceds6sc.ref_idea_iep_status IS '';

ALTER TABLE ceds6sc.ref_idea_interim_removal_reason ADD CONSTRAINT fk_ref_idea_interim_removal_reason_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_idea_interim_removal_reason_organization ON ceds6sc.ref_idea_interim_removal_reason IS '';

ALTER TABLE ceds6sc.ref_incident_behavior ADD CONSTRAINT fk_ref_incident_behavior_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_incident_behavior_organization ON ceds6sc.ref_incident_behavior IS '';

ALTER TABLE ceds6sc.ref_incident_injury_type ADD CONSTRAINT fk_ref_incident_injury_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_incident_injury_type_organization ON ceds6sc.ref_incident_injury_type IS '';

ALTER TABLE ceds6sc.ref_incident_multiple_offense_type ADD CONSTRAINT fk_ref_incident_multiple_offense_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_incident_multiple_offense_type_organization ON ceds6sc.ref_incident_multiple_offense_type IS '';

ALTER TABLE ceds6sc.ref_incident_person_role_type ADD CONSTRAINT fk_ref_incident_person_role_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_incident_person_role_type_organization ON ceds6sc.ref_incident_person_role_type IS '';

ALTER TABLE ceds6sc.ref_incident_reporter_type ADD CONSTRAINT fk_ref_incident_reporter_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_incident_reporter_type_organization ON ceds6sc.ref_incident_reporter_type IS '';

ALTER TABLE ceds6sc.ref_income_calculation_method ADD CONSTRAINT fk_ref_income_calculation_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_income_calculation_organization ON ceds6sc.ref_income_calculation_method IS '';

ALTER TABLE ceds6sc.ref_individualized_program_date_type ADD CONSTRAINT fk_ref_individualized_program_date_type_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_individualized_program_date_type_org ON ceds6sc.ref_individualized_program_date_type IS '';

ALTER TABLE ceds6sc.ref_individualized_program_planned_service_type ADD CONSTRAINT fk_ref_individualized_program_planned_service_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_individualized_program_planned_service_type_organization ON ceds6sc.ref_individualized_program_planned_service_type IS '';

ALTER TABLE ceds6sc.ref_individualized_program_type ADD CONSTRAINT fk_ref_indiv_program_type_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_indiv_program_type_org ON ceds6sc.ref_individualized_program_type IS '';

ALTER TABLE ceds6sc.ref_instruction_credit_type ADD CONSTRAINT fk_ref_instruction_credit_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_instruction_credit_type_organization ON ceds6sc.ref_instruction_credit_type IS '';

ALTER TABLE ceds6sc.ref_instructional_activity_hours ADD CONSTRAINT fk_ref_instructional_activity_hours_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_instructional_activity_hours_organization ON ceds6sc.ref_instructional_activity_hours IS '';

ALTER TABLE ceds6sc.ref_instructional_staff_faculty_tenure ADD CONSTRAINT fk_ref_instruct_staff_faculty_tenure_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_instruct_staff_faculty_tenure_organization ON ceds6sc.ref_instructional_staff_faculty_tenure IS '';

ALTER TABLE ceds6sc.ref_internet_access ADD CONSTRAINT fk_ref_internet_access_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_internet_access_organization ON ceds6sc.ref_internet_access IS '';

ALTER TABLE ceds6sc.ref_iso6392_language ADD CONSTRAINT fk_ref_iso6392_language_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_iso6392_language_organization ON ceds6sc.ref_iso6392_language IS '';

ALTER TABLE ceds6sc.ref_iso6395_language_family ADD CONSTRAINT fk_ref_iso6395_language_family_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_iso6395_language_family_organization ON ceds6sc.ref_iso6395_language_family IS '';

ALTER TABLE ceds6sc.ref_item_response_theory_difficulty_category ADD CONSTRAINT fk_ref_irt_difficulty_category_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_irt_difficulty_category_organization ON ceds6sc.ref_item_response_theory_difficulty_category IS '';

ALTER TABLE ceds6sc.ref_k12_end_of_course_requirement ADD CONSTRAINT fk_ref_k12_end_of_course_requirement_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_k12_end_of_course_requirement_organization ON ceds6sc.ref_k12_end_of_course_requirement IS '';

ALTER TABLE ceds6sc.ref_k12_responsibility_type ADD CONSTRAINT fk_ref_k12_responsibility_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_k12_responsibility_type_organization ON ceds6sc.ref_k12_responsibility_type IS '';

ALTER TABLE ceds6sc.ref_language ADD CONSTRAINT fk_ref_language_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_language_organization ON ceds6sc.ref_language IS '';

ALTER TABLE ceds6sc.ref_lea_funds_transfer_type ADD CONSTRAINT fk_ref_lea_funds_transfer_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_lea_funds_transfer_type_organization ON ceds6sc.ref_lea_funds_transfer_type IS '';

ALTER TABLE ceds6sc.ref_lea_type ADD CONSTRAINT fk_ref_lea_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_lea_type_organization ON ceds6sc.ref_lea_type IS '';

ALTER TABLE ceds6sc.ref_learner_activity_maximum_time_allowed_units ADD CONSTRAINT fk_ref_max_time_allowed_units_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_max_time_allowed_units_organization ON ceds6sc.ref_learner_activity_maximum_time_allowed_units IS '';

ALTER TABLE ceds6sc.ref_learning_resource_access_api_type ADD CONSTRAINT fk_ref_learning_resource_access_api_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_learning_resource_access_api_type_organization ON ceds6sc.ref_learning_resource_access_api_type IS '';

ALTER TABLE ceds6sc.ref_learning_resource_access_mode_type ADD CONSTRAINT fk_ref_learning_resource_access_mode_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_learning_resource_access_mode_type_organization ON ceds6sc.ref_learning_resource_access_mode_type IS '';

ALTER TABLE ceds6sc.ref_learning_resource_author_type ADD CONSTRAINT fk_ref_learning_resource_author_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_learning_resource_author_type_organization ON ceds6sc.ref_learning_resource_author_type IS '';

ALTER TABLE ceds6sc.ref_learning_resource_competency_alignment_type ADD CONSTRAINT fk_ref_learning_resource_competency_alignment_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_learning_resource_competency_alignment_type_organization ON ceds6sc.ref_learning_resource_competency_alignment_type IS '';

ALTER TABLE ceds6sc.ref_learning_resource_digital_media_sub_type ADD CONSTRAINT fk_ref_learning_resource_digital_media_sub_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_learning_resource_digital_media_sub_type_organization ON ceds6sc.ref_learning_resource_digital_media_sub_type IS '';

ALTER TABLE ceds6sc.ref_learning_resource_educational_use ADD CONSTRAINT fk_ref_lr_educational_use_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_lr_educational_use_organization ON ceds6sc.ref_learning_resource_educational_use IS '';

ALTER TABLE ceds6sc.ref_learning_resource_interaction_mode ADD CONSTRAINT fk_ref_learning_resource_interaction_mode_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_learning_resource_interaction_mode_organization ON ceds6sc.ref_learning_resource_interaction_mode IS '';

ALTER TABLE ceds6sc.ref_learning_resource_media_feature_type ADD CONSTRAINT fk_ref_learning_resource_media_feature_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_learning_resource_media_feature_type_organization ON ceds6sc.ref_learning_resource_media_feature_type IS '';

ALTER TABLE ceds6sc.ref_learning_resource_type ADD CONSTRAINT fk_ref_lr_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_lr_type_organization ON ceds6sc.ref_learning_resource_type IS '';

ALTER TABLE ceds6sc.ref_learning_standard_item_association_type ADD CONSTRAINT fk_ref_learning_standard_item_association_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_learning_standard_item_association_type_organization ON ceds6sc.ref_learning_standard_item_association_type IS '';

ALTER TABLE ceds6sc.ref_learning_standard_item_testability_type ADD CONSTRAINT fk_ref_learning_standard_item_testability_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_learning_standard_item_testability_type_organization ON ceds6sc.ref_learning_standard_item_testability_type IS '';

ALTER TABLE ceds6sc.ref_level_of_institution ADD CONSTRAINT fk_ref_level_of_institution_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_level_of_institution_organization ON ceds6sc.ref_level_of_institution IS '';

ALTER TABLE ceds6sc.ref_literacy_assessment ADD CONSTRAINT fk_ref_literacy_assessment_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_literacy_assessment_organization ON ceds6sc.ref_literacy_assessment IS '';

ALTER TABLE ceds6sc.ref_medical_alert_indicator ADD CONSTRAINT fk_ref_med_alert_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_med_alert_org ON ceds6sc.ref_medical_alert_indicator IS '';

ALTER TABLE ceds6sc.ref_mep_project_based ADD CONSTRAINT fk_ref_mep_project_based_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_mep_project_based_organization ON ceds6sc.ref_mep_project_based IS '';

ALTER TABLE ceds6sc.ref_mep_service_type ADD CONSTRAINT fk_ref_mep_service_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_mep_service_type_organization ON ceds6sc.ref_mep_service_type IS '';

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

ALTER TABLE ceds6sc.ref_predominant_calendar_system ADD CONSTRAINT fk_ref_predominant_calendar_system_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_predominant_calendar_system_organization ON ceds6sc.ref_predominant_calendar_system IS '';

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

ALTER TABLE ceds6sc.ref_ps_exit_or_withdrawal_type ADD CONSTRAINT fk_ref_ps_exit_or_withdrawal_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_ps_exit_or_withdrawal_type_organization ON ceds6sc.ref_ps_exit_or_withdrawal_type IS '';

ALTER TABLE ceds6sc.ref_ps_lep_type ADD CONSTRAINT fk_ref_postsecondary_leptype_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_postsecondary_leptype_organization ON ceds6sc.ref_ps_lep_type IS '';

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

ALTER TABLE ceds6sc.ref_school_improvement_funds ADD CONSTRAINT fk_ref_school_improvement_funds_organization1 FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_school_improvement_funds_organization1 ON ceds6sc.ref_school_improvement_funds IS '';

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

ALTER TABLE ceds6sc.ref_title_i_instructional_services ADD CONSTRAINT fk_ref_title_i_instructional_services_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_title_i_instructional_services_organization ON ceds6sc.ref_title_i_instructional_services IS '';

ALTER TABLE ceds6sc.ref_title_i_program_type ADD CONSTRAINT fk_ref_title_i_program_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_title_i_program_type_organization ON ceds6sc.ref_title_i_program_type IS '';

ALTER TABLE ceds6sc.ref_title_iii_accountability ADD CONSTRAINT fk_ref_title_iii_accountability_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_title_iii_accountability_organization ON ceds6sc.ref_title_iii_accountability IS '';

ALTER TABLE ceds6sc.ref_title_iii_professional_development_type ADD CONSTRAINT fk_ref_title_iii_professional_dev_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_title_iii_professional_dev_type_organization ON ceds6sc.ref_title_iii_professional_development_type IS '';

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

ALTER TABLE ceds6sc.ref_wf_program_participation ADD CONSTRAINT fk_ref_wf_program_participation_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc.organization( organization_id );

COMMENT ON CONSTRAINT fk_ref_wf_program_participation_organization ON ceds6sc.ref_wf_program_participation IS '';

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

INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6559, 'Mandeali', 'mjl', null, null, 374.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6560, 'Medebur', 'mjm', null, null, 374.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6561, 'Ma (Papua New Guinea)', 'mjn', null, null, 374.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6562, 'Malankuravan', 'mjo', null, null, 374.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6563, 'Malapandaram', 'mjp', null, null, 374.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6564, 'Malavedan', 'mjr', null, null, 374.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6565, 'Miship', 'mjs', null, null, 374.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6566, 'Sauria Paharia', 'mjt', null, null, 374.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6567, 'Manna-Dora', 'mju', null, null, 374.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6568, 'Mannan', 'mjv', null, null, 374.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6569, 'Karbi', 'mjw', null, null, 375.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6570, 'Mahali', 'mjx', null, null, 375.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6571, 'Majhi', 'mjz', null, null, 375.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6572, 'Mbre', 'mka', null, null, 375.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6573, 'Mal Paharia', 'mkb', null, null, 375.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6574, 'Siliput', 'mkc', null, null, 375.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6575, 'Macedonian', 'mkd', null, null, 375.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6576, 'Mawchi', 'mke', null, null, 375.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6577, 'Miya', 'mkf', null, null, 375.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6578, 'Mak (China)', 'mkg', null, null, 375.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6579, 'Dhatki', 'mki', null, null, 376.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6580, 'Mokilese', 'mkj', null, null, 376.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6581, 'Byep', 'mkk', null, null, 376.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6582, 'Mokole', 'mkl', null, null, 376.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6583, 'Moklen', 'mkm', null, null, 376.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6584, 'Kupang Malay', 'mkn', null, null, 376.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6585, 'Mingang Doso', 'mko', null, null, 376.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6586, 'Moikodi', 'mkp', null, null, 376.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6587, 'Malas', 'mkr', null, null, 376.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6588, 'Silacayoapan Mixtec', 'mks', null, null, 376.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6589, 'Vamale', 'mkt', null, null, 377.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6590, 'Konyanka Maninka', 'mku', null, null, 377.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6591, 'Mafea', 'mkv', null, null, 377.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6592, 'Kituba (Congo)', 'mkw', null, null, 377.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6593, 'Kinamiging Manobo', 'mkx', null, null, 377.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6594, 'East Makian', 'mky', null, null, 377.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6595, 'Makasae', 'mkz', null, null, 377.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6596, 'Malo', 'mla', null, null, 377.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6597, 'Mbule', 'mlb', null, null, 377.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6598, 'Cao Lan', 'mlc', null, null, 377.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6599, 'Manambu', 'mle', null, null, 378.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6600, 'Mal', 'mlf', null, null, 378.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6601, 'Malagasy', 'mlg', null, null, 378.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6602, 'Mape', 'mlh', null, null, 378.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6603, 'Malimpung', 'mli', null, null, 378.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6604, 'Miltu', 'mlj', null, null, 378.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6605, 'Ilwana', 'mlk', null, null, 378.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6606, 'Malua Bay', 'mll', null, null, 378.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6607, 'Mulam', 'mlm', null, null, 378.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6608, 'Malango', 'mln', null, null, 378.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6609, 'Mlomp', 'mlo', null, null, 379.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6610, 'Bargam', 'mlp', null, null, 379.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6611, 'Western Maninkakan', 'mlq', null, null, 379.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6612, 'Vame', 'mlr', null, null, 379.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6613, 'Masalit', 'mls', null, null, 379.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6614, 'Maltese', 'mlt', null, null, 379.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6615, 'Toabaita', 'mlu', null, null, 379.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6616, 'Motlav', 'mlv', null, null, 379.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6617, 'Moloko', 'mlw', null, null, 379.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6618, 'Malfaxal', 'mlx', null, null, 379.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6619, 'Malaynon', 'mlz', null, null, 380.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6620, 'Mama', 'mma', null, null, 380.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6621, 'Momina', 'mmb', null, null, 380.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6622, 'Michoac?n Mazahua', 'mmc', null, null, 380.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6623, 'Maonan', 'mmd', null, null, 380.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6624, 'Mae', 'mme', null, null, 380.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6625, 'Mundat', 'mmf', null, null, 380.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6626, 'North Ambrym', 'mmg', null, null, 380.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6627, 'Mehin?ku', 'mmh', null, null, 380.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6628, 'Musar', 'mmi', null, null, 380.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6629, 'Majhwar', 'mmj', null, null, 381.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6630, 'Mukha-Dora', 'mmk', null, null, 381.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6631, 'Man Met', 'mml', null, null, 381.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6632, 'Maii', 'mmm', null, null, 381.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6633, 'Mamanwa', 'mmn', null, null, 381.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6634, 'Mangga Buang', 'mmo', null, null, 381.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6635, 'Siawi', 'mmp', null, null, 381.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6636, 'Musak', 'mmq', null, null, 381.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6637, 'Western Xiangxi Miao', 'mmr', null, null, 381.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6638, 'Malalamai', 'mmt', null, null, 381.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6639, 'Mmaala', 'mmu', null, null, 382.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6640, 'Emae', 'mmw', null, null, 382.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6641, 'Madak', 'mmx', null, null, 382.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6642, 'Migaama', 'mmy', null, null, 382.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6643, 'Mabaale', 'mmz', null, null, 382.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6644, 'Mbula', 'mna', null, null, 382.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6645, 'Muna', 'mnb', null, null, 382.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6646, 'Manchu', 'mnc', null, null, 382.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6647, 'Mond?', 'mnd', null, null, 382.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6648, 'Naba', 'mne', null, null, 382.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6649, 'Mundani', 'mnf', null, null, 383.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6650, 'Eastern Mnong', 'mng', null, null, 383.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6651, 'Mono (Democratic Republic of Congo)', 'mnh', null, null, 383.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6652, 'Manipuri', 'mni', null, null, 383.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6653, 'Munji', 'mnj', null, null, 383.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6654, 'Mandinka', 'mnk', null, null, 383.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6655, 'Tiale', 'mnl', null, null, 383.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6656, 'Mapena', 'mnm', null, null, 383.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6657, 'Southern Mnong', 'mnn', null, null, 383.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6658, 'Min Bei Chinese', 'mnp', null, null, 383.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6659, 'Minriq', 'mnq', null, null, 384.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6660, 'Mono (USA)', 'mnr', null, null, 384.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6661, 'Mansi', 'mns', null, null, 384.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6662, 'Mer', 'mnu', null, null, 384.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6663, 'Rennell-Bellona', 'mnv', null, null, 384.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6664, 'Mon', 'mnw', null, null, 384.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6665, 'Manikion', 'mnx', null, null, 384.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6666, 'Manyawa', 'mny', null, null, 384.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6667, 'Moni', 'mnz', null, null, 384.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6668, 'Mwan', 'moa', null, null, 384.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6669, 'Mocov?', 'moc', null, null, 385.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6670, 'Montagnais', 'moe', null, null, 385.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6671, 'Mongondow', 'mog', null, null, 385.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6672, 'Mohawk', 'moh', null, null, 385.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6673, 'Mboi', 'moi', null, null, 385.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6674, 'Monzombo', 'moj', null, null, 385.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6675, 'Morori', 'mok', null, null, 385.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6676, 'Mongolian', 'mon', null, null, 385.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6677, 'Monom', 'moo', null, null, 385.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6678, 'Mop?n Maya', 'mop', null, null, 385.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6679, 'Mor (Bomberai Peninsula)', 'moq', null, null, 386.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6680, 'Moro', 'mor', null, null, 386.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6681, 'Mossi', 'mos', null, null, 386.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6682, 'Bar?', 'mot', null, null, 386.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6683, 'Mogum', 'mou', null, null, 386.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6684, 'Mohave', 'mov', null, null, 386.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6685, 'Moi (Congo)', 'mow', null, null, 386.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6686, 'Molima', 'mox', null, null, 386.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6687, 'Shekkacho', 'moy', null, null, 386.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6688, 'Mukulu', 'moz', null, null, 386.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6689, 'Mpoto', 'mpa', null, null, 387.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6690, 'Mullukmulluk', 'mpb', null, null, 387.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6691, 'Mangarayi', 'mpc', null, null, 387.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6692, 'Machinere', 'mpd', null, null, 387.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6693, 'Majang', 'mpe', null, null, 387.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6694, 'Marba', 'mpg', null, null, 387.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6695, 'Maung', 'mph', null, null, 387.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6696, 'Mpade', 'mpi', null, null, 387.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6697, 'Martu Wangka', 'mpj', null, null, 387.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6698, 'Mbara (Chad)', 'mpk', null, null, 387.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6699, 'Middle Watut', 'mpl', null, null, 388.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6700, 'Yosond?a Mixtec', 'mpm', null, null, 388.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6701, 'Mindiri', 'mpn', null, null, 388.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6702, 'Miu', 'mpo', null, null, 388.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6703, 'Migabac', 'mpp', null, null, 388.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6704, 'Mat?s', 'mpq', null, null, 388.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6705, 'Vangunu', 'mpr', null, null, 388.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6706, 'Dadibi', 'mps', null, null, 388.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6707, 'Mian', 'mpt', null, null, 388.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6708, 'Makur?p', 'mpu', null, null, 388.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6709, 'Mungkip', 'mpv', null, null, 389.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6710, 'Mapidian', 'mpw', null, null, 389.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6711, 'Misima-Panaeati', 'mpx', null, null, 389.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6712, 'Mapia', 'mpy', null, null, 389.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6713, 'Mpi', 'mpz', null, null, 389.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6714, 'Maba (Indonesia)', 'mqa', null, null, 389.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6715, 'Mbuko', 'mqb', null, null, 389.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6716, 'Mangole', 'mqc', null, null, 389.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6717, 'Matepi', 'mqe', null, null, 389.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6718, 'Momuna', 'mqf', null, null, 389.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6719, 'Kota Bangun Kutai Malay', 'mqg', null, null, 390.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6720, 'Tlazoyaltepec Mixtec', 'mqh', null, null, 390.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6721, 'Mariri', 'mqi', null, null, 390.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6722, 'Mamasa', 'mqj', null, null, 390.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6723, 'Rajah Kabunsuwan Manobo', 'mqk', null, null, 390.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6724, 'Mbelime', 'mql', null, null, 390.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6725, 'South Marquesan', 'mqm', null, null, 390.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6726, 'Moronene', 'mqn', null, null, 390.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6727, 'Modole', 'mqo', null, null, 390.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6728, 'Manipa', 'mqp', null, null, 390.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6729, 'Minokok', 'mqq', null, null, 391.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6730, 'Mander', 'mqr', null, null, 391.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6731, 'West Makian', 'mqs', null, null, 391.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6732, 'Mok', 'mqt', null, null, 391.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6733, 'Mandari', 'mqu', null, null, 391.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6734, 'Mosimo', 'mqv', null, null, 391.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6735, 'Murupi', 'mqw', null, null, 391.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6736, 'Mamuju', 'mqx', null, null, 391.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6737, 'Manggarai', 'mqy', null, null, 391.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6738, 'Pano', 'mqz', null, null, 391.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6739, 'Mlabri', 'mra', null, null, 392.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6740, 'Marino', 'mrb', null, null, 392.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6741, 'Maricopa', 'mrc', null, null, 392.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6742, 'Western Magar', 'mrd', null, null, 392.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6743, 'Elseng', 'mrf', null, null, 392.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6744, 'Mising', 'mrg', null, null, 392.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6745, 'Mara Chin', 'mrh', null, null, 392.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6746, 'Maori', 'mri', null, null, 392.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6747, 'Western Mari', 'mrj', null, null, 392.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6748, 'Hmwaveke', 'mrk', null, null, 392.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6749, 'Mortlockese', 'mrl', null, null, 393.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6750, 'Merlav', 'mrm', null, null, 393.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6751, 'Cheke Holo', 'mrn', null, null, 393.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6752, 'Mru', 'mro', null, null, 393.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6753, 'Morouas', 'mrp', null, null, 393.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6754, 'North Marquesan', 'mrq', null, null, 393.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6755, 'Maria (India)', 'mrr', null, null, 393.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6756, 'Maragus', 'mrs', null, null, 393.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6757, 'Marghi Central', 'mrt', null, null, 393.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6758, 'Mono (Cameroon)', 'mru', null, null, 393.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6759, 'Mangareva', 'mrv', null, null, 394.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6760, 'Maranao', 'mrw', null, null, 394.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6761, 'Maremgi', 'mrx', null, null, 394.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6762, 'Mandaya', 'mry', null, null, 394.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6763, 'Marind', 'mrz', null, null, 394.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6764, 'Malay (macrolanguage)', 'msa', null, null, 394.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6765, 'Masbatenyo', 'msb', null, null, 394.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6766, 'Sankaran Maninka', 'msc', null, null, 394.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6767, 'Yucatec Maya Sign Language', 'msd', null, null, 394.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6768, 'Musey', 'mse', null, null, 394.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6769, 'Mekwei', 'msf', null, null, 395.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6770, 'Moraid', 'msg', null, null, 395.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6771, 'Masikoro Malagasy', 'msh', null, null, 395.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6772, 'Sabah Malay', 'msi', null, null, 395.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6773, 'Ma (Democratic Republic of Congo)', 'msj', null, null, 395.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6774, 'Mansaka', 'msk', null, null, 395.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6775, 'Molof', 'msl', null, null, 395.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6776, 'Agusan Manobo', 'msm', null, null, 395.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6777, 'Vur?s', 'msn', null, null, 395.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6778, 'Mombum', 'mso', null, null, 395.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6779, 'Caac', 'msq', null, null, 396.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6780, 'Mongolian Sign Language', 'msr', null, null, 396.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6781, 'West Masela', 'mss', null, null, 396.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6782, 'Musom', 'msu', null, null, 396.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6783, 'Maslam', 'msv', null, null, 396.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6784, 'Mansoanka', 'msw', null, null, 396.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6785, 'Moresada', 'msx', null, null, 396.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6786, 'Aruamu', 'msy', null, null, 396.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6787, 'Momare', 'msz', null, null, 396.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6788, 'Cotabato Manobo', 'mta', null, null, 396.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6789, 'Anyin Morofo', 'mtb', null, null, 397.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6790, 'Munit', 'mtc', null, null, 397.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6791, 'Mualang', 'mtd', null, null, 397.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6792, 'Mono (Solomon Islands)', 'mte', null, null, 397.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6793, 'Murik (Papua New Guinea)', 'mtf', null, null, 397.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6794, 'Una', 'mtg', null, null, 397.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6795, 'Munggui', 'mth', null, null, 397.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6796, 'Maiwa (Papua New Guinea)', 'mti', null, null, 397.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6797, 'Moskona', 'mtj', null, null, 397.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6798, 'Mbe', 'mtk', null, null, 397.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6799, 'Montol', 'mtl', null, null, 398.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6800, 'Totontepec Mixe', 'mto', null, null, 398.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6801, 'Wich? Lhamt?s Nocten', 'mtp', null, null, 398.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6802, 'Muong', 'mtq', null, null, 398.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6803, 'Mewari', 'mtr', null, null, 398.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6804, 'Yora', 'mts', null, null, 398.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6805, 'Mota', 'mtt', null, null, 398.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6806, 'Tututepec Mixtec', 'mtu', null, null, 398.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6807, 'Asaroo', 'mtv', null, null, 398.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6808, 'Southern Binukidnon', 'mtw', null, null, 398.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6809, 'Tida? Mixtec', 'mtx', null, null, 399.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6810, 'Nabi', 'mty', null, null, 399.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6811, 'Mundang', 'mua', null, null, 399.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6812, 'Mubi', 'mub', null, null, 399.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6813, 'Ajumbu', 'muc', null, null, 399.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6814, 'Mednyj Aleut', 'mud', null, null, 399.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6815, 'Media Lengua', 'mue', null, null, 399.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6816, 'Musgu', 'mug', null, null, 399.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6817, 'M?nd?', 'muh', null, null, 399.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6818, 'Musi', 'mui', null, null, 399.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6819, 'Mabire', 'muj', null, null, 400.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6820, 'Mugom', 'muk', null, null, 400.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6821, 'Maiwala', 'mum', null, null, 400.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6822, 'Nyong', 'muo', null, null, 400.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6823, 'Malvi', 'mup', null, null, 400.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6824, 'Eastern Xiangxi Miao', 'muq', null, null, 400.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6825, 'Murle', 'mur', null, null, 400.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6826, 'Creek', 'mus', null, null, 400.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6827, 'Western Muria', 'mut', null, null, 400.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6828, 'Yaaku', 'muu', null, null, 400.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6829, 'Muthuvan', 'muv', null, null, 401.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6830, 'Bo-Ung', 'mux', null, null, 401.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6831, 'Muyang', 'muy', null, null, 401.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6832, 'Mursi', 'muz', null, null, 401.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6833, 'Manam', 'mva', null, null, 401.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6834, 'Mamboru', 'mvd', null, null, 401.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6835, 'Marwari (Pakistan)', 'mve', null, null, 401.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6836, 'Peripheral Mongolian', 'mvf', null, null, 401.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6837, 'Yucua?e Mixtec', 'mvg', null, null, 401.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6838, 'Mulgi', 'mvh', null, null, 401.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6839, 'Miyako', 'mvi', null, null, 402.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6840, 'Mekmek', 'mvk', null, null, 402.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6841, 'Muya', 'mvm', null, null, 402.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6842, 'Minaveha', 'mvn', null, null, 402.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6843, 'Marovo', 'mvo', null, null, 402.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6844, 'Duri', 'mvp', null, null, 402.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6845, 'Moere', 'mvq', null, null, 402.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6846, 'Marau', 'mvr', null, null, 402.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6847, 'Massep', 'mvs', null, null, 402.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6848, 'Mpotovoro', 'mvt', null, null, 402.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6849, 'Marfa', 'mvu', null, null, 403.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6850, 'Tagal Murut', 'mvv', null, null, 403.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6851, 'Machinga', 'mvw', null, null, 403.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6852, 'Meoswar', 'mvx', null, null, 403.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6853, 'Indus Kohistani', 'mvy', null, null, 403.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6854, 'Mesqan', 'mvz', null, null, 403.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6855, 'Mwatebu', 'mwa', null, null, 403.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6856, 'Juwal', 'mwb', null, null, 403.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6857, 'Are', 'mwc', null, null, 403.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6858, 'Mwera (Chimwera)', 'mwe', null, null, 403.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6859, 'Murrinh-Patha', 'mwf', null, null, 404.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6860, 'Aiklep', 'mwg', null, null, 404.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6861, 'Mouk-Aria', 'mwh', null, null, 404.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6862, 'Labo', 'mwi', null, null, 404.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6863, 'Kita Maninkakan', 'mwk', null, null, 404.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6864, 'Mirandese', 'mwl', null, null, 404.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6865, 'Sar', 'mwm', null, null, 404.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6866, 'Nyamwanga', 'mwn', null, null, 404.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6867, 'Central Maewo', 'mwo', null, null, 404.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6868, 'Kala Lagaw Ya', 'mwp', null, null, 404.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6869, 'M?n Chin', 'mwq', null, null, 405.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6870, 'Marwari', 'mwr', null, null, 405.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6871, 'Mwimbi-Muthambi', 'mws', null, null, 405.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6872, 'Moken', 'mwt', null, null, 405.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6873, 'Mentawai', 'mwv', null, null, 405.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6874, 'Hmong Daw', 'mww', null, null, 405.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6875, 'Mediak', 'mwx', null, null, 405.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6876, 'Mosiro', 'mwy', null, null, 405.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6877, 'Moingi', 'mwz', null, null, 405.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6878, 'Northwest Oaxaca Mixtec', 'mxa', null, null, 405.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6879, 'Tezoatl?n Mixtec', 'mxb', null, null, 406.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6880, 'Manyika', 'mxc', null, null, 406.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6881, 'Modang', 'mxd', null, null, 406.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6882, 'Mele-Fila', 'mxe', null, null, 406.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6883, 'Malgbe', 'mxf', null, null, 406.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6884, 'Mbangala', 'mxg', null, null, 406.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6885, 'Mvuba', 'mxh', null, null, 406.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6886, 'Miju-Mishmi', 'mxj', null, null, 406.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6887, 'Monumbo', 'mxk', null, null, 406.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6888, 'Maxi Gbe', 'mxl', null, null, 406.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6889, 'Meramera', 'mxm', null, null, 407.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6890, 'Moi (Indonesia)', 'mxn', null, null, 407.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6891, 'Mbowe', 'mxo', null, null, 407.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6892, 'Tlahuitoltepec Mixe', 'mxp', null, null, 407.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6893, 'Juquila Mixe', 'mxq', null, null, 407.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6894, 'Murik (Malaysia)', 'mxr', null, null, 407.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6895, 'Huitepec Mixtec', 'mxs', null, null, 407.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6896, 'Jamiltepec Mixtec', 'mxt', null, null, 407.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6897, 'Mada (Cameroon)', 'mxu', null, null, 407.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6898, 'Metlat?noc Mixtec', 'mxv', null, null, 407.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6899, 'Namo', 'mxw', null, null, 408.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6900, 'Mahou', 'mxx', null, null, 408.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6901, 'Southeastern Nochixtl?n Mixtec', 'mxy', null, null, 408.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6902, 'Central Masela', 'mxz', null, null, 408.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6903, 'Burmese', 'mya', null, null, 408.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6904, 'Mbay', 'myb', null, null, 408.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6905, 'Mayeka', 'myc', null, null, 408.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6906, 'Maramba', 'myd', null, null, 408.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6907, 'Myene', 'mye', null, null, 408.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6908, 'Bambassi', 'myf', null, null, 408.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6909, 'Manta', 'myg', null, null, 409.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6910, 'Makah', 'myh', null, null, 409.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6911, 'Mina (India)', 'myi', null, null, 409.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6912, 'Mangayat', 'myj', null, null, 409.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6913, 'Mamara Senoufo', 'myk', null, null, 409.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6914, 'Moma', 'myl', null, null, 409.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6915, 'Meen', 'mym', null, null, 409.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6916, 'Anfillo', 'myo', null, null, 409.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6917, 'Pirah?', 'myp', null, null, 409.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6918, 'Muniche', 'myr', null, null, 409.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6919, 'Munduruk?', 'myu', null, null, 410.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6920, 'Erzya', 'myv', null, null, 410.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6921, 'Muyuw', 'myw', null, null, 410.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6922, 'Masaaba', 'myx', null, null, 410.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6923, 'Macuna', 'myy', null, null, 410.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6924, 'Santa Mar?a Zacatepec Mixtec', 'mza', null, null, 410.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6925, 'Tumzabt', 'mzb', null, null, 410.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6926, 'Madagascar Sign Language', 'mzc', null, null, 410.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6927, 'Malimba', 'mzd', null, null, 410.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6928, 'Morawa', 'mze', null, null, 410.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6929, 'Monastic Sign Language', 'mzg', null, null, 411.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6930, 'Wich? Lhamt?s G?isnay', 'mzh', null, null, 411.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6931, 'Ixcatl?n Mazatec', 'mzi', null, null, 411.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6932, 'Manya', 'mzj', null, null, 411.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6933, 'Nigeria Mambila', 'mzk', null, null, 411.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6934, 'Mazatl?n Mixe', 'mzl', null, null, 411.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6935, 'Mumuye', 'mzm', null, null, 411.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6936, 'Mazanderani', 'mzn', null, null, 411.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6937, 'Movima', 'mzp', null, null, 411.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6938, 'Mori Atas', 'mzq', null, null, 411.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6939, 'Mar?bo', 'mzr', null, null, 412.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6940, 'Macanese', 'mzs', null, null, 412.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6941, 'Mintil', 'mzt', null, null, 412.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6942, 'Inapang', 'mzu', null, null, 412.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6943, 'Manza', 'mzv', null, null, 412.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6944, 'Deg', 'mzw', null, null, 412.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6945, 'Mawayana', 'mzx', null, null, 412.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6946, 'Mozambican Sign Language', 'mzy', null, null, 412.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6947, 'Maiadomu', 'mzz', null, null, 412.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6948, 'Namla', 'naa', null, null, 412.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6949, 'Southern Nambiku?ra', 'nab', null, null, 413.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6950, 'Narak', 'nac', null, null, 413.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6951, 'Nakaela', 'nae', null, null, 413.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6952, 'Nabak', 'naf', null, null, 413.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6953, 'Naga Pidgin', 'nag', null, null, 413.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6954, 'Nalu', 'naj', null, null, 413.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6955, 'Nakanai', 'nak', null, null, 413.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6956, 'Nalik', 'nal', null, null, 413.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6957, 'Ngangityemerri', 'nam', null, null, 413.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6958, 'Min Nan Chinese', 'nan', null, null, 413.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6959, 'Naaba', 'nao', null, null, 414.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6960, 'Neapolitan', 'nap', null, null, 414.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6961, 'Khoekhoe', 'naq', null, null, 414.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6962, 'Iguta', 'nar', null, null, 414.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6963, 'Naasioi', 'nas', null, null, 414.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6964, 'Cahungwarya', 'nat', null, null, 414.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6965, 'Nauru', 'nau', null, null, 414.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6966, 'Navajo', 'nav', null, null, 414.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6967, 'Nawuri', 'naw', null, null, 414.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6968, 'Nakwi', 'nax', null, null, 414.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6969, 'Coatepec Nahuatl', 'naz', null, null, 415.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6970, 'Nyemba', 'nba', null, null, 415.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6971, 'Ndoe', 'nbb', null, null, 415.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6972, 'Chang Naga', 'nbc', null, null, 415.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6973, 'Ngbinda', 'nbd', null, null, 415.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6974, 'Konyak Naga', 'nbe', null, null, 415.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6975, 'Nagarchal', 'nbg', null, null, 415.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6976, 'Ngamo', 'nbh', null, null, 415.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6977, 'Mao Naga', 'nbi', null, null, 415.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6978, 'Ngarinman', 'nbj', null, null, 415.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6979, 'Nake', 'nbk', null, null, 416.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6980, 'South Ndebele', 'nbl', null, null, 416.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6981, 'Ngbaka Mabo', 'nbm', null, null, 416.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6982, 'Kuri', 'nbn', null, null, 416.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6983, 'Nkukoli', 'nbo', null, null, 416.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6984, 'Nnam', 'nbp', null, null, 416.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6985, 'Nggem', 'nbq', null, null, 416.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6986, 'Numana-Nunku-Gbantu-Numbu', 'nbr', null, null, 416.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6987, 'Namibian Sign Language', 'nbs', null, null, 416.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6988, 'Na', 'nbt', null, null, 416.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6989, 'Rongmei Naga', 'nbu', null, null, 417.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6990, 'Ngamambo', 'nbv', null, null, 417.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6991, 'Southern Ngbandi', 'nbw', null, null, 417.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6992, 'Ningera', 'nby', null, null, 417.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6993, 'Iyo', 'nca', null, null, 417.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6994, 'Central Nicobarese', 'ncb', null, null, 417.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6995, 'Ponam', 'ncc', null, null, 417.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6996, 'Nachering', 'ncd', null, null, 417.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6997, 'Yale', 'nce', null, null, 417.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6998, 'Notsi', 'ncf', null, null, 417.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 6999, 'Nisgaa', 'ncg', null, null, 418.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7000, 'Central Huasteca Nahuatl', 'nch', null, null, 418.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7001, 'Northern Puebla Nahuatl', 'ncj', null, null, 418.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7002, 'Nakara', 'nck', null, null, 418.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7003, 'Michoac?n Nahuatl', 'ncl', null, null, 418.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7004, 'Nambo', 'ncm', null, null, 418.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7005, 'Nauna', 'ncn', null, null, 418.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7006, 'Sibe', 'nco', null, null, 418.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7007, 'Ndaktup', 'ncp', null, null, 418.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7008, 'Ncane', 'ncr', null, null, 418.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7009, 'Nicaraguan Sign Language', 'ncs', null, null, 419.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7010, 'Chothe Naga', 'nct', null, null, 419.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7011, 'Chumburung', 'ncu', null, null, 419.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7012, 'Central Puebla Nahuatl', 'ncx', null, null, 419.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7013, 'Ndasa', 'nda', null, null, 419.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7014, 'Kenswei Nsei', 'ndb', null, null, 419.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7015, 'Ndau', 'ndc', null, null, 419.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7016, 'Nde-Nsele-Nta', 'ndd', null, null, 419.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7017, 'North Ndebele', 'nde', null, null, 419.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7018, 'Ndengereko', 'ndg', null, null, 419.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7019, 'Ndali', 'ndh', null, null, 420.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7020, 'Samba Leko', 'ndi', null, null, 420.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7021, 'Ndamba', 'ndj', null, null, 420.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7022, 'Ndaka', 'ndk', null, null, 420.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7023, 'Ndolo', 'ndl', null, null, 420.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7024, 'Ndam', 'ndm', null, null, 420.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7025, 'Ngundi', 'ndn', null, null, 420.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7026, 'Ndonga', 'ndo', null, null, 420.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7027, 'Ndo', 'ndp', null, null, 420.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7028, 'Ndombe', 'ndq', null, null, 420.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7029, 'Ndoola', 'ndr', null, null, 421.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7030, 'Low German', 'nds', null, null, 421.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7031, 'Ndunga', 'ndt', null, null, 421.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7032, 'Dugun', 'ndu', null, null, 421.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7033, 'Ndut', 'ndv', null, null, 421.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7034, 'Ndobo', 'ndw', null, null, 421.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7035, 'Nduga', 'ndx', null, null, 421.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7036, 'Lutos', 'ndy', null, null, 421.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7037, 'Ndogo', 'ndz', null, null, 421.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7038, 'Eastern Ngada', 'nea', null, null, 421.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7039, 'Toura (Cote dIvoire)', 'neb', null, null, 422.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7040, 'Nedebang', 'nec', null, null, 422.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7041, 'Nde-Gbite', 'ned', null, null, 422.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7042, 'N?l?mwa-Nixumwak', 'nee', null, null, 422.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7043, 'Nefamese', 'nef', null, null, 422.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7044, 'Negidal', 'neg', null, null, 422.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7045, 'Nyenkha', 'neh', null, null, 422.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7046, 'Neko', 'nej', null, null, 422.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7047, 'Neku', 'nek', null, null, 422.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7048, 'Nemi', 'nem', null, null, 422.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7049, 'Nengone', 'nen', null, null, 423.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7050, 'N?-Meo', 'neo', null, null, 423.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7051, 'Nepali (macrolanguage)', 'nep', null, null, 423.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7052, 'North Central Mixe', 'neq', null, null, 423.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7053, 'Yahadian', 'ner', null, null, 423.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7054, 'Bhoti Kinnauri', 'nes', null, null, 423.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7055, 'Nete', 'net', null, null, 423.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7056, 'Nyaheun', 'nev', null, null, 423.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7057, 'Newari', 'new', null, null, 423.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7058, 'Neme', 'nex', null, null, 423.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7059, 'Neyo', 'ney', null, null, 424.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7060, 'Nez Perce', 'nez', null, null, 424.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7061, 'Dhao', 'nfa', null, null, 424.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7062, 'Ahwai', 'nfd', null, null, 424.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7063, 'Ayiwo', 'nfl', null, null, 424.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7064, 'Nafaanra', 'nfr', null, null, 424.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7065, 'Mfumte', 'nfu', null, null, 424.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7066, 'Ngbaka', 'nga', null, null, 424.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7067, 'Northern Ngbandi', 'ngb', null, null, 424.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7068, 'Ngombe (Democratic Republic of Congo)', 'ngc', null, null, 424.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7069, 'Ngando (Central African Republic)', 'ngd', null, null, 425.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7070, 'Ngemba', 'nge', null, null, 425.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7071, 'Ngbaka Manza', 'ngg', null, null, 425.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7072, 'N/u', 'ngh', null, null, 425.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7073, 'Ngizim', 'ngi', null, null, 425.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7074, 'Ngie', 'ngj', null, null, 425.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7075, 'Dalabon', 'ngk', null, null, 425.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7076, 'Lomwe', 'ngl', null, null, 425.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7077, 'Ngatik Mens Creole', 'ngm', null, null, 425.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7078, 'Ngwo', 'ngn', null, null, 425.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7079, 'Ngoni', 'ngo', null, null, 426.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7080, 'Ngulu', 'ngp', null, null, 426.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7081, 'Ngurimi', 'ngq', null, null, 426.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7082, 'Engdewu', 'ngr', null, null, 426.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7083, 'Gvoko', 'ngs', null, null, 426.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7084, 'Ngeq', 'ngt', null, null, 426.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7085, 'Guerrero Nahuatl', 'ngu', null, null, 426.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7086, 'Ngwaba', 'ngw', null, null, 426.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7087, 'Nggwahyi', 'ngx', null, null, 426.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7088, 'Tibea', 'ngy', null, null, 426.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7089, 'Ngungwel', 'ngz', null, null, 427.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7090, 'Nhanda', 'nha', null, null, 427.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7091, 'Beng', 'nhb', null, null, 427.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7092, 'Chirip?', 'nhd', null, null, 427.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7093, 'Eastern Huasteca Nahuatl', 'nhe', null, null, 427.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7094, 'Nhuwala', 'nhf', null, null, 427.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7095, 'Tetelcingo Nahuatl', 'nhg', null, null, 427.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7096, 'Nahari', 'nhh', null, null, 427.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7097, 'Zacatl?n-Ahuacatl?n-Tepetzintla Nahuatl', 'nhi', null, null, 427.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7098, 'Isthmus-Cosoleacaque Nahuatl', 'nhk', null, null, 427.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7099, 'Morelos Nahuatl', 'nhm', null, null, 428.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7100, 'Central Nahuatl', 'nhn', null, null, 428.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7101, 'Takuu', 'nho', null, null, 428.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7102, 'Isthmus-Pajapan Nahuatl', 'nhp', null, null, 428.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7103, 'Huaxcaleca Nahuatl', 'nhq', null, null, 428.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7104, 'Naro', 'nhr', null, null, 428.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7105, 'Ometepec Nahuatl', 'nht', null, null, 428.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7106, 'Noone', 'nhu', null, null, 428.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7107, 'Temascaltepec Nahuatl', 'nhv', null, null, 428.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7108, 'Western Huasteca Nahuatl', 'nhw', null, null, 428.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7109, 'Isthmus-Mecayapan Nahuatl', 'nhx', null, null, 429.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7110, 'Northern Oaxaca Nahuatl', 'nhy', null, null, 429.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7111, 'Santa Mar?a La Alta Nahuatl', 'nhz', null, null, 429.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7112, 'Nias', 'nia', null, null, 429.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7113, 'Nakame', 'nib', null, null, 429.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7114, 'Niellim', 'nie', null, null, 429.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7115, 'Nek', 'nif', null, null, 429.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7116, 'Nyiha (Tanzania)', 'nih', null, null, 429.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7117, 'Nii', 'nii', null, null, 429.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7118, 'Ngaju', 'nij', null, null, 429.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7119, 'Southern Nicobarese', 'nik', null, null, 430.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7120, 'Nila', 'nil', null, null, 430.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7121, 'Nilamba', 'nim', null, null, 430.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7122, 'Ninzo', 'nin', null, null, 430.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7123, 'Nganasan', 'nio', null, null, 430.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7124, 'Nandi', 'niq', null, null, 430.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7125, 'Nimboran', 'nir', null, null, 430.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7126, 'Nimi', 'nis', null, null, 430.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7127, 'Southeastern Kolami', 'nit', null, null, 430.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7128, 'Niuean', 'niu', null, null, 430.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7129, 'Gilyak', 'niv', null, null, 431.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7130, 'Nimo', 'niw', null, null, 431.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7131, 'Hema', 'nix', null, null, 431.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7132, 'Ngiti', 'niy', null, null, 431.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7133, 'Ningil', 'niz', null, null, 431.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7134, 'Nzanyi', 'nja', null, null, 431.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7135, 'Nocte Naga', 'njb', null, null, 431.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7136, 'Ndonde Hamba', 'njd', null, null, 431.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7137, 'Lotha Naga', 'njh', null, null, 431.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7138, 'Gudanji', 'nji', null, null, 431.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7139, 'Njen', 'njj', null, null, 432.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7140, 'Njalgulgule', 'njl', null, null, 432.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7141, 'Angami Naga', 'njm', null, null, 432.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7142, 'Liangmai Naga', 'njn', null, null, 432.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7143, 'Ao Naga', 'njo', null, null, 432.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7144, 'Njerep', 'njr', null, null, 432.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7145, 'Nisa', 'njs', null, null, 432.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7146, 'Ndyuka-Trio Pidgin', 'njt', null, null, 432.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7147, 'Ngadjunmaya', 'nju', null, null, 432.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7148, 'Kunyi', 'njx', null, null, 432.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7149, 'Njyem', 'njy', null, null, 433.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7150, 'Nyishi', 'njz', null, null, 433.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7151, 'Nkoya', 'nka', null, null, 433.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7152, 'Khoibu Naga', 'nkb', null, null, 433.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7153, 'Nkongho', 'nkc', null, null, 433.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7154, 'Koireng', 'nkd', null, null, 433.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7155, 'Duke', 'nke', null, null, 433.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7156, 'Inpui Naga', 'nkf', null, null, 433.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7157, 'Nekgini', 'nkg', null, null, 433.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7158, 'Khezha Naga', 'nkh', null, null, 433.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7159, 'Thangal Naga', 'nki', null, null, 434.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7160, 'Nakai', 'nkj', null, null, 434.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7161, 'Nokuku', 'nkk', null, null, 434.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7162, 'Namat', 'nkm', null, null, 434.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7163, 'Nkangala', 'nkn', null, null, 434.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7164, 'Nkonya', 'nko', null, null, 434.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7165, 'Nkami', 'nkq', null, null, 434.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7166, 'Nukuoro', 'nkr', null, null, 434.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7167, 'North Asmat', 'nks', null, null, 434.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7168, 'Nyika (Tanzania)', 'nkt', null, null, 434.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7169, 'Bouna Kulango', 'nku', null, null, 435.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7170, 'Nyika (Malawi and Zambia)', 'nkv', null, null, 435.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7171, 'Nkutu', 'nkw', null, null, 435.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7172, 'Nkoroo', 'nkx', null, null, 435.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7173, 'Nkari', 'nkz', null, null, 435.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7174, 'Ngombale', 'nla', null, null, 435.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7175, 'Nalca', 'nlc', null, null, 435.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7176, 'Dutch', 'nld', null, null, 435.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7177, 'East Nyala', 'nle', null, null, 435.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7178, 'Gela', 'nlg', null, null, 435.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7179, 'Grangali', 'nli', null, null, 436.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7180, 'Nyali', 'nlj', null, null, 436.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7181, 'Ninia Yali', 'nlk', null, null, 436.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7182, 'Nihali', 'nll', null, null, 436.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7183, 'Ngul', 'nlo', null, null, 436.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7184, 'Lao Naga', 'nlq', null, null, 436.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7185, 'Nchumbulu', 'nlu', null, null, 436.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7186, 'Orizaba Nahuatl', 'nlv', null, null, 436.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7187, 'Nahali', 'nlx', null, null, 436.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7188, 'Nyamal', 'nly', null, null, 436.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7189, 'Nal?go', 'nlz', null, null, 437.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7190, 'Maram Naga', 'nma', null, null, 437.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7191, 'Big Nambas', 'nmb', null, null, 437.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7192, 'Ngam', 'nmc', null, null, 437.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7193, 'Ndumu', 'nmd', null, null, 437.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7194, 'Mzieme Naga', 'nme', null, null, 437.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7195, 'Tangkhul Naga (India)', 'nmf', null, null, 437.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7196, 'Kwasio', 'nmg', null, null, 437.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7197, 'Monsang Naga', 'nmh', null, null, 437.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7198, 'Nyam', 'nmi', null, null, 437.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7199, 'Ngombe (Central African Republic)', 'nmj', null, null, 438.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7200, 'Namakura', 'nmk', null, null, 438.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7201, 'Ndemli', 'nml', null, null, 438.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7202, 'Manangba', 'nmm', null, null, 438.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7203, '!X??', 'nmn', null, null, 438.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7204, 'Moyon Naga', 'nmo', null, null, 438.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7205, 'Nambya', 'nmq', null, null, 438.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7206, 'Letemboi', 'nms', null, null, 438.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7207, 'Namonuito', 'nmt', null, null, 438.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7208, 'Northeast Maidu', 'nmu', null, null, 438.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7209, 'Nimoa', 'nmw', null, null, 439.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7210, 'Nama (Papua New Guinea)', 'nmx', null, null, 439.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7211, 'Namuyi', 'nmy', null, null, 439.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7212, 'Nawdm', 'nmz', null, null, 439.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7213, 'Nyangumarta', 'nna', null, null, 439.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7214, 'Nande', 'nnb', null, null, 439.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7215, 'Nancere', 'nnc', null, null, 439.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7216, 'West Ambae', 'nnd', null, null, 439.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7217, 'Ngandyera', 'nne', null, null, 439.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7218, 'Ngaing', 'nnf', null, null, 439.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7219, 'Maring Naga', 'nng', null, null, 440.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7220, 'Ngiemboon', 'nnh', null, null, 440.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7221, 'North Nuaulu', 'nni', null, null, 440.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7222, 'Nyangatom', 'nnj', null, null, 440.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7223, 'Nankina', 'nnk', null, null, 440.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7224, 'Northern Rengma Naga', 'nnl', null, null, 440.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7225, 'Namia', 'nnm', null, null, 440.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7226, 'Ngete', 'nnn', null, null, 440.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7227, 'Norwegian Nynorsk', 'nno', null, null, 440.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7228, 'Wancho Naga', 'nnp', null, null, 440.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7229, 'Ngindo', 'nnq', null, null, 441.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7230, 'Ningye', 'nns', null, null, 441.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7231, 'Dwang', 'nnu', null, null, 441.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7232, 'Southern Nuni', 'nnw', null, null, 441.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7233, 'Nda nda', 'nnz', null, null, 441.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7234, 'Woun Meu', 'noa', null, null, 441.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7235, 'Norwegian Bokm?l', 'nob', null, null, 441.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7236, 'Nuk', 'noc', null, null, 441.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7237, 'Northern Thai', 'nod', null, null, 441.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7238, 'Nimadi', 'noe', null, null, 441.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7239, 'Nomane', 'nof', null, null, 442.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7240, 'Nogai', 'nog', null, null, 442.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7241, 'Nomu', 'noh', null, null, 442.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7242, 'Noiri', 'noi', null, null, 442.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7243, 'Nonuya', 'noj', null, null, 442.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7244, 'Numanggang', 'nop', null, null, 442.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7245, 'Ngongo', 'noq', null, null, 442.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7246, 'Norwegian', 'nor', null, null, 442.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7247, 'Eastern Nisu', 'nos', null, null, 442.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7248, 'Nomatsiguenga', 'not', null, null, 442.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7249, 'Ewage-Notu', 'nou', null, null, 443.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7250, 'Nyambo', 'now', null, null, 443.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7251, 'Noy', 'noy', null, null, 443.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7252, 'Nayi', 'noz', null, null, 443.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7253, 'Nar Phu', 'npa', null, null, 443.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7254, 'Nupbikha', 'npb', null, null, 443.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7255, 'Ponyo-Gongwang Naga', 'npg', null, null, 443.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7256, 'Phom Naga', 'nph', null, null, 443.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7257, 'Nepali (individual language)', 'npi', null, null, 443.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7258, 'Southeastern Puebla Nahuatl', 'npl', null, null, 443.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7259, 'Mondropolon', 'npn', null, null, 444.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7260, 'Pochuri Naga', 'npo', null, null, 444.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7261, 'Nipsan', 'nps', null, null, 444.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7262, 'Puimei Naga', 'npu', null, null, 444.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7263, 'Napu', 'npy', null, null, 444.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7264, 'Southern Nago', 'nqg', null, null, 444.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7265, 'Kura Ede Nago', 'nqk', null, null, 444.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7266, 'Ndom', 'nqm', null, null, 444.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7267, 'Nen', 'nqn', null, null, 444.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7268, 'N Ko', 'nqo', null, null, 444.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7269, 'Kyan-Karyaw Naga', 'nqq', null, null, 445.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7270, 'Akyaung Ari Naga', 'nqy', null, null, 445.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7271, 'Ngom', 'nra', null, null, 445.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7272, 'Nara', 'nrb', null, null, 445.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7273, 'Southern Rengma Naga', 'nre', null, null, 445.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7274, 'J?rriais', 'nrf', null, null, 445.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7275, 'Narango', 'nrg', null, null, 445.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7276, 'Chokri Naga', 'nri', null, null, 445.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7277, 'Ngarla', 'nrk', null, null, 445.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7278, 'Ngarluma', 'nrl', null, null, 445.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7279, 'Narom', 'nrm', null, null, 446.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7280, 'Narua', 'nru', null, null, 446.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7281, 'Lala', 'nrz', null, null, 446.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7282, 'Sangtam Naga', 'nsa', null, null, 446.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7283, 'Nshi', 'nsc', null, null, 446.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7284, 'Southern Nisu', 'nsd', null, null, 446.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7285, 'Nsenga', 'nse', null, null, 446.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7286, 'Northwestern Nisu', 'nsf', null, null, 446.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7287, 'Ngasa', 'nsg', null, null, 446.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7288, 'Ngoshie', 'nsh', null, null, 446.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7289, 'Nigerian Sign Language', 'nsi', null, null, 447.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7290, 'Naskapi', 'nsk', null, null, 447.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7291, 'Norwegian Sign Language', 'nsl', null, null, 447.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7292, 'Sumi Naga', 'nsm', null, null, 447.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7293, 'Nehan', 'nsn', null, null, 447.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7294, 'Pedi', 'nso', null, null, 447.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7295, 'Nepalese Sign Language', 'nsp', null, null, 447.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7296, 'Northern Sierra Miwok', 'nsq', null, null, 447.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7297, 'Maritime Sign Language', 'nsr', null, null, 447.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7298, 'Nali', 'nss', null, null, 447.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7299, 'Tase Naga', 'nst', null, null, 448.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7300, 'Sierra Negra Nahuatl', 'nsu', null, null, 448.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7301, 'Southwestern Nisu', 'nsv', null, null, 448.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7302, 'Navut', 'nsw', null, null, 448.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7303, 'Nsongo', 'nsx', null, null, 448.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7304, 'Nasal', 'nsy', null, null, 448.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7305, 'Nisenan', 'nsz', null, null, 448.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7306, 'Northern Tidung', 'ntd', null, null, 448.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7307, 'Nathembo', 'nte', null, null, 448.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7308, 'Natioro', 'nti', null, null, 448.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7309, 'Ngaanyatjarra', 'ntj', null, null, 449.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7310, 'Ikoma-Nata-Isenye', 'ntk', null, null, 449.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7311, 'Nateni', 'ntm', null, null, 449.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7312, 'Ntomba', 'nto', null, null, 449.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7313, 'Northern Tepehuan', 'ntp', null, null, 449.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7314, 'Delo', 'ntr', null, null, 449.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7315, 'Nat?gu', 'ntu', null, null, 449.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7316, 'Tangkhul Naga (Myanmar)', 'ntx', null, null, 449.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7317, 'Mantsi', 'nty', null, null, 449.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7318, 'Natanzi', 'ntz', null, null, 449.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7319, 'Yuanga', 'nua', null, null, 450.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7320, 'Ngala', 'nud', null, null, 450.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7321, 'Ngundu', 'nue', null, null, 450.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7322, 'Nusu', 'nuf', null, null, 450.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7323, 'Ndunda', 'nuh', null, null, 450.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7324, 'Ngumbi', 'nui', null, null, 450.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7325, 'Nyole', 'nuj', null, null, 450.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7326, 'Nuu-chah-nulth', 'nuk', null, null, 450.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7327, 'Nusa Laut', 'nul', null, null, 450.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7328, 'Niuafo ou', 'num', null, null, 450.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7329, 'Anong', 'nun', null, null, 451.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7330, 'Ngu?n', 'nuo', null, null, 451.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7331, 'Nupe-Nupe-Tako', 'nup', null, null, 451.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7332, 'Nukumanu', 'nuq', null, null, 451.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7333, 'Nukuria', 'nur', null, null, 451.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7334, 'Nuer', 'nus', null, null, 451.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7335, 'Nung (Viet Nam)', 'nut', null, null, 451.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7336, 'Ngbundu', 'nuu', null, null, 451.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7337, 'Northern Nuni', 'nuv', null, null, 451.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7338, 'Nguluwan', 'nuw', null, null, 451.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7339, 'Mehek', 'nux', null, null, 452.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7340, 'Nunggubuyu', 'nuy', null, null, 452.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7341, 'Tlamacazapa Nahuatl', 'nuz', null, null, 452.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7342, 'Nasarian', 'nvh', null, null, 452.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7343, 'Namiae', 'nvm', null, null, 452.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7344, 'Nyokon', 'nvo', null, null, 452.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7345, 'Nyabwa', 'nwb', null, null, 452.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7346, 'Ngwe', 'nwe', null, null, 452.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7347, 'Southwest Tanna', 'nwi', null, null, 452.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7348, 'Nyamusa-Molo', 'nwm', null, null, 452.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7349, 'Nawaru', 'nwr', null, null, 453.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7350, 'Nauete', 'nxa', null, null, 453.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7351, 'Ngando (Democratic Republic of Congo)', 'nxd', null, null, 453.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7352, 'Nage', 'nxe', null, null, 453.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7353, 'Ngad a', 'nxg', null, null, 453.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7354, 'Nindi', 'nxi', null, null, 453.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7355, 'Koki Naga', 'nxk', null, null, 453.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7356, 'South Nuaulu', 'nxl', null, null, 453.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7357, 'Ndambomo', 'nxo', null, null, 453.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7358, 'Naxi', 'nxq', null, null, 453.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7359, 'Ninggerum', 'nxr', null, null, 454.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7360, 'Nafri', 'nxx', null, null, 454.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7361, 'Nyanja', 'nya', null, null, 454.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7362, 'Nyangbo', 'nyb', null, null, 454.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7363, 'Nyanga-li', 'nyc', null, null, 454.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7364, 'Nyore', 'nyd', null, null, 454.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7365, 'Nyengo', 'nye', null, null, 454.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7366, 'Giryama', 'nyf', null, null, 454.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7367, 'Nyindu', 'nyg', null, null, 454.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7368, 'Nyigina', 'nyh', null, null, 454.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7369, 'Ama (Sudan)', 'nyi', null, null, 455.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7370, 'Nyanga', 'nyj', null, null, 455.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7371, 'Nyaneka', 'nyk', null, null, 455.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7372, 'Nyeu', 'nyl', null, null, 455.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7373, 'Nyamwezi', 'nym', null, null, 455.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7374, 'Nyankole', 'nyn', null, null, 455.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7375, 'Nyoro', 'nyo', null, null, 455.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7376, 'Nayini', 'nyq', null, null, 455.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7377, 'Nyiha (Malawi)', 'nyr', null, null, 455.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7378, 'Nyunga', 'nys', null, null, 455.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7379, 'Nyungwe', 'nyu', null, null, 456.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7380, 'Nyaw', 'nyw', null, null, 456.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7381, 'Nyakyusa-Ngonde', 'nyy', null, null, 456.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7382, 'Tigon Mbembe', 'nza', null, null, 456.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7383, 'Njebi', 'nzb', null, null, 456.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7384, 'Nzima', 'nzi', null, null, 456.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7385, 'Nzakara', 'nzk', null, null, 456.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7386, 'Zeme Naga', 'nzm', null, null, 456.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7387, 'New Zealand Sign Language', 'nzs', null, null, 456.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7388, 'Teke-Nzikou', 'nzu', null, null, 456.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7389, 'Nzakambay', 'nzy', null, null, 457.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7390, 'Nanga Dama Dogon', 'nzz', null, null, 457.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7391, 'Orok', 'oaa', null, null, 457.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7392, 'Oroch', 'oac', null, null, 457.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7393, 'Southern Bontok', 'obk', null, null, 457.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7394, 'Oblo', 'obl', null, null, 457.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7395, 'Obo Manobo', 'obo', null, null, 457.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7396, 'Obulom', 'obu', null, null, 457.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7397, 'Ocaina', 'oca', null, null, 457.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7398, 'Occitan (post 1500)', 'oci', null, null, 457.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7399, 'Atzingo Matlatzinca', 'ocu', null, null, 458.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7400, 'Odut', 'oda', null, null, 458.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7401, 'Od', 'odk', null, null, 458.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7402, 'Odual', 'odu', null, null, 458.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7403, 'Efutop', 'ofu', null, null, 458.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7404, 'Ogbia', 'ogb', null, null, 458.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7405, 'Ogbah', 'ogc', null, null, 458.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7406, 'Ogbogolo', 'ogg', null, null, 458.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7407, 'Khana', 'ogo', null, null, 458.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7408, 'Ogbronuagum', 'ogu', null, null, 458.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7409, 'Oirata', 'oia', null, null, 459.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7410, 'Inebu One', 'oin', null, null, 459.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7411, 'Northwestern Ojibwa', 'ojb', null, null, 459.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7412, 'Central Ojibwa', 'ojc', null, null, 459.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7413, 'Eastern Ojibwa', 'ojg', null, null, 459.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7414, 'Ojibwa', 'oji', null, null, 459.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7415, 'Severn Ojibwa', 'ojs', null, null, 459.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7416, 'Ontong Java', 'ojv', null, null, 459.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7417, 'Western Ojibwa', 'ojw', null, null, 459.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7418, 'Okanagan', 'oka', null, null, 459.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7419, 'Okobo', 'okb', null, null, 460.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7420, 'Okodia', 'okd', null, null, 460.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7421, 'Okpe (Southwestern Edo)', 'oke', null, null, 460.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7422, 'Koresh-e Rostam', 'okh', null, null, 460.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7423, 'Okiek', 'oki', null, null, 460.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7424, 'Kwamtim One', 'okk', null, null, 460.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7425, 'Oki-No-Erabu', 'okn', null, null, 460.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7426, 'Kirike', 'okr', null, null, 460.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7427, 'Oko-Eni-Osayen', 'oks', null, null, 460.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7428, 'Oku', 'oku', null, null, 460.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7429, 'Orokaiva', 'okv', null, null, 461.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7430, 'Okpe (Northwestern Edo)', 'okx', null, null, 461.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7431, 'Walungge', 'ola', null, null, 461.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7432, 'Mochi', 'old', null, null, 461.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7433, 'Olekha', 'ole', null, null, 461.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7434, 'Oloma', 'olm', null, null, 461.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7435, 'Livvi', 'olo', null, null, 461.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7436, 'Olrat', 'olr', null, null, 461.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7437, 'Kuvale', 'olu', null, null, 461.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7438, 'Omaha-Ponca', 'oma', null, null, 461.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7439, 'East Ambae', 'omb', null, null, 462.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7440, 'Omagua', 'omg', null, null, 462.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7441, 'Omi', 'omi', null, null, 462.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7442, 'Ombo', 'oml', null, null, 462.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7443, 'Utarmbung', 'omo', null, null, 462.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7444, 'Omotik', 'omt', null, null, 462.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7445, 'South Tairora', 'omw', null, null, 462.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7446, 'Ona', 'ona', null, null, 462.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7447, 'Lingao', 'onb', null, null, 462.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7448, 'Oneida', 'one', null, null, 462.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7449, 'Olo', 'ong', null, null, 463.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7450, 'Onin', 'oni', null, null, 463.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7451, 'Onjob', 'onj', null, null, 463.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7452, 'Kabore One', 'onk', null, null, 463.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7453, 'Onobasulu', 'onn', null, null, 463.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7454, 'Onondaga', 'ono', null, null, 463.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7455, 'Sartang', 'onp', null, null, 463.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7456, 'Northern One', 'onr', null, null, 463.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7457, 'Ono', 'ons', null, null, 463.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7458, 'Ontenu', 'ont', null, null, 463.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7459, 'Unua', 'onu', null, null, 464.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7460, 'Onin Based Pidgin', 'onx', null, null, 464.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7461, 'Tohono O odham', 'ood', null, null, 464.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7462, 'Ong', 'oog', null, null, 464.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7463, '?nge', 'oon', null, null, 464.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7464, 'Oorlams', 'oor', null, null, 464.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7465, 'Okpamheri', 'opa', null, null, 464.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7466, 'Kopkaka', 'opk', null, null, 464.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7467, 'Oksapmin', 'opm', null, null, 464.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7468, 'Opao', 'opo', null, null, 464.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7469, 'Ofay?', 'opy', null, null, 465.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7470, 'Oroha', 'ora', null, null, 465.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7471, 'Orma', 'orc', null, null, 465.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7472, 'Orej?n', 'ore', null, null, 465.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7473, 'Oring', 'org', null, null, 465.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7474, 'Oroqen', 'orh', null, null, 465.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7475, 'Oriya (macrolanguage)', 'ori', null, null, 465.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7476, 'Oromo', 'orm', null, null, 465.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7477, 'Orang Kanaq', 'orn', null, null, 465.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7478, 'Orokolo', 'oro', null, null, 465.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7479, 'Oruma', 'orr', null, null, 466.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7480, 'Orang Seletar', 'ors', null, null, 466.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7481, 'Adivasi Oriya', 'ort', null, null, 466.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7482, 'Ormuri', 'oru', null, null, 466.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7483, 'Oro Win', 'orw', null, null, 466.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7484, 'Oro', 'orx', null, null, 466.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7485, 'Odia', 'ory', null, null, 466.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7486, 'Ormu', 'orz', null, null, 466.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7487, 'Osage', 'osa', null, null, 466.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7488, 'Osing', 'osi', null, null, 466.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7489, 'Ososo', 'oso', null, null, 467.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7490, 'Ossetian', 'oss', null, null, 467.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7491, 'Osatu', 'ost', null, null, 467.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7492, 'Southern One', 'osu', null, null, 467.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7493, 'Ot Danum', 'otd', null, null, 467.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7494, 'Mezquital Otomi', 'ote', null, null, 467.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7495, 'Tilapa Otomi', 'otl', null, null, 467.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7496, 'Eastern Highland Otomi', 'otm', null, null, 467.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7497, 'Tenango Otomi', 'otn', null, null, 467.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7498, 'Quer?taro Otomi', 'otq', null, null, 467.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7499, 'Otoro', 'otr', null, null, 468.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7500, 'Estado de M?xico Otomi', 'ots', null, null, 468.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7501, 'Temoaya Otomi', 'ott', null, null, 468.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7502, 'Ottawa', 'otw', null, null, 468.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7503, 'Texcatepec Otomi', 'otx', null, null, 468.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7504, 'Ixtenco Otomi', 'otz', null, null, 468.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7505, 'Tagargrent', 'oua', null, null, 468.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7506, 'Glio-Oubi', 'oub', null, null, 468.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7507, 'Oune', 'oue', null, null, 468.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7508, 'Owiniga', 'owi', null, null, 468.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7509, 'Oy', 'oyb', null, null, 469.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7510, 'Oyda', 'oyd', null, null, 469.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7511, 'Wayampi', 'oym', null, null, 469.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7512, 'Oya oya', 'oyy', null, null, 469.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7513, 'Koonzime', 'ozm', null, null, 469.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7514, 'Parec?s', 'pab', null, null, 469.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7515, 'Pacoh', 'pac', null, null, 469.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7516, 'Paumar?', 'pad', null, null, 469.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7517, 'Pagibete', 'pae', null, null, 469.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7518, 'Pangasinan', 'pag', null, null, 469.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7519, 'Tenharim', 'pah', null, null, 470.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7520, 'Pe', 'pai', null, null, 470.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7521, 'Parakan?', 'pak', null, null, 470.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7522, 'Pampanga', 'pam', null, null, 470.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7523, 'Panjabi', 'pan', null, null, 470.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7524, 'Northern Paiute', 'pao', null, null, 470.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7525, 'Papiamento', 'pap', null, null, 470.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7526, 'Parya', 'paq', null, null, 470.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7527, 'Panamint', 'par', null, null, 470.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7528, 'Papasena', 'pas', null, null, 470.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7529, 'Papitalai', 'pat', null, null, 471.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7530, 'Palauan', 'pau', null, null, 471.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7531, 'Paka?snovos', 'pav', null, null, 471.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7532, 'Pawnee', 'paw', null, null, 471.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7533, 'Pech', 'pay', null, null, 471.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7534, 'P?ez', 'pbb', null, null, 471.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7535, 'Patamona', 'pbc', null, null, 471.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7536, 'Mezontla Popoloca', 'pbe', null, null, 471.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7537, 'Coyotepec Popoloca', 'pbf', null, null, 471.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7538, 'Eapa Woromaipu', 'pbh', null, null, 471.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7539, 'Parkwa', 'pbi', null, null, 472.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7540, 'Mak (Nigeria)', 'pbl', null, null, 472.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7541, 'Kpasam', 'pbn', null, null, 472.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7542, 'Papel', 'pbo', null, null, 472.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7543, 'Badyara', 'pbp', null, null, 472.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7544, 'Pangwa', 'pbr', null, null, 472.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7545, 'Central Pame', 'pbs', null, null, 472.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7546, 'Southern Pashto', 'pbt', null, null, 472.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7547, 'Northern Pashto', 'pbu', null, null, 472.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7548, 'Pnar', 'pbv', null, null, 472.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7549, 'Pyu (Papua New Guinea)', 'pby', null, null, 473.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7550, 'Santa In?s Ahuatempan Popoloca', 'pca', null, null, 473.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7551, 'Pear', 'pcb', null, null, 473.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7552, 'Bouyei', 'pcc', null, null, 473.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7553, 'Picard', 'pcd', null, null, 473.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7554, 'Ruching Palaung', 'pce', null, null, 473.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7555, 'Paliyan', 'pcf', null, null, 473.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7556, 'Paniya', 'pcg', null, null, 473.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7557, 'Pardhan', 'pch', null, null, 473.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7558, 'Duruwa', 'pci', null, null, 473.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7559, 'Parenga', 'pcj', null, null, 474.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7560, 'Paite Chin', 'pck', null, null, 474.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7561, 'Pardhi', 'pcl', null, null, 474.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7562, 'Nigerian Pidgin', 'pcm', null, null, 474.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7563, 'Piti', 'pcn', null, null, 474.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7564, 'Pacahuara', 'pcp', null, null, 474.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7565, 'Pyapun', 'pcw', null, null, 474.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7566, 'Anam', 'pda', null, null, 474.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7567, 'Pennsylvania German', 'pdc', null, null, 474.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7568, 'Pa Di', 'pdi', null, null, 474.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7569, 'Podena', 'pdn', null, null, 475.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7570, 'Padoe', 'pdo', null, null, 475.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7571, 'Plautdietsch', 'pdt', null, null, 475.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7572, 'Kayan', 'pdu', null, null, 475.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7573, 'Peranakan Indonesian', 'pea', null, null, 475.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7574, 'Mala (Papua New Guinea)', 'ped', null, null, 475.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7575, 'Taje', 'pee', null, null, 475.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7576, 'Pengo', 'peg', null, null, 475.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7577, 'Bonan', 'peh', null, null, 475.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7578, 'Chichimeca-Jonaz', 'pei', null, null, 475.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7579, 'Penchal', 'pek', null, null, 476.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7580, 'Pekal', 'pel', null, null, 476.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7581, 'Phende', 'pem', null, null, 476.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7582, 'Kunja', 'pep', null, null, 476.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7583, 'Southern Pomo', 'peq', null, null, 476.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7584, 'Iranian Persian', 'pes', null, null, 476.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7585, 'P?mono', 'pev', null, null, 476.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7586, 'Petats', 'pex', null, null, 476.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7587, 'Petjo', 'pey', null, null, 476.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7588, 'Eastern Penan', 'pez', null, null, 476.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7589, 'P??fang', 'pfa', null, null, 477.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7590, 'Peere', 'pfe', null, null, 477.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7591, 'Pfaelzisch', 'pfl', null, null, 477.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7592, 'Sudanese Creole Arabic', 'pga', null, null, 477.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7593, 'Pangwali', 'pgg', null, null, 477.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7594, 'Pagi', 'pgi', null, null, 477.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7595, 'Rerep', 'pgk', null, null, 477.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7596, 'Pangseng', 'pgs', null, null, 477.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7597, 'Pagu', 'pgu', null, null, 477.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7598, 'Papua New Guinean Sign Language', 'pgz', null, null, 477.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7599, 'Pa-Hng', 'pha', null, null, 478.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7600, 'Phudagi', 'phd', null, null, 478.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7601, 'Phuong', 'phg', null, null, 478.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7602, 'Phukha', 'phh', null, null, 478.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7603, 'Phake', 'phk', null, null, 478.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7604, 'Phalura', 'phl', null, null, 478.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7605, 'Phimbi', 'phm', null, null, 478.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7606, 'Phunoi', 'pho', null, null, 478.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7607, 'Phana', 'phq', null, null, 478.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7608, 'Pahari-Potwari', 'phr', null, null, 478.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7609, 'Phu Thai', 'pht', null, null, 479.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7610, 'Phuan', 'phu', null, null, 479.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7611, 'Pahlavani', 'phv', null, null, 479.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7612, 'Phangduwali', 'phw', null, null, 479.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7613, 'Pima Bajo', 'pia', null, null, 479.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7614, 'Yine', 'pib', null, null, 479.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7615, 'Pinji', 'pic', null, null, 479.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7616, 'Piaroa', 'pid', null, null, 479.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7617, 'Pingelapese', 'pif', null, null, 479.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7618, 'Pisabo', 'pig', null, null, 479.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7619, 'Pitcairn-Norfolk', 'pih', null, null, 480.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7620, 'Pini', 'pii', null, null, 480.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7621, 'Yom', 'pil', null, null, 480.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7622, 'Piame', 'pin', null, null, 480.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7623, 'Piapoco', 'pio', null, null, 480.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7624, 'Pero', 'pip', null, null, 480.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7625, 'Piratapuyo', 'pir', null, null, 480.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7626, 'Pijin', 'pis', null, null, 480.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7627, 'Pintupi-Luritja', 'piu', null, null, 480.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7628, 'Pileni', 'piv', null, null, 480.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7629, 'Pimbwe', 'piw', null, null, 481.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7630, 'Piu', 'pix', null, null, 481.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7631, 'Piya-Kwonci', 'piy', null, null, 481.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7632, 'Pije', 'piz', null, null, 481.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7633, 'Pitjantjatjara', 'pjt', null, null, 481.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7634, 'Pokomo', 'pkb', null, null, 481.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7635, 'Pak-Tong', 'pkg', null, null, 481.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7636, 'Pankhu', 'pkh', null, null, 481.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7637, 'Pakanha', 'pkn', null, null, 481.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7638, 'P?koot', 'pko', null, null, 481.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7639, 'Pukapuka', 'pkp', null, null, 482.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7640, 'Attapady Kurumba', 'pkr', null, null, 482.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7641, 'Pakistan Sign Language', 'pks', null, null, 482.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7642, 'Maleng', 'pkt', null, null, 482.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7643, 'Paku', 'pku', null, null, 482.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7644, 'Miani', 'pla', null, null, 482.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7645, 'Polonombauk', 'plb', null, null, 482.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7646, 'Central Palawano', 'plc', null, null, 482.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7647, 'Polari', 'pld', null, null, 482.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7648, 'Palue', 'ple', null, null, 482.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7649, 'Pilag?', 'plg', null, null, 483.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7650, 'Paulohi', 'plh', null, null, 483.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7651, 'Polci', 'plj', null, null, 483.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7652, 'Kohistani Shina', 'plk', null, null, 483.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7653, 'Shwe Palaung', 'pll', null, null, 483.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7654, 'Palenquero', 'pln', null, null, 483.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7655, 'Oluta Popoluca', 'plo', null, null, 483.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7656, 'Palpa', 'plp', null, null, 483.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7657, 'Palaka Senoufo', 'plr', null, null, 483.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7658, 'San Marcos Tlacoyalco Popoloca', 'pls', null, null, 483.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7659, 'Plateau Malagasy', 'plt', null, null, 484.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7660, 'Palik?r', 'plu', null, null, 484.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7661, 'Southwest Palawano', 'plv', null, null, 484.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7662, 'Brookes Point Palawano', 'plw', null, null, 484.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7663, 'Bolyu', 'ply', null, null, 484.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7664, 'Paluan', 'plz', null, null, 484.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7665, 'Paama', 'pma', null, null, 484.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7666, 'Pambia', 'pmb', null, null, 484.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7667, 'Pwaamei', 'pme', null, null, 484.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7668, 'Pamona', 'pmf', null, null, 484.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7669, 'Northern Pumi', 'pmi', null, null, 485.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7670, 'Southern Pumi', 'pmj', null, null, 485.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7671, 'Pomo', 'pmm', null, null, 485.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7672, 'Pam', 'pmn', null, null, 485.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7673, 'Pom', 'pmo', null, null, 485.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7674, 'Northern Pame', 'pmq', null, null, 485.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7675, 'Paynamar', 'pmr', null, null, 485.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7676, 'Piemontese', 'pms', null, null, 485.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7677, 'Tuamotuan', 'pmt', null, null, 485.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7678, 'Plains Miwok', 'pmw', null, null, 485.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7679, 'Poumei Naga', 'pmx', null, null, 486.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7680, 'Papuan Malay', 'pmy', null, null, 486.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7681, 'Punan Bah-Biau', 'pna', null, null, 486.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7682, 'Western Panjabi', 'pnb', null, null, 486.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7683, 'Pannei', 'pnc', null, null, 486.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7684, 'Western Penan', 'pne', null, null, 486.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7685, 'Pongu', 'png', null, null, 486.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7686, 'Penrhyn', 'pnh', null, null, 486.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7687, 'Aoheng', 'pni', null, null, 486.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7688, 'Paunaka', 'pnk', null, null, 486.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7689, 'Paleni', 'pnl', null, null, 487.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7690, 'Punan Batu 1', 'pnm', null, null, 487.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7691, 'Pinai-Hagahai', 'pnn', null, null, 487.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7692, 'Pancana', 'pnp', null, null, 487.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7693, 'Pana (Burkina Faso)', 'pnq', null, null, 487.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7694, 'Panim', 'pnr', null, null, 487.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7695, 'Ponosakan', 'pns', null, null, 487.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7696, 'Pontic', 'pnt', null, null, 487.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7697, 'Jiongnai Bunu', 'pnu', null, null, 487.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7698, 'Pinigura', 'pnv', null, null, 487.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7699, 'Panytyima', 'pnw', null, null, 488.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7700, 'Phong-Kniang', 'pnx', null, null, 488.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7701, 'Pinyin', 'pny', null, null, 488.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7702, 'Pana (Central African Republic)', 'pnz', null, null, 488.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7703, 'Poqomam', 'poc', null, null, 488.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7704, 'San Juan Atzingo Popoloca', 'poe', null, null, 488.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7705, 'Poke', 'pof', null, null, 488.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7706, 'Poqomchi', 'poh', null, null, 488.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7707, 'Highland Popoluca', 'poi', null, null, 488.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7708, 'Pokang?', 'pok', null, null, 488.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7709, 'Polish', 'pol', null, null, 489.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7710, 'Southeastern Pomo', 'pom', null, null, 489.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7711, 'Pohnpeian', 'pon', null, null, 489.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7712, 'Central Pomo', 'poo', null, null, 489.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7713, 'Pwapw?', 'pop', null, null, 489.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7714, 'Texistepec Popoluca', 'poq', null, null, 489.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7715, 'Portuguese', 'por', null, null, 489.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7716, 'Sayula Popoluca', 'pos', null, null, 489.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7717, 'Potawatomi', 'pot', null, null, 489.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7718, 'Upper Guinea Crioulo', 'pov', null, null, 489.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7719, 'San Felipe Otlaltepec Popoloca', 'pow', null, null, 490.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7720, 'Pogolo', 'poy', null, null, 490.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7721, 'Papi', 'ppe', null, null, 490.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7722, 'Paipai', 'ppi', null, null, 490.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7723, 'Uma', 'ppk', null, null, 490.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7724, 'Pipil', 'ppl', null, null, 490.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7725, 'Papuma', 'ppm', null, null, 490.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7726, 'Papapana', 'ppn', null, null, 490.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7727, 'Folopa', 'ppo', null, null, 490.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7728, 'Pelende', 'ppp', null, null, 490.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7729, 'Pei', 'ppq', null, null, 491.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7730, 'San Lu?s Temalacayuca Popoloca', 'pps', null, null, 491.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7731, 'Pare', 'ppt', null, null, 491.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7732, 'Pa a', 'pqa', null, null, 491.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7733, 'Malecite-Passamaquoddy', 'pqm', null, null, 491.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7734, 'Lua', 'prb', null, null, 491.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7735, 'Parachi', 'prc', null, null, 491.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7736, 'Parsi-Dari', 'prd', null, null, 491.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7737, 'Principense', 'pre', null, null, 491.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7738, 'Paranan', 'prf', null, null, 491.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7739, 'Prussian', 'prg', null, null, 492.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7740, 'Porohanon', 'prh', null, null, 492.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7741, 'Paic?', 'pri', null, null, 492.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7742, 'Parauk', 'prk', null, null, 492.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7743, 'Peruvian Sign Language', 'prl', null, null, 492.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7744, 'Kibiri', 'prm', null, null, 492.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7745, 'Prasuni', 'prn', null, null, 492.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7746, 'Parsi', 'prp', null, null, 492.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7747, 'Ash?ninka Peren?', 'prq', null, null, 492.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7748, 'Dari', 'prs', null, null, 492.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7749, 'Phai', 'prt', null, null, 493.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7750, 'Puragi', 'pru', null, null, 493.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7751, 'Parawen', 'prw', null, null, 493.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7752, 'Purik', 'prx', null, null, 493.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7753, 'Providencia Sign Language', 'prz', null, null, 493.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7754, 'Asue Awyu', 'psa', null, null, 493.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7755, 'Persian Sign Language', 'psc', null, null, 493.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7756, 'Plains Indian Sign Language', 'psd', null, null, 493.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7757, 'Central Malay', 'pse', null, null, 493.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7758, 'Penang Sign Language', 'psg', null, null, 493.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7759, 'Southwest Pashai', 'psh', null, null, 494.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7760, 'Southeast Pashai', 'psi', null, null, 494.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7761, 'Puerto Rican Sign Language', 'psl', null, null, 494.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7762, 'Panasuan', 'psn', null, null, 494.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7763, 'Polish Sign Language', 'pso', null, null, 494.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7764, 'Philippine Sign Language', 'psp', null, null, 494.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7765, 'Pasi', 'psq', null, null, 494.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7766, 'Portuguese Sign Language', 'psr', null, null, 494.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7767, 'Kaulong', 'pss', null, null, 494.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7768, 'Central Pashto', 'pst', null, null, 494.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7769, 'Port Sandwich', 'psw', null, null, 495.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7770, 'Pai Tavytera', 'pta', null, null, 495.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7771, 'Pintiini', 'pti', null, null, 495.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7772, 'Patani', 'ptn', null, null, 495.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7773, 'Zo?', 'pto', null, null, 495.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7774, 'Patep', 'ptp', null, null, 495.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7775, 'Pattapu', 'ptq', null, null, 495.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7776, 'Piamatsina', 'ptr', null, null, 495.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7777, 'Enrekang', 'ptt', null, null, 495.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7778, 'Bambam', 'ptu', null, null, 495.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7779, 'Port Vato', 'ptv', null, null, 496.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7780, 'Pathiya', 'pty', null, null, 496.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7781, 'Western Highland Purepecha', 'pua', null, null, 496.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7782, 'Purum', 'pub', null, null, 496.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7783, 'Punan Merap', 'puc', null, null, 496.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7784, 'Punan Aput', 'pud', null, null, 496.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7785, 'Punan Merah', 'puf', null, null, 496.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7786, 'Phuie', 'pug', null, null, 496.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7787, 'Puinave', 'pui', null, null, 496.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7788, 'Punan Tubu', 'puj', null, null, 496.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7789, 'Pu Ko', 'puk', null, null, 497.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7790, 'Puma', 'pum', null, null, 497.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7791, 'Puoc', 'puo', null, null, 497.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7792, 'Pulabu', 'pup', null, null, 497.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7793, 'Purubor?', 'pur', null, null, 497.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7794, 'Pushto', 'pus', null, null, 497.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7795, 'Putoh', 'put', null, null, 497.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7796, 'Punu', 'puu', null, null, 497.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7797, 'Puluwatese', 'puw', null, null, 497.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7798, 'Puare', 'pux', null, null, 497.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7799, 'Pawaia', 'pwa', null, null, 498.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7800, 'Panawa', 'pwb', null, null, 498.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7801, 'Gapapaiwa', 'pwg', null, null, 498.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7802, 'Molbog', 'pwm', null, null, 498.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7803, 'Paiwan', 'pwn', null, null, 498.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7804, 'Pwo Western Karen', 'pwo', null, null, 498.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7805, 'Powari', 'pwr', null, null, 498.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7806, 'Pwo Northern Karen', 'pww', null, null, 498.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7807, 'Quetzaltepec Mixe', 'pxm', null, null, 498.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7808, 'Pye Krumen', 'pye', null, null, 498.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7809, 'Fyam', 'pym', null, null, 499.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7810, 'Poyan?wa', 'pyn', null, null, 499.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7811, 'Paraguayan Sign Language', 'pys', null, null, 499.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7812, 'Puyuma', 'pyu', null, null, 499.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7813, 'Pyen', 'pyy', null, null, 499.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7814, 'Para Naga', 'pzn', null, null, 499.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7815, 'Quapaw', 'qua', null, null, 499.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7816, 'Huallaga Hu?nuco Quechua', 'qub', null, null, 499.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7817, 'Kiche', 'quc', null, null, 499.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7818, 'Calder?n Highland Quichua', 'qud', null, null, 499.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7819, 'Quechua', 'que', null, null, 500.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7820, 'Lambayeque Quechua', 'quf', null, null, 500.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7821, 'Chimborazo Highland Quichua', 'qug', null, null, 500.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7822, 'South Bolivian Quechua', 'quh', null, null, 500.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7823, 'Quileute', 'qui', null, null, 500.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7824, 'Chachapoyas Quechua', 'quk', null, null, 500.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7825, 'North Bolivian Quechua', 'qul', null, null, 500.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7826, 'Sipacapense', 'qum', null, null, 500.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7827, 'Southern Pastaza Quechua', 'qup', null, null, 500.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7828, 'Quinqui', 'quq', null, null, 500.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7829, 'Yanahuanca Pasco Quechua', 'qur', null, null, 501.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7830, 'Santiago del Estero Quichua', 'qus', null, null, 501.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7831, 'Sacapulteco', 'quv', null, null, 501.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7832, 'Tena Lowland Quichua', 'quw', null, null, 501.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7833, 'Yauyos Quechua', 'qux', null, null, 501.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7834, 'Ayacucho Quechua', 'quy', null, null, 501.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7835, 'Cusco Quechua', 'quz', null, null, 501.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7836, 'Ambo-Pasco Quechua', 'qva', null, null, 501.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7837, 'Cajamarca Quechua', 'qvc', null, null, 501.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7838, 'Eastern Apur?mac Quechua', 'qve', null, null, 501.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7839, 'Huamal?es-Dos de Mayo Hu?nuco Quechua', 'qvh', null, null, 502.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7840, 'Imbabura Highland Quichua', 'qvi', null, null, 502.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7841, 'Loja Highland Quichua', 'qvj', null, null, 502.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7842, 'Cajatambo North Lima Quechua', 'qvl', null, null, 502.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7843, 'Margos-Yarowilca-Lauricocha Quechua', 'qvm', null, null, 502.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7844, 'North Jun?n Quechua', 'qvn', null, null, 502.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7845, 'Napo Lowland Quechua', 'qvo', null, null, 502.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7846, 'Pacaraos Quechua', 'qvp', null, null, 502.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7847, 'San Mart?n Quechua', 'qvs', null, null, 502.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7848, 'Huaylla Wanca Quechua', 'qvw', null, null, 502.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7849, 'Queyu', 'qvy', null, null, 503.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7850, 'Northern Pastaza Quichua', 'qvz', null, null, 503.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7851, 'Corongo Ancash Quechua', 'qwa', null, null, 503.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7852, 'Huaylas Ancash Quechua', 'qwh', null, null, 503.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7853, 'Sihuas Ancash Quechua', 'qws', null, null, 503.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7854, 'Chiqui?n Ancash Quechua', 'qxa', null, null, 503.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7855, 'Chincha Quechua', 'qxc', null, null, 503.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7856, 'Panao Hu?nuco Quechua', 'qxh', null, null, 503.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7857, 'Salasaca Highland Quichua', 'qxl', null, null, 503.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7858, 'Northern Conchucos Ancash Quechua', 'qxn', null, null, 503.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7859, 'Southern Conchucos Ancash Quechua', 'qxo', null, null, 504.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7860, 'Puno Quechua', 'qxp', null, null, 504.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7861, 'Qashqai', 'qxq', null, null, 504.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7862, 'Ca?ar Highland Quichua', 'qxr', null, null, 504.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7863, 'Southern Qiang', 'qxs', null, null, 504.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7864, 'Santa Ana de Tusi Pasco Quechua', 'qxt', null, null, 504.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7865, 'Arequipa-La Uni?n Quechua', 'qxu', null, null, 504.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7866, 'Jauja Wanca Quechua', 'qxw', null, null, 504.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7867, 'Dungmali', 'raa', null, null, 504.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7868, 'Camling', 'rab', null, null, 504.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7869, 'Rasawa', 'rac', null, null, 505.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7870, 'Rade', 'rad', null, null, 505.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7871, 'Western Meohang', 'raf', null, null, 505.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7872, 'Logooli', 'rag', null, null, 505.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7873, 'Rabha', 'rah', null, null, 505.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7874, 'Ramoaaina', 'rai', null, null, 505.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7875, 'Rajasthani', 'raj', null, null, 505.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7876, 'Tulu-Bohuai', 'rak', null, null, 505.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7877, 'Ralte', 'ral', null, null, 505.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7878, 'Canela', 'ram', null, null, 505.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7879, 'Riantana', 'ran', null, null, 506.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7880, 'Rao', 'rao', null, null, 506.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7881, 'Rapanui', 'rap', null, null, 506.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7882, 'Saam', 'raq', null, null, 506.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7883, 'Rarotongan', 'rar', null, null, 506.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7884, 'Tegali', 'ras', null, null, 506.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7885, 'Razajerdi', 'rat', null, null, 506.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7886, 'Raute', 'rau', null, null, 506.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7887, 'Sampang', 'rav', null, null, 506.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7888, 'Rawang', 'raw', null, null, 506.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7889, 'Rang', 'rax', null, null, 507.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7890, 'Rapa', 'ray', null, null, 507.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7891, 'Rahambuu', 'raz', null, null, 507.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7892, 'Rumai Palaung', 'rbb', null, null, 507.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7893, 'Northern Bontok', 'rbk', null, null, 507.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7894, 'Miraya Bikol', 'rbl', null, null, 507.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7895, 'R?union Creole French', 'rcf', null, null, 507.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7896, 'Rudbari', 'rdb', null, null, 507.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7897, 'Rerau', 'rea', null, null, 507.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7898, 'Rembong', 'reb', null, null, 507.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7899, 'Rejang Kayan', 'ree', null, null, 508.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7900, 'Kara (Tanzania)', 'reg', null, null, 508.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7901, 'Reli', 'rei', null, null, 508.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7902, 'Rejang', 'rej', null, null, 508.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7903, 'Rendille', 'rel', null, null, 508.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7904, 'Rengao', 'ren', null, null, 508.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7905, 'Reshe', 'res', null, null, 508.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7906, 'Retta', 'ret', null, null, 508.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7907, 'Reyesano', 'rey', null, null, 508.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7908, 'Roria', 'rga', null, null, 508.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7909, 'Romano-Greek', 'rge', null, null, 509.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7910, 'Romagnol', 'rgn', null, null, 509.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7911, 'Res?garo', 'rgr', null, null, 509.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7912, 'Southern Roglai', 'rgs', null, null, 509.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7913, 'Ringgou', 'rgu', null, null, 509.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7914, 'Rohingya', 'rhg', null, null, 509.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7915, 'Yahang', 'rhp', null, null, 509.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7916, 'Riang (India)', 'ria', null, null, 509.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7917, 'Rien', 'rie', null, null, 509.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7918, 'Tarifit', 'rif', null, null, 509.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7919, 'Riang (Myanmar)', 'ril', null, null, 510.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7920, 'Nyaturu', 'rim', null, null, 510.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7921, 'Nungu', 'rin', null, null, 510.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7922, 'Ribun', 'rir', null, null, 510.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7923, 'Ritarungo', 'rit', null, null, 510.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7924, 'Riung', 'riu', null, null, 510.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7925, 'Rajong', 'rjg', null, null, 510.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7926, 'Raji', 'rji', null, null, 510.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7927, 'Rajbanshi', 'rjs', null, null, 510.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7928, 'Kraol', 'rka', null, null, 510.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7929, 'Rikbaktsa', 'rkb', null, null, 511.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7930, 'Rakahanga-Manihiki', 'rkh', null, null, 511.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7931, 'Rakhine', 'rki', null, null, 511.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7932, 'Marka', 'rkm', null, null, 511.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7933, 'Rangpuri', 'rkt', null, null, 511.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7934, 'Rama', 'rma', null, null, 511.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7935, 'Rembarunga', 'rmb', null, null, 511.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7936, 'Carpathian Romani', 'rmc', null, null, 511.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7937, 'Angloromani', 'rme', null, null, 511.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7938, 'Kalo Finnish Romani', 'rmf', null, null, 511.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7939, 'Traveller Norwegian', 'rmg', null, null, 512.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7940, 'Murkim', 'rmh', null, null, 512.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7941, 'Lomavren', 'rmi', null, null, 512.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7942, 'Romkun', 'rmk', null, null, 512.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7943, 'Baltic Romani', 'rml', null, null, 512.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7944, 'Roma', 'rmm', null, null, 512.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7945, 'Balkan Romani', 'rmn', null, null, 512.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7946, 'Sinte Romani', 'rmo', null, null, 512.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7947, 'Rempi', 'rmp', null, null, 512.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7948, 'Cal?', 'rmq', null, null, 512.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7949, 'Romanian Sign Language', 'rms', null, null, 513.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7950, 'Domari', 'rmt', null, null, 513.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7951, 'Tavringer Romani', 'rmu', null, null, 513.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7952, 'Welsh Romani', 'rmw', null, null, 513.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7953, 'Romam', 'rmx', null, null, 513.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7954, 'Vlax Romani', 'rmy', null, null, 513.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7955, 'Marma', 'rmz', null, null, 513.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7956, 'Ruund', 'rnd', null, null, 513.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7957, 'Ronga', 'rng', null, null, 513.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7958, 'Ranglong', 'rnl', null, null, 513.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7959, 'Roon', 'rnn', null, null, 514.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7960, 'Rongpo', 'rnp', null, null, 514.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7961, 'Rungwa', 'rnw', null, null, 514.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7962, 'Tae', 'rob', null, null, 514.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7963, 'Cacgia Roglai', 'roc', null, null, 514.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7964, 'Rogo', 'rod', null, null, 514.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7965, 'Ronji', 'roe', null, null, 514.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7966, 'Rombo', 'rof', null, null, 514.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7967, 'Northern Roglai', 'rog', null, null, 514.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7968, 'Romansh', 'roh', null, null, 514.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7969, 'Romblomanon', 'rol', null, null, 515.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7970, 'Romany', 'rom', null, null, 515.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7971, 'Romanian', 'ron', null, null, 515.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7972, 'Rotokas', 'roo', null, null, 515.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7973, 'Kriol', 'rop', null, null, 515.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7974, 'Rongga', 'ror', null, null, 515.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7975, 'Runga', 'rou', null, null, 515.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7976, 'Dela-Oenale', 'row', null, null, 515.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7977, 'Repanbitip', 'rpn', null, null, 515.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7978, 'Rapting', 'rpt', null, null, 515.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7979, 'Ririo', 'rri', null, null, 516.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7980, 'Waima', 'rro', null, null, 516.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7981, 'Romano-Serbian', 'rsb', null, null, 516.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7982, 'Rennellese Sign Language', 'rsi', null, null, 516.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7983, 'Russian Sign Language', 'rsl', null, null, 516.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7984, 'Miriwoong Sign Language', 'rsm', null, null, 516.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7985, 'Rungtu Chin', 'rtc', null, null, 516.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7986, 'Ratahan', 'rth', null, null, 516.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7987, 'Rotuman', 'rtm', null, null, 516.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7988, 'Rathawi', 'rtw', null, null, 516.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7989, 'Gungu', 'rub', null, null, 517.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7990, 'Ruuli', 'ruc', null, null, 517.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7991, 'Rusyn', 'rue', null, null, 517.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7992, 'Luguru', 'ruf', null, null, 517.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7993, 'Roviana', 'rug', null, null, 517.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7994, 'Ruga', 'ruh', null, null, 517.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7995, 'Rufiji', 'rui', null, null, 517.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7996, 'Che', 'ruk', null, null, 517.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7997, 'Rundi', 'run', null, null, 517.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7998, 'Istro Romanian', 'ruo', null, null, 517.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 7999, 'Macedo-Romanian', 'rup', null, null, 518.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8000, 'Megleno Romanian', 'ruq', null, null, 518.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8001, 'Russian', 'rus', null, null, 518.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8002, 'Rutul', 'rut', null, null, 518.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8003, 'Lanas Lobu', 'ruu', null, null, 518.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8004, 'Mala (Nigeria)', 'ruy', null, null, 518.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8005, 'Ruma', 'ruz', null, null, 518.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8006, 'Rawo', 'rwa', null, null, 518.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8007, 'Rwa', 'rwk', null, null, 518.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8008, 'Amba (Uganda)', 'rwm', null, null, 518.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8009, 'Rawa', 'rwo', null, null, 519.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8010, 'Marwari (India)', 'rwr', null, null, 519.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8011, 'Ngardi', 'rxd', null, null, 519.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8012, 'Northern Amami-Oshima', 'ryn', null, null, 519.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8013, 'Yaeyama', 'rys', null, null, 519.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8014, 'Central Okinawan', 'ryu', null, null, 519.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8015, 'Razihi', 'rzh', null, null, 519.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8016, 'Saba', 'saa', null, null, 519.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8017, 'Buglere', 'sab', null, null, 519.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8018, 'Meskwaki', 'sac', null, null, 519.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8019, 'Sandawe', 'sad', null, null, 520.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8020, 'Saban?', 'sae', null, null, 520.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8021, 'Safaliba', 'saf', null, null, 520.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8022, 'Sango', 'sag', null, null, 520.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8023, 'Yakut', 'sah', null, null, 520.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8024, 'Sahu', 'saj', null, null, 520.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8025, 'Sake', 'sak', null, null, 520.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8026, 'Sause', 'sao', null, null, 520.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8027, 'Samburu', 'saq', null, null, 520.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8028, 'Sasak', 'sas', null, null, 520.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8029, 'Santali', 'sat', null, null, 521.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8030, 'Saleman', 'sau', null, null, 521.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8031, 'Saafi-Saafi', 'sav', null, null, 521.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8032, 'Sawi', 'saw', null, null, 521.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8033, 'Sa', 'sax', null, null, 521.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8034, 'Saya', 'say', null, null, 521.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8035, 'Saurashtra', 'saz', null, null, 521.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8036, 'Ngambay', 'sba', null, null, 521.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8037, 'Simbo', 'sbb', null, null, 521.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8038, 'Kele (Papua New Guinea)', 'sbc', null, null, 521.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8039, 'Southern Samo', 'sbd', null, null, 522.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8040, 'Saliba', 'sbe', null, null, 522.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8041, 'Chabu', 'sbf', null, null, 522.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8042, 'Seget', 'sbg', null, null, 522.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8043, 'Sori-Harengan', 'sbh', null, null, 522.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8044, 'Seti', 'sbi', null, null, 522.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8045, 'Surbakhal', 'sbj', null, null, 522.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8046, 'Safwa', 'sbk', null, null, 522.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8047, 'Botolan Sambal', 'sbl', null, null, 522.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8048, 'Sagala', 'sbm', null, null, 522.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8049, 'Sindhi Bhil', 'sbn', null, null, 523.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8050, 'Sab?m', 'sbo', null, null, 523.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8051, 'Sangu (Tanzania)', 'sbp', null, null, 523.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8052, 'Sileibi', 'sbq', null, null, 523.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8053, 'Sembakung Murut', 'sbr', null, null, 523.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8054, 'Subiya', 'sbs', null, null, 523.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8055, 'Kimki', 'sbt', null, null, 523.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8056, 'Stod Bhoti', 'sbu', null, null, 523.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8057, 'Simba', 'sbw', null, null, 523.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8058, 'Seberuang', 'sbx', null, null, 523.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8059, 'Soli', 'sby', null, null, 524.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8060, 'Sara Kaba', 'sbz', null, null, 524.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8061, 'Chut', 'scb', null, null, 524.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8062, 'Dongxiang', 'sce', null, null, 524.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8063, 'San Miguel Creole French', 'scf', null, null, 524.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8064, 'Sanggau', 'scg', null, null, 524.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8065, 'Sakachep', 'sch', null, null, 524.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8066, 'Sri Lankan Creole Malay', 'sci', null, null, 524.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8067, 'Sadri', 'sck', null, null, 524.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8068, 'Shina', 'scl', null, null, 524.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8069, 'Sicilian', 'scn', null, null, 525.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8070, 'Scots', 'sco', null, null, 525.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8071, 'Helambu Sherpa', 'scp', null, null, 525.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8072, 'Sa och', 'scq', null, null, 525.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8073, 'North Slavey', 'scs', null, null, 525.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8074, 'Shumcho', 'scu', null, null, 525.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8075, 'Sheni', 'scv', null, null, 525.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8076, 'Sha', 'scw', null, null, 525.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8077, 'Toraja-Sadan', 'sda', null, null, 525.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8078, 'Shabak', 'sdb', null, null, 525.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8079, 'Sassarese Sardinian', 'sdc', null, null, 526.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8080, 'Surubu', 'sde', null, null, 526.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8081, 'Sarli', 'sdf', null, null, 526.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8082, 'Savi', 'sdg', null, null, 526.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8083, 'Southern Kurdish', 'sdh', null, null, 526.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8084, 'Suundi', 'sdj', null, null, 526.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8085, 'Sos Kundi', 'sdk', null, null, 526.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8086, 'Saudi Arabian Sign Language', 'sdl', null, null, 526.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8087, 'Semandang', 'sdm', null, null, 526.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8088, 'Gallurese Sardinian', 'sdn', null, null, 526.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8089, 'Bukar-Sadung Bidayuh', 'sdo', null, null, 527.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8090, 'Sherdukpen', 'sdp', null, null, 527.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8091, 'Oraon Sadri', 'sdr', null, null, 527.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8092, 'Sarudu', 'sdu', null, null, 527.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8093, 'Sibu Melanau', 'sdx', null, null, 527.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8094, 'Sallands', 'sdz', null, null, 527.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8095, 'Semai', 'sea', null, null, 527.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8096, 'Shempire Senoufo', 'seb', null, null, 527.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8097, 'Sechelt', 'sec', null, null, 527.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8098, 'Sedang', 'sed', null, null, 527.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8099, 'Seneca', 'see', null, null, 528.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8100, 'Cebaara Senoufo', 'sef', null, null, 528.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8101, 'Segeju', 'seg', null, null, 528.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8102, 'Sena', 'seh', null, null, 528.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8103, 'Seri', 'sei', null, null, 528.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8104, 'Sene', 'sej', null, null, 528.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8105, 'Sekani', 'sek', null, null, 528.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8106, 'Selkup', 'sel', null, null, 528.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8107, 'Nanerig? S?noufo', 'sen', null, null, 528.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8108, 'Suarmin', 'seo', null, null, 528.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8109, 'S?c?t? S?noufo', 'sep', null, null, 529.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8110, 'Senara S?noufo', 'seq', null, null, 529.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8111, 'Serrano', 'ser', null, null, 529.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8112, 'Koyraboro Senni Songhai', 'ses', null, null, 529.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8113, 'Sentani', 'set', null, null, 529.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8114, 'Serui-Laut', 'seu', null, null, 529.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8115, 'Nyarafolo Senoufo', 'sev', null, null, 529.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8116, 'Sewa Bay', 'sew', null, null, 529.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8117, 'Secoya', 'sey', null, null, 529.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8118, 'Senthang Chin', 'sez', null, null, 529.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8119, 'Langue des signes de Belgique Francophone', 'sfb', null, null, 530.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8120, 'Eastern Subanen', 'sfe', null, null, 530.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8121, 'Small Flowery Miao', 'sfm', null, null, 530.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8122, 'South African Sign Language', 'sfs', null, null, 530.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8123, 'Sehwi', 'sfw', null, null, 530.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8124, 'Mag-antsi Ayta', 'sgb', null, null, 530.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8125, 'Kipsigis', 'sgc', null, null, 530.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8126, 'Surigaonon', 'sgd', null, null, 530.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8127, 'Segai', 'sge', null, null, 530.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8128, 'Swiss-German Sign Language', 'sgg', null, null, 530.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8129, 'Shughni', 'sgh', null, null, 531.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8130, 'Suga', 'sgi', null, null, 531.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8131, 'Surgujia', 'sgj', null, null, 531.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8132, 'Sangkong', 'sgk', null, null, 531.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8133, 'Singpho', 'sgp', null, null, 531.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8134, 'Sangisari', 'sgr', null, null, 531.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8135, 'Samogitian', 'sgs', null, null, 531.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8136, 'Brokpake', 'sgt', null, null, 531.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8137, 'Salas', 'sgu', null, null, 531.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8138, 'Sebat Bet Gurage', 'sgw', null, null, 531.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8139, 'Sierra Leone Sign Language', 'sgx', null, null, 532.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8140, 'Sanglechi', 'sgy', null, null, 532.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8141, 'Sursurunga', 'sgz', null, null, 532.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8142, 'Shall-Zwall', 'sha', null, null, 532.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8143, 'Ninam', 'shb', null, null, 532.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8144, 'Sonde', 'shc', null, null, 532.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8145, 'Kundal Shahi', 'shd', null, null, 532.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8146, 'Sheko', 'she', null, null, 532.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8147, 'Shua', 'shg', null, null, 532.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8148, 'Shoshoni', 'shh', null, null, 532.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8149, 'Tachelhit', 'shi', null, null, 533.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8150, 'Shatt', 'shj', null, null, 533.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8151, 'Shilluk', 'shk', null, null, 533.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8152, 'Shendu', 'shl', null, null, 533.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8153, 'Shahrudi', 'shm', null, null, 533.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8154, 'Shan', 'shn', null, null, 533.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8155, 'Shanga', 'sho', null, null, 533.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8156, 'Shipibo-Conibo', 'shp', null, null, 533.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8157, 'Sala', 'shq', null, null, 533.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8158, 'Shi', 'shr', null, null, 533.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8159, 'Shuswap', 'shs', null, null, 534.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8160, 'Chadian Arabic', 'shu', null, null, 534.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8161, 'Shehri', 'shv', null, null, 534.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8162, 'Shwai', 'shw', null, null, 534.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8163, 'She', 'shx', null, null, 534.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8164, 'Tachawit', 'shy', null, null, 534.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8165, 'Syenara Senoufo', 'shz', null, null, 534.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8166, 'Sebop', 'sib', null, null, 534.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8167, 'Sidamo', 'sid', null, null, 534.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8168, 'Simaa', 'sie', null, null, 534.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8169, 'Siamou', 'sif', null, null, 535.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8170, 'Paasaal', 'sig', null, null, 535.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8171, 'Zire', 'sih', null, null, 535.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8172, 'Shom Peng', 'sii', null, null, 535.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8173, 'Numbami', 'sij', null, null, 535.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8174, 'Sikiana', 'sik', null, null, 535.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8175, 'Tumulung Sisaala', 'sil', null, null, 535.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8176, 'Mende (Papua New Guinea)', 'sim', null, null, 535.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8177, 'Sinhala', 'sin', null, null, 535.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8178, 'Sikkimese', 'sip', null, null, 535.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8179, 'Sonia', 'siq', null, null, 536.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8180, 'Siri', 'sir', null, null, 536.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8181, 'Sinagen', 'siu', null, null, 536.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8182, 'Sumariup', 'siv', null, null, 536.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8183, 'Siwai', 'siw', null, null, 536.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8184, 'Sumau', 'six', null, null, 536.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8185, 'Sivandi', 'siy', null, null, 536.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8186, 'Siwi', 'siz', null, null, 536.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8187, 'Epena', 'sja', null, null, 536.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8188, 'Sajau Basap', 'sjb', null, null, 536.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8189, 'Kildin Sami', 'sjd', null, null, 537.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8190, 'Pite Sami', 'sje', null, null, 537.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8191, 'Assangori', 'sjg', null, null, 537.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8192, 'Sajalong', 'sjl', null, null, 537.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8193, 'Mapun', 'sjm', null, null, 537.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8194, 'Xibe', 'sjo', null, null, 537.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8195, 'Surjapuri', 'sjp', null, null, 537.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8196, 'Siar-Lak', 'sjr', null, null, 537.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8197, 'Ter Sami', 'sjt', null, null, 537.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8198, 'Ume Sami', 'sju', null, null, 537.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8199, 'Shawnee', 'sjw', null, null, 538.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8200, 'Skagit', 'ska', null, null, 538.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8201, 'Saek', 'skb', null, null, 538.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8202, 'Ma Manda', 'skc', null, null, 538.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8203, 'Southern Sierra Miwok', 'skd', null, null, 538.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8204, 'Seke (Vanuatu)', 'ske', null, null, 538.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8205, 'Sakirabi?', 'skf', null, null, 538.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8206, 'Sakalava Malagasy', 'skg', null, null, 538.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8207, 'Sikule', 'skh', null, null, 538.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8208, 'Sika', 'ski', null, null, 538.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8209, 'Seke (Nepal)', 'skj', null, null, 539.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8210, 'Sok', 'skk', null, null, 539.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8211, 'Kutong', 'skm', null, null, 539.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8212, 'Kolibugan Subanon', 'skn', null, null, 539.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8213, 'Seko Tengah', 'sko', null, null, 539.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8214, 'Sekapan', 'skp', null, null, 539.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8215, 'Sininkere', 'skq', null, null, 539.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8216, 'Saraiki', 'skr', null, null, 539.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8217, 'Maia', 'sks', null, null, 539.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8218, 'Sakata', 'skt', null, null, 539.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8219, 'Sakao', 'sku', null, null, 540.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8220, 'Skou', 'skv', null, null, 540.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8221, 'Seko Padang', 'skx', null, null, 540.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8222, 'Sikaiana', 'sky', null, null, 540.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8223, 'Sekar', 'skz', null, null, 540.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8224, 'S?liba', 'slc', null, null, 540.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8225, 'Sissala', 'sld', null, null, 540.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8226, 'Sholaga', 'sle', null, null, 540.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8227, 'Swiss-Italian Sign Language', 'slf', null, null, 540.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8228, 'Selungai Murut', 'slg', null, null, 540.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8229, 'Southern Puget Sound Salish', 'slh', null, null, 541.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8230, 'Lower Silesian', 'sli', null, null, 541.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8231, 'Salum?', 'slj', null, null, 541.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8232, 'Slovak', 'slk', null, null, 541.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8233, 'Salt-Yui', 'sll', null, null, 541.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8234, 'Pangutaran Sama', 'slm', null, null, 541.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8235, 'Lamaholot', 'slp', null, null, 541.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8236, 'Salchuq', 'slq', null, null, 541.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8237, 'Salar', 'slr', null, null, 541.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8238, 'Singapore Sign Language', 'sls', null, null, 541.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8239, 'Sila', 'slt', null, null, 542.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8240, 'Selaru', 'slu', null, null, 542.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8241, 'Slovenian', 'slv', null, null, 542.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8242, 'Sialum', 'slw', null, null, 542.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8243, 'Salampasu', 'slx', null, null, 542.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8244, 'Selayar', 'sly', null, null, 542.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8245, 'Ma ya', 'slz', null, null, 542.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8246, 'Southern Sami', 'sma', null, null, 542.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8247, 'Simbari', 'smb', null, null, 542.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8248, 'Sama', 'smd', null, null, 542.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8249, 'Northern Sami', 'sme', null, null, 543.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8250, 'Auwe', 'smf', null, null, 543.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8251, 'Simbali', 'smg', null, null, 543.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8252, 'Samei', 'smh', null, null, 543.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8253, 'Lule Sami', 'smj', null, null, 543.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8254, 'Bolinao', 'smk', null, null, 543.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8255, 'Central Sama', 'sml', null, null, 543.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8256, 'Musasa', 'smm', null, null, 543.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8257, 'Inari Sami', 'smn', null, null, 543.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8258, 'Samoan', 'smo', null, null, 543.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8259, 'Samo', 'smq', null, null, 544.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8260, 'Simeulue', 'smr', null, null, 544.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8261, 'Skolt Sami', 'sms', null, null, 544.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8262, 'Simte', 'smt', null, null, 544.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8263, 'Samvedi', 'smv', null, null, 544.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8264, 'Sumbawa', 'smw', null, null, 544.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8265, 'Samba', 'smx', null, null, 544.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8266, 'Semnani', 'smy', null, null, 544.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8267, 'Simeku', 'smz', null, null, 544.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8268, 'Shona', 'sna', null, null, 544.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8269, 'Sebuyau', 'snb', null, null, 545.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8270, 'Sinaugoro', 'snc', null, null, 545.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8271, 'Sindhi', 'snd', null, null, 545.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8272, 'Bau Bidayuh', 'sne', null, null, 545.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8273, 'Noon', 'snf', null, null, 545.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8274, 'Sanga (Democratic Republic of Congo)', 'sng', null, null, 545.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8275, 'Riverain Sango', 'snj', null, null, 545.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8276, 'Soninke', 'snk', null, null, 545.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8277, 'Sangil', 'snl', null, null, 545.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8278, 'Southern Madi', 'snm', null, null, 545.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8279, 'Siona', 'snn', null, null, 546.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8280, 'Snohomish', 'sno', null, null, 546.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8281, 'Siane', 'snp', null, null, 546.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8282, 'Sangu (Gabon)', 'snq', null, null, 546.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8283, 'Sihan', 'snr', null, null, 546.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8284, 'South West Bay', 'sns', null, null, 546.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8285, 'Senggi', 'snu', null, null, 546.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8286, 'Sa ban', 'snv', null, null, 546.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8287, 'Selee', 'snw', null, null, 546.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8288, 'Sam', 'snx', null, null, 546.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8289, 'Saniyo-Hiyewe', 'sny', null, null, 547.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8290, 'Sinsauru', 'snz', null, null, 547.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8291, 'Thai Song', 'soa', null, null, 547.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8292, 'Sobei', 'sob', null, null, 547.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8293, 'So (Democratic Republic of Congo)', 'soc', null, null, 547.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8294, 'Songoora', 'sod', null, null, 547.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8295, 'Songomeno', 'soe', null, null, 547.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8296, 'Aka', 'soh', null, null, 547.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8297, 'Sonha', 'soi', null, null, 547.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8298, 'Soi', 'soj', null, null, 547.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8299, 'Sokoro', 'sok', null, null, 548.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8300, 'Solos', 'sol', null, null, 548.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8301, 'Somali', 'som', null, null, 548.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8302, 'Songo', 'soo', null, null, 548.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8303, 'Songe', 'sop', null, null, 548.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8304, 'Kanasi', 'soq', null, null, 548.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8305, 'Somrai', 'sor', null, null, 548.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8306, 'Seeku', 'sos', null, null, 548.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8307, 'Southern Sotho', 'sot', null, null, 548.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8308, 'Southern Thai', 'sou', null, null, 548.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8309, 'Sonsorol', 'sov', null, null, 549.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8310, 'Sowanda', 'sow', null, null, 549.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8311, 'Swo', 'sox', null, null, 549.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8312, 'Miyobe', 'soy', null, null, 549.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8313, 'Temi', 'soz', null, null, 549.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8314, 'Spanish', 'spa', null, null, 549.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8315, 'Sepa (Indonesia)', 'spb', null, null, 549.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8316, 'Sap?', 'spc', null, null, 549.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8317, 'Saep', 'spd', null, null, 549.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8318, 'Sepa (Papua New Guinea)', 'spe', null, null, 549.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8319, 'Sian', 'spg', null, null, 550.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8320, 'Saponi', 'spi', null, null, 550.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8321, 'Sengo', 'spk', null, null, 550.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8322, 'Selepet', 'spl', null, null, 550.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8323, 'Akukem', 'spm', null, null, 550.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8324, 'Sanapan?', 'spn', null, null, 550.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8325, 'Spokane', 'spo', null, null, 550.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8326, 'Supyire Senoufo', 'spp', null, null, 550.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8327, 'Loreto-Ucayali Spanish', 'spq', null, null, 550.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8328, 'Saparua', 'spr', null, null, 550.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8329, 'Saposa', 'sps', null, null, 551.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8330, 'Spiti Bhoti', 'spt', null, null, 551.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8331, 'Sapuan', 'spu', null, null, 551.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8332, 'Sambalpuri', 'spv', null, null, 551.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8333, 'Sabaot', 'spy', null, null, 551.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8334, 'Shama-Sambuga', 'sqa', null, null, 551.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8335, 'Shau', 'sqh', null, null, 551.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8336, 'Albanian', 'sqi', null, null, 551.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8337, 'Albanian Sign Language', 'sqk', null, null, 551.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8338, 'Suma', 'sqm', null, null, 551.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8339, 'Sorkhei', 'sqo', null, null, 552.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8340, 'Sou', 'sqq', null, null, 552.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8341, 'Sri Lankan Sign Language', 'sqs', null, null, 552.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8342, 'Soqotri', 'sqt', null, null, 552.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8343, 'Squamish', 'squ', null, null, 552.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8344, 'Saruga', 'sra', null, null, 552.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8345, 'Sora', 'srb', null, null, 552.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8346, 'Logudorese Sardinian', 'src', null, null, 552.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8347, 'Sardinian', 'srd', null, null, 552.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8348, 'Sara', 'sre', null, null, 552.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8349, 'Nafi', 'srf', null, null, 553.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8350, 'Sulod', 'srg', null, null, 553.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8351, 'Sarikoli', 'srh', null, null, 553.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8352, 'Siriano', 'sri', null, null, 553.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8353, 'Serudung Murut', 'srk', null, null, 553.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8354, 'Isirawa', 'srl', null, null, 553.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8355, 'Saramaccan', 'srm', null, null, 553.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8356, 'Sranan Tongo', 'srn', null, null, 553.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8357, 'Campidanese Sardinian', 'sro', null, null, 553.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8358, 'Serbian', 'srp', null, null, 553.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8359, 'Sirion?', 'srq', null, null, 554.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8360, 'Serer', 'srr', null, null, 554.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8361, 'Sarsi', 'srs', null, null, 554.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8362, 'Sauri', 'srt', null, null, 554.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8363, 'Suru?', 'sru', null, null, 554.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8364, 'Southern Sorsoganon', 'srv', null, null, 554.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8365, 'Serua', 'srw', null, null, 554.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8366, 'Sirmauri', 'srx', null, null, 554.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8367, 'Sera', 'sry', null, null, 554.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8368, 'Shahmirzadi', 'srz', null, null, 554.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8369, 'Southern Sama', 'ssb', null, null, 555.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8370, 'Suba-Simbiti', 'ssc', null, null, 555.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8371, 'Siroi', 'ssd', null, null, 555.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8372, 'Balangingi', 'sse', null, null, 555.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8373, 'Thao', 'ssf', null, null, 555.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8374, 'Seimat', 'ssg', null, null, 555.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8375, 'Shihhi Arabic', 'ssh', null, null, 555.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8376, 'Sansi', 'ssi', null, null, 555.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8377, 'Sausi', 'ssj', null, null, 555.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8378, 'Sunam', 'ssk', null, null, 555.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8379, 'Western Sisaala', 'ssl', null, null, 556.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8380, 'Semnam', 'ssm', null, null, 556.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8381, 'Waata', 'ssn', null, null, 556.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8382, 'Sissano', 'sso', null, null, 556.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8383, 'Spanish Sign Language', 'ssp', null, null, 556.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8384, 'So a', 'ssq', null, null, 556.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8385, 'Swiss-French Sign Language', 'ssr', null, null, 556.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8386, 'S?', 'sss', null, null, 556.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8387, 'Sinasina', 'sst', null, null, 556.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8388, 'Susuami', 'ssu', null, null, 556.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8389, 'Shark Bay', 'ssv', null, null, 557.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8390, 'Swati', 'ssw', null, null, 557.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8391, 'Samberigi', 'ssx', null, null, 557.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8392, 'Saho', 'ssy', null, null, 557.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8393, 'Sengseng', 'ssz', null, null, 557.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8394, 'Settla', 'sta', null, null, 557.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8395, 'Northern Subanen', 'stb', null, null, 557.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8396, 'Sentinel', 'std', null, null, 557.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8397, 'Liana-Seti', 'ste', null, null, 557.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8398, 'Seta', 'stf', null, null, 557.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8399, 'Trieng', 'stg', null, null, 558.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8400, 'Shelta', 'sth', null, null, 558.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8401, 'Bulo Stieng', 'sti', null, null, 558.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8402, 'Matya Samo', 'stj', null, null, 558.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8403, 'Arammba', 'stk', null, null, 558.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8404, 'Stellingwerfs', 'stl', null, null, 558.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8405, 'Setaman', 'stm', null, null, 558.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8406, 'Owa', 'stn', null, null, 558.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8407, 'Stoney', 'sto', null, null, 558.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8408, 'Southeastern Tepehuan', 'stp', null, null, 558.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8409, 'Saterfriesisch', 'stq', null, null, 559.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8410, 'Straits Salish', 'str', null, null, 559.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8411, 'Shumashti', 'sts', null, null, 559.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8412, 'Budeh Stieng', 'stt', null, null, 559.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8413, 'Samtao', 'stu', null, null, 559.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8414, 'Silt e', 'stv', null, null, 559.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8415, 'Satawalese', 'stw', null, null, 559.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8416, 'Siberian Tatar', 'sty', null, null, 559.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8417, 'Sulka', 'sua', null, null, 559.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8418, 'Suku', 'sub', null, null, 559.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8419, 'Western Subanon', 'suc', null, null, 560.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8420, 'Suena', 'sue', null, null, 560.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8421, 'Suganga', 'sug', null, null, 560.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8422, 'Suki', 'sui', null, null, 560.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8423, 'Shubi', 'suj', null, null, 560.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8424, 'Sukuma', 'suk', null, null, 560.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8425, 'Sundanese', 'sun', null, null, 560.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8426, 'Suri', 'suq', null, null, 560.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8427, 'Mwaghavul', 'sur', null, null, 560.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8428, 'Susu', 'sus', null, null, 560.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8429, 'Puroik', 'suv', null, null, 561.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8430, 'Sumbwa', 'suw', null, null, 561.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8431, 'Suy?', 'suy', null, null, 561.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8432, 'Sunwar', 'suz', null, null, 561.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8433, 'Svan', 'sva', null, null, 561.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8434, 'Ulau-Suain', 'svb', null, null, 561.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8435, 'Vincentian Creole English', 'svc', null, null, 561.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8436, 'Serili', 'sve', null, null, 561.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8437, 'Slovakian Sign Language', 'svk', null, null, 561.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8438, 'Slavomolisano', 'svm', null, null, 561.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8439, 'Savosavo', 'svs', null, null, 562.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8440, 'Swahili (macrolanguage)', 'swa', null, null, 562.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8441, 'Maore Comorian', 'swb', null, null, 562.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8442, 'Congo Swahili', 'swc', null, null, 562.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8443, 'Swedish', 'swe', null, null, 562.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8444, 'Sere', 'swf', null, null, 562.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8445, 'Swabian', 'swg', null, null, 562.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8446, 'Swahili (individual language)', 'swh', null, null, 562.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8447, 'Sui', 'swi', null, null, 562.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8448, 'Sira', 'swj', null, null, 562.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8449, 'Malawi Sena', 'swk', null, null, 563.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8450, 'Swedish Sign Language', 'swl', null, null, 563.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8451, 'Samosa', 'swm', null, null, 563.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8452, 'Sawknah', 'swn', null, null, 563.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8453, 'Shanenawa', 'swo', null, null, 563.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8454, 'Suau', 'swp', null, null, 563.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8455, 'Sharwa', 'swq', null, null, 563.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8456, 'Saweru', 'swr', null, null, 563.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8457, 'Seluwasan', 'sws', null, null, 563.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8458, 'Sawila', 'swt', null, null, 563.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8459, 'Suwawa', 'swu', null, null, 564.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8460, 'Shekhawati', 'swv', null, null, 564.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8461, 'Suruah?', 'swx', null, null, 564.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8462, 'Sarua', 'swy', null, null, 564.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8463, 'Suba', 'sxb', null, null, 564.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8464, 'Sighu', 'sxe', null, null, 564.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8465, 'Shixing', 'sxg', null, null, 564.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8466, 'Samre', 'sxm', null, null, 564.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8467, 'Sangir', 'sxn', null, null, 564.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8468, 'Saaroa', 'sxr', null, null, 564.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8469, 'Sasaru', 'sxs', null, null, 565.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8470, 'Upper Saxon', 'sxu', null, null, 565.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8471, 'Saxwe Gbe', 'sxw', null, null, 565.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8472, 'Siang', 'sya', null, null, 565.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8473, 'Central Subanen', 'syb', null, null, 565.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8474, 'Seki', 'syi', null, null, 565.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8475, 'Sukur', 'syk', null, null, 565.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8476, 'Sylheti', 'syl', null, null, 565.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8477, 'Maya Samo', 'sym', null, null, 565.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8478, 'Senaya', 'syn', null, null, 565.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8479, 'Suoy', 'syo', null, null, 566.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8480, 'Syriac', 'syr', null, null, 566.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8481, 'Sinyar', 'sys', null, null, 566.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8482, 'Kagate', 'syw', null, null, 566.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8483, 'Samay', 'syx', null, null, 566.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8484, 'Al-Sayyid Bedouin Sign Language', 'syy', null, null, 566.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8485, 'Semelai', 'sza', null, null, 566.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8486, 'Ngalum', 'szb', null, null, 566.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8487, 'Semaq Beri', 'szc', null, null, 566.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8488, 'Seze', 'sze', null, null, 566.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8489, 'Sengele', 'szg', null, null, 567.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8490, 'Silesian', 'szl', null, null, 567.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8491, 'Sula', 'szn', null, null, 567.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8492, 'Suabo', 'szp', null, null, 567.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8493, 'Isu (Fako Division)', 'szv', null, null, 567.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8494, 'Sawai', 'szw', null, null, 567.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8495, 'Lower Tanana', 'taa', null, null, 567.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8496, 'Tabassaran', 'tab', null, null, 567.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8497, 'Lowland Tarahumara', 'tac', null, null, 567.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8498, 'Tause', 'tad', null, null, 567.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8499, 'Tariana', 'tae', null, null, 568.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8500, 'Tapirap?', 'taf', null, null, 568.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8501, 'Tagoi', 'tag', null, null, 568.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8502, 'Tahitian', 'tah', null, null, 568.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8503, 'Eastern Tamang', 'taj', null, null, 568.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8504, 'Tala', 'tak', null, null, 568.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8505, 'Tal', 'tal', null, null, 568.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8506, 'Tamil', 'tam', null, null, 568.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8507, 'Tangale', 'tan', null, null, 568.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8508, 'Yami', 'tao', null, null, 568.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8509, 'Taabwa', 'tap', null, null, 569.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8510, 'Tamasheq', 'taq', null, null, 569.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8511, 'Central Tarahumara', 'tar', null, null, 569.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8512, 'Tatar', 'tat', null, null, 569.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8513, 'Upper Tanana', 'tau', null, null, 569.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8514, 'Tatuyo', 'tav', null, null, 569.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8515, 'Tai', 'taw', null, null, 569.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8516, 'Tamki', 'tax', null, null, 569.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8517, 'Atayal', 'tay', null, null, 569.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8518, 'Tocho', 'taz', null, null, 569.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8519, 'Aikan?', 'tba', null, null, 570.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8520, 'Takia', 'tbc', null, null, 570.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8521, 'Kaki Ae', 'tbd', null, null, 570.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8522, 'Tanimbili', 'tbe', null, null, 570.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8523, 'Mandara', 'tbf', null, null, 570.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8524, 'North Tairora', 'tbg', null, null, 570.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8525, 'Gaam', 'tbi', null, null, 570.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8526, 'Tiang', 'tbj', null, null, 570.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8527, 'Calamian Tagbanwa', 'tbk', null, null, 570.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8528, 'Tboli', 'tbl', null, null, 570.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8529, 'Tagbu', 'tbm', null, null, 571.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8530, 'Barro Negro Tunebo', 'tbn', null, null, 571.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8531, 'Tawala', 'tbo', null, null, 571.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8532, 'Taworta', 'tbp', null, null, 571.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8533, 'Tumtum', 'tbr', null, null, 571.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8534, 'Tanguat', 'tbs', null, null, 571.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8535, 'Tembo (Kitembo)', 'tbt', null, null, 571.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8536, 'Tobo', 'tbv', null, null, 571.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8537, 'Tagbanwa', 'tbw', null, null, 571.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8538, 'Kapin', 'tbx', null, null, 571.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8539, 'Tabaru', 'tby', null, null, 572.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8540, 'Ditammari', 'tbz', null, null, 572.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8541, 'Ticuna', 'tca', null, null, 572.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8542, 'Tanacross', 'tcb', null, null, 572.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8543, 'Datooga', 'tcc', null, null, 572.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8544, 'Tafi', 'tcd', null, null, 572.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8545, 'Southern Tutchone', 'tce', null, null, 572.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8546, 'Malinaltepec Me phaa', 'tcf', null, null, 572.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8547, 'Tamagario', 'tcg', null, null, 572.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8548, 'Turks And Caicos Creole English', 'tch', null, null, 572.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8549, 'W?ra', 'tci', null, null, 573.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8550, 'Tchitchege', 'tck', null, null, 573.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8551, 'Tanahmerah', 'tcm', null, null, 573.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8552, 'Tichurong', 'tcn', null, null, 573.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8553, 'Taungyo', 'tco', null, null, 573.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8554, 'Tawr Chin', 'tcp', null, null, 573.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8555, 'Kaiy', 'tcq', null, null, 573.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8556, 'Torres Strait Creole', 'tcs', null, null, 573.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8557, 'T en', 'tct', null, null, 573.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8558, 'Southeastern Tarahumara', 'tcu', null, null, 573.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8559, 'Tecpatl?n Totonac', 'tcw', null, null, 574.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8560, 'Toda', 'tcx', null, null, 574.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8561, 'Tulu', 'tcy', null, null, 574.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8562, 'Thado Chin', 'tcz', null, null, 574.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8563, 'Tagdal', 'tda', null, null, 574.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8564, 'Panchpargania', 'tdb', null, null, 574.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8565, 'Ember?-Tad?', 'tdc', null, null, 574.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8566, 'Tai N?a', 'tdd', null, null, 574.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8567, 'Tiranige Diga Dogon', 'tde', null, null, 574.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8568, 'Talieng', 'tdf', null, null, 574.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8569, 'Western Tamang', 'tdg', null, null, 575.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8570, 'Thulung', 'tdh', null, null, 575.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8571, 'Tomadino', 'tdi', null, null, 575.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8572, 'Tajio', 'tdj', null, null, 575.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8573, 'Tambas', 'tdk', null, null, 575.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8574, 'Sur', 'tdl', null, null, 575.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8575, 'Taruma', 'tdm', null, null, 575.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8576, 'Tondano', 'tdn', null, null, 575.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8577, 'Teme', 'tdo', null, null, 575.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8578, 'Tita', 'tdq', null, null, 575.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8579, 'Todrah', 'tdr', null, null, 576.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8580, 'Doutai', 'tds', null, null, 576.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8581, 'Tetun Dili', 'tdt', null, null, 576.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8582, 'Toro', 'tdv', null, null, 576.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8583, 'Tandroy-Mahafaly Malagasy', 'tdx', null, null, 576.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8584, 'Tadyawan', 'tdy', null, null, 576.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8585, 'Temiar', 'tea', null, null, 576.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8586, 'Terik', 'tec', null, null, 576.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8587, 'Tepo Krumen', 'ted', null, null, 576.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8588, 'Huehuetla Tepehua', 'tee', null, null, 576.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8589, 'Teressa', 'tef', null, null, 577.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8590, 'Teke-Tege', 'teg', null, null, 577.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8591, 'Tehuelche', 'teh', null, null, 577.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8592, 'Torricelli', 'tei', null, null, 577.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8593, 'Ibali Teke', 'tek', null, null, 577.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8594, 'Telugu', 'tel', null, null, 577.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8595, 'Timne', 'tem', null, null, 577.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8596, 'Teso', 'teo', null, null, 577.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8597, 'Temein', 'teq', null, null, 577.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8598, 'Tereno', 'ter', null, null, 577.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8599, 'Tengger', 'tes', null, null, 578.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8600, 'Tetum', 'tet', null, null, 578.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8601, 'Soo', 'teu', null, null, 578.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8602, 'Teor', 'tev', null, null, 578.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8603, 'Tewa (USA)', 'tew', null, null, 578.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8604, 'Tennet', 'tex', null, null, 578.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8605, 'Tulishi', 'tey', null, null, 578.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8606, 'Tofin Gbe', 'tfi', null, null, 578.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8607, 'Tanaina', 'tfn', null, null, 578.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8608, 'Tefaro', 'tfo', null, null, 578.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8609, 'Teribe', 'tfr', null, null, 579.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8610, 'Ternate', 'tft', null, null, 579.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8611, 'Sagalla', 'tga', null, null, 579.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8612, 'Tobilung', 'tgb', null, null, 579.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8613, 'Tigak', 'tgc', null, null, 579.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8614, 'Ciwogai', 'tgd', null, null, 579.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8615, 'Eastern Gorkha Tamang', 'tge', null, null, 579.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8616, 'Chalikha', 'tgf', null, null, 579.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8617, 'Tobagonian Creole English', 'tgh', null, null, 579.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8618, 'Lawunuia', 'tgi', null, null, 579.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8619, 'Tagin', 'tgj', null, null, 580.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8620, 'Tajik', 'tgk', null, null, 580.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8621, 'Tagalog', 'tgl', null, null, 580.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8622, 'Tandaganon', 'tgn', null, null, 580.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8623, 'Sudest', 'tgo', null, null, 580.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8624, 'Tangoa', 'tgp', null, null, 580.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8625, 'Tring', 'tgq', null, null, 580.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8626, 'Tareng', 'tgr', null, null, 580.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8627, 'Nume', 'tgs', null, null, 580.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8628, 'Central Tagbanwa', 'tgt', null, null, 580.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8629, 'Tanggu', 'tgu', null, null, 581.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8630, 'Tagwana Senoufo', 'tgw', null, null, 581.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8631, 'Tagish', 'tgx', null, null, 581.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8632, 'Thai', 'tha', null, null, 581.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8633, 'Thayore', 'thd', null, null, 581.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8634, 'Chitwania Tharu', 'the', null, null, 581.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8635, 'Thangmi', 'thf', null, null, 581.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8636, 'Northern Tarahumara', 'thh', null, null, 581.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8637, 'Tai Long', 'thi', null, null, 581.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8638, 'Tharaka', 'thk', null, null, 581.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8639, 'Dangaura Tharu', 'thl', null, null, 582.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8640, 'Aheu', 'thm', null, null, 582.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8641, 'Thachanadan', 'thn', null, null, 582.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8642, 'Thompson', 'thp', null, null, 582.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8643, 'Kochila Tharu', 'thq', null, null, 582.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8644, 'Rana Tharu', 'thr', null, null, 582.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8645, 'Thakali', 'ths', null, null, 582.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8646, 'Tahltan', 'tht', null, null, 582.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8647, 'Thuri', 'thu', null, null, 582.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8648, 'Tahaggart Tamahaq', 'thv', null, null, 582.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8649, 'Thudam', 'thw', null, null, 583.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8650, 'Tha', 'thy', null, null, 583.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8651, 'Tayart Tamajeq', 'thz', null, null, 583.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8652, 'Tidikelt Tamazight', 'tia', null, null, 583.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8653, 'Tira', 'tic', null, null, 583.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8654, 'Tifal', 'tif', null, null, 583.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8655, 'Tigre', 'tig', null, null, 583.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8656, 'Timugon Murut', 'tih', null, null, 583.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8657, 'Tiene', 'tii', null, null, 583.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8658, 'Tilung', 'tij', null, null, 583.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8659, 'Tikar', 'tik', null, null, 584.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8660, 'Timbe', 'tim', null, null, 584.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8661, 'Tindi', 'tin', null, null, 584.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8662, 'Teop', 'tio', null, null, 584.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8663, 'Trimuris', 'tip', null, null, 584.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8664, 'Ti?fo', 'tiq', null, null, 584.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8665, 'Tigrinya', 'tir', null, null, 584.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8666, 'Masadiit Itneg', 'tis', null, null, 584.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8667, 'Tinigua', 'tit', null, null, 584.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8668, 'Adasen', 'tiu', null, null, 584.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8669, 'Tiv', 'tiv', null, null, 585.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8670, 'Tiwi', 'tiw', null, null, 585.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8671, 'Southern Tiwa', 'tix', null, null, 585.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8672, 'Tiruray', 'tiy', null, null, 585.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8673, 'Tai Hongjin', 'tiz', null, null, 585.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8674, 'Tajuasohn', 'tja', null, null, 585.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8675, 'Tunjung', 'tjg', null, null, 585.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8676, 'Northern Tujia', 'tji', null, null, 585.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8677, 'Tai Laing', 'tjl', null, null, 585.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8678, 'Temacine Tamazight', 'tjo', null, null, 585.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8679, 'Southern Tujia', 'tjs', null, null, 586.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8680, 'Djabwurrung', 'tjw', null, null, 586.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8681, 'Buksa', 'tkb', null, null, 586.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8682, 'Tukudede', 'tkd', null, null, 586.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8683, 'Takwane', 'tke', null, null, 586.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8684, 'Tesaka Malagasy', 'tkg', null, null, 586.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8685, 'Tokelau', 'tkl', null, null, 586.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8686, 'Toku-No-Shima', 'tkn', null, null, 586.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8687, 'Tikopia', 'tkp', null, null, 586.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8688, 'Tee', 'tkq', null, null, 586.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8689, 'Tsakhur', 'tkr', null, null, 587.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8690, 'Takestani', 'tks', null, null, 587.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8691, 'Kathoriya Tharu', 'tkt', null, null, 587.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8692, 'Upper Necaxa Totonac', 'tku', null, null, 587.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8693, 'Mur Pano', 'tkv', null, null, 587.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8694, 'Teanu', 'tkw', null, null, 587.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8695, 'Tangko', 'tkx', null, null, 587.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8696, 'Takua', 'tkz', null, null, 587.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8697, 'Southwestern Tepehuan', 'tla', null, null, 587.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8698, 'Tobelo', 'tlb', null, null, 587.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8699, 'Yecuatla Totonac', 'tlc', null, null, 588.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8700, 'Talaud', 'tld', null, null, 588.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8701, 'Telefol', 'tlf', null, null, 588.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8702, 'Tofanma', 'tlg', null, null, 588.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8703, 'Tlingit', 'tli', null, null, 588.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8704, 'Talinga-Bwisi', 'tlj', null, null, 588.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8705, 'Taloki', 'tlk', null, null, 588.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8706, 'Tetela', 'tll', null, null, 588.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8707, 'Tolomako', 'tlm', null, null, 588.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8708, 'Talondo', 'tln', null, null, 588.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8709, 'Talodi', 'tlo', null, null, 589.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8710, 'Filomena Mata-Coahuitl?n Totonac', 'tlp', null, null, 589.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8711, 'Tai Loi', 'tlq', null, null, 589.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8712, 'Talise', 'tlr', null, null, 589.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8713, 'Tambotalo', 'tls', null, null, 589.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8714, 'Sou Nama', 'tlt', null, null, 589.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8715, 'Tulehu', 'tlu', null, null, 589.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8716, 'Taliabu', 'tlv', null, null, 589.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8717, 'Khehek', 'tlx', null, null, 589.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8718, 'Talysh', 'tly', null, null, 589.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8719, 'Tama (Chad)', 'tma', null, null, 590.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8720, 'Katbol', 'tmb', null, null, 590.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8721, 'Tumak', 'tmc', null, null, 590.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8722, 'Haruai', 'tmd', null, null, 590.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8723, 'Toba-Maskoy', 'tmf', null, null, 590.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8724, 'Tamashek', 'tmh', null, null, 590.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8725, 'Tutuba', 'tmi', null, null, 590.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8726, 'Samarokena', 'tmj', null, null, 590.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8727, 'Northwestern Tamang', 'tmk', null, null, 590.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8728, 'Tamnim Citak', 'tml', null, null, 590.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8729, 'Tai Thanh', 'tmm', null, null, 591.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8730, 'Taman (Indonesia)', 'tmn', null, null, 591.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8731, 'Temoq', 'tmo', null, null, 591.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8732, 'Tumleo', 'tmq', null, null, 591.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8733, 'Tima', 'tms', null, null, 591.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8734, 'Tasmate', 'tmt', null, null, 591.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8735, 'Iau', 'tmu', null, null, 591.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8736, 'Tembo (Motembo)', 'tmv', null, null, 591.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8737, 'Temuan', 'tmw', null, null, 591.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8738, 'Tami', 'tmy', null, null, 591.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8739, 'Tacana', 'tna', null, null, 592.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8740, 'Western Tunebo', 'tnb', null, null, 592.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8741, 'Tanimuca-Retuar?', 'tnc', null, null, 592.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8742, 'Angosturas Tunebo', 'tnd', null, null, 592.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8743, 'Tobanga', 'tng', null, null, 592.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8744, 'Maiani', 'tnh', null, null, 592.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8745, 'Tandia', 'tni', null, null, 592.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8746, 'Kwamera', 'tnk', null, null, 592.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8747, 'Lenakel', 'tnl', null, null, 592.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8748, 'Tabla', 'tnm', null, null, 592.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8749, 'North Tanna', 'tnn', null, null, 593.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8750, 'Toromono', 'tno', null, null, 593.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8751, 'Whitesands', 'tnp', null, null, 593.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8752, 'M?nik', 'tnr', null, null, 593.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8753, 'Tenis', 'tns', null, null, 593.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8754, 'Tontemboan', 'tnt', null, null, 593.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8755, 'Tay Khang', 'tnu', null, null, 593.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8756, 'Tangchangya', 'tnv', null, null, 593.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8757, 'Tonsawang', 'tnw', null, null, 593.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8758, 'Tanema', 'tnx', null, null, 593.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8759, 'Tongwe', 'tny', null, null, 594.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8760, 'Ten edn', 'tnz', null, null, 594.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8761, 'Toba', 'tob', null, null, 594.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8762, 'Coyutla Totonac', 'toc', null, null, 594.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8763, 'Toma', 'tod', null, null, 594.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8764, 'Gizrra', 'tof', null, null, 594.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8765, 'Tonga (Nyasa)', 'tog', null, null, 594.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8766, 'Gitonga', 'toh', null, null, 594.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8767, 'Tonga (Zambia)', 'toi', null, null, 594.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8768, 'Tojolabal', 'toj', null, null, 594.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8769, 'Tolowa', 'tol', null, null, 595.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8770, 'Tombulu', 'tom', null, null, 595.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8771, 'Tonga (Tonga Islands)', 'ton', null, null, 595.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8772, 'Xicotepec De Ju?rez Totonac', 'too', null, null, 595.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8773, 'Papantla Totonac', 'top', null, null, 595.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8774, 'Toposa', 'toq', null, null, 595.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8775, 'Togbo-Vara Banda', 'tor', null, null, 595.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8776, 'Highland Totonac', 'tos', null, null, 595.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8777, 'Tho', 'tou', null, null, 595.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8778, 'Upper Taromi', 'tov', null, null, 595.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8779, 'Jemez', 'tow', null, null, 596.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8780, 'Tobian', 'tox', null, null, 596.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8781, 'Topoiyo', 'toy', null, null, 596.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8782, 'To', 'toz', null, null, 596.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8783, 'Taupota', 'tpa', null, null, 596.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8784, 'Azoy? Me phaa', 'tpc', null, null, 596.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8785, 'Tippera', 'tpe', null, null, 596.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8786, 'Tarpia', 'tpf', null, null, 596.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8787, 'Kula', 'tpg', null, null, 596.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8788, 'Tok Pisin', 'tpi', null, null, 596.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8789, 'Tapiet?', 'tpj', null, null, 597.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8790, 'Tlacoapa Me phaa', 'tpl', null, null, 597.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8791, 'Tampulma', 'tpm', null, null, 597.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8792, 'Tai Pao', 'tpo', null, null, 597.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8793, 'Pisaflores Tepehua', 'tpp', null, null, 597.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8794, 'Tukpa', 'tpq', null, null, 597.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8795, 'Tupar?', 'tpr', null, null, 597.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8796, 'Tlachichilco Tepehua', 'tpt', null, null, 597.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8797, 'Tampuan', 'tpu', null, null, 597.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8798, 'Tanapag', 'tpv', null, null, 597.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8799, 'Acatepec Me phaa', 'tpx', null, null, 598.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8800, 'Trumai', 'tpy', null, null, 598.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8801, 'Tinputz', 'tpz', null, null, 598.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8802, 'Temb?', 'tqb', null, null, 598.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8803, 'Lehali', 'tql', null, null, 598.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8804, 'Turumsa', 'tqm', null, null, 598.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8805, 'Tenino', 'tqn', null, null, 598.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8806, 'Toaripi', 'tqo', null, null, 598.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8807, 'Tomoip', 'tqp', null, null, 598.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8808, 'Tunni', 'tqq', null, null, 598.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8809, 'Western Totonac', 'tqt', null, null, 599.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8810, 'Touo', 'tqu', null, null, 599.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8811, 'Tirahi', 'tra', null, null, 599.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8812, 'Terebu', 'trb', null, null, 599.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8813, 'Copala Triqui', 'trc', null, null, 599.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8814, 'Turi', 'trd', null, null, 599.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8815, 'East Tarangan', 'tre', null, null, 599.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8816, 'Trinidadian Creole English', 'trf', null, null, 599.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8817, 'Lish?n Did?n', 'trg', null, null, 599.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8818, 'Turaka', 'trh', null, null, 599.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8819, 'Tri?', 'tri', null, null, 600.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8820, 'Toram', 'trj', null, null, 600.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8821, 'Traveller Scottish', 'trl', null, null, 600.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8822, 'Tregami', 'trm', null, null, 600.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8823, 'Trinitario', 'trn', null, null, 600.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8824, 'Tarao Naga', 'tro', null, null, 600.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8825, 'Kok Borok', 'trp', null, null, 600.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8826, 'San Mart?n Itunyoso Triqui', 'trq', null, null, 600.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8827, 'Taushiro', 'trr', null, null, 600.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8828, 'Chicahuaxtla Triqui', 'trs', null, null, 600.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8829, 'Tunggare', 'trt', null, null, 601.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8830, 'Turoyo', 'tru', null, null, 601.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8831, 'Taroko', 'trv', null, null, 601.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8832, 'Torwali', 'trw', null, null, 601.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8833, 'Tringgus-Sembaan Bidayuh', 'trx', null, null, 601.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8834, 'Tsaangi', 'tsa', null, null, 601.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8835, 'Tsamai', 'tsb', null, null, 601.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8836, 'Tswa', 'tsc', null, null, 601.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8837, 'Tsakonian', 'tsd', null, null, 601.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8838, 'Tunisian Sign Language', 'tse', null, null, 601.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8839, 'Tausug', 'tsg', null, null, 602.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8840, 'Tsuvan', 'tsh', null, null, 602.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8841, 'Tsimshian', 'tsi', null, null, 602.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8842, 'Tshangla', 'tsj', null, null, 602.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8843, 'Tseku', 'tsk', null, null, 602.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8844, 'Ts ?n-Lao', 'tsl', null, null, 602.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8845, 'Turkish Sign Language', 'tsm', null, null, 602.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8846, 'Tswana', 'tsn', null, null, 602.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8847, 'Tsonga', 'tso', null, null, 602.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8848, 'Northern Toussian', 'tsp', null, null, 602.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8849, 'Thai Sign Language', 'tsq', null, null, 603.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8850, 'Akei', 'tsr', null, null, 603.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8851, 'Taiwan Sign Language', 'tss', null, null, 603.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8852, 'Tondi Songway Kiini', 'tst', null, null, 603.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8853, 'Tsou', 'tsu', null, null, 603.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8854, 'Tsogo', 'tsv', null, null, 603.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8855, 'Tsishingini', 'tsw', null, null, 603.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8856, 'Mubami', 'tsx', null, null, 603.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8857, 'Tebul Sign Language', 'tsy', null, null, 603.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8858, 'Purepecha', 'tsz', null, null, 603.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8859, 'Gaa', 'ttb', null, null, 604.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8860, 'Tektiteko', 'ttc', null, null, 604.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8861, 'Tauade', 'ttd', null, null, 604.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8862, 'Bwanabwana', 'tte', null, null, 604.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8863, 'Tuotomb', 'ttf', null, null, 604.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8864, 'Tutong', 'ttg', null, null, 604.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8865, 'Upper Ta oih', 'tth', null, null, 604.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8866, 'Tobati', 'tti', null, null, 604.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8867, 'Tooro', 'ttj', null, null, 604.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8868, 'Totoro', 'ttk', null, null, 604.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8869, 'Totela', 'ttl', null, null, 605.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8870, 'Northern Tutchone', 'ttm', null, null, 605.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8871, 'Towei', 'ttn', null, null, 605.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8872, 'Lower Ta oih', 'tto', null, null, 605.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8873, 'Tombelala', 'ttp', null, null, 605.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8874, 'Tawallammat Tamajaq', 'ttq', null, null, 605.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8875, 'Tera', 'ttr', null, null, 605.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8876, 'Northeastern Thai', 'tts', null, null, 605.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8877, 'Muslim Tat', 'ttt', null, null, 605.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8878, 'Torau', 'ttu', null, null, 605.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8879, 'Titan', 'ttv', null, null, 606.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8880, 'Long Wat', 'ttw', null, null, 606.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8881, 'Sikaritai', 'tty', null, null, 606.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8882, 'Tsum', 'ttz', null, null, 606.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8883, 'Wiarumus', 'tua', null, null, 606.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8884, 'T?batulabal', 'tub', null, null, 606.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8885, 'Mutu', 'tuc', null, null, 606.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8886, 'Tuyuca', 'tue', null, null, 606.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8887, 'Central Tunebo', 'tuf', null, null, 606.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8888, 'Tunia', 'tug', null, null, 606.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8889, 'Taulil', 'tuh', null, null, 607.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8890, 'Tupuri', 'tui', null, null, 607.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8891, 'Tugutil', 'tuj', null, null, 607.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8892, 'Turkmen', 'tuk', null, null, 607.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8893, 'Tula', 'tul', null, null, 607.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8894, 'Tumbuka', 'tum', null, null, 607.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8895, 'Tucano', 'tuo', null, null, 607.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8896, 'Tedaga', 'tuq', null, null, 607.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8897, 'Turkish', 'tur', null, null, 607.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8898, 'Tuscarora', 'tus', null, null, 607.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8899, 'Tututni', 'tuu', null, null, 608.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8900, 'Turkana', 'tuv', null, null, 608.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8901, 'Tugen', 'tuy', null, null, 608.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8902, 'Turka', 'tuz', null, null, 608.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8903, 'Vaghua', 'tva', null, null, 608.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8904, 'Tsuvadi', 'tvd', null, null, 608.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8905, 'Te un', 'tve', null, null, 608.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8906, 'Southeast Ambrym', 'tvk', null, null, 608.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8907, 'Tuvalu', 'tvl', null, null, 608.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8908, 'Tela-Masbuar', 'tvm', null, null, 608.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8909, 'Tavoyan', 'tvn', null, null, 609.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8910, 'Tidore', 'tvo', null, null, 609.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8911, 'Taveta', 'tvs', null, null, 609.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8912, 'Tutsa Naga', 'tvt', null, null, 609.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8913, 'Tunen', 'tvu', null, null, 609.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8914, 'Sedoa', 'tvw', null, null, 609.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8915, 'Western Tawbuid', 'twb', null, null, 609.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8916, 'Twents', 'twd', null, null, 609.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8917, 'Tewa (Indonesia)', 'twe', null, null, 609.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8918, 'Northern Tiwa', 'twf', null, null, 609.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8919, 'Tereweng', 'twg', null, null, 610.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8920, 'Tai D?n', 'twh', null, null, 610.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8921, 'Twi', 'twi', null, null, 610.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8922, 'Tawara', 'twl', null, null, 610.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8923, 'Tawang Monpa', 'twm', null, null, 610.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8924, 'Twendi', 'twn', null, null, 610.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8925, 'Tswapong', 'two', null, null, 610.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8926, 'Ere', 'twp', null, null, 610.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8927, 'Tasawaq', 'twq', null, null, 610.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8928, 'Southwestern Tarahumara', 'twr', null, null, 610.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8929, 'Termanu', 'twu', null, null, 611.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8930, 'Tuwari', 'tww', null, null, 611.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8931, 'Tewe', 'twx', null, null, 611.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8932, 'Tawoyan', 'twy', null, null, 611.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8933, 'Tombonuo', 'txa', null, null, 611.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8934, 'Totoli', 'txe', null, null, 611.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8935, 'Ikpeng', 'txi', null, null, 611.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8936, 'Tarjumo', 'txj', null, null, 611.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8937, 'Tomini', 'txm', null, null, 611.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8938, 'West Tarangan', 'txn', null, null, 611.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8939, 'Toto', 'txo', null, null, 612.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8940, 'Tii', 'txq', null, null, 612.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8941, 'Tonsea', 'txs', null, null, 612.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8942, 'Citak', 'txt', null, null, 612.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8943, 'Kayap?', 'txu', null, null, 612.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8944, 'Tatana', 'txx', null, null, 612.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8945, 'Tanosy Malagasy', 'txy', null, null, 612.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8946, 'Tauya', 'tya', null, null, 612.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8947, 'Kyanga', 'tye', null, null, 612.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8948, 'O du', 'tyh', null, null, 612.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8949, 'Teke-Tsaayi', 'tyi', null, null, 613.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8950, 'Tai Do', 'tyj', null, null, 613.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8951, 'Thu Lao', 'tyl', null, null, 613.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8952, 'Kombai', 'tyn', null, null, 613.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8953, 'Tai Daeng', 'tyr', null, null, 613.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8954, 'T?y Sa Pa', 'tys', null, null, 613.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8955, 'T?y Tac', 'tyt', null, null, 613.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8956, 'Kua', 'tyu', null, null, 613.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8957, 'Tuvinian', 'tyv', null, null, 613.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8958, 'Teke-Tyee', 'tyx', null, null, 613.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8959, 'T?y', 'tyz', null, null, 614.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8960, 'Tanzanian Sign Language', 'tza', null, null, 614.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8961, 'Tzeltal', 'tzh', null, null, 614.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8962, 'Tz utujil', 'tzj', null, null, 614.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8963, 'Central Atlas Tamazight', 'tzm', null, null, 614.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8964, 'Tugun', 'tzn', null, null, 614.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8965, 'Tzotzil', 'tzo', null, null, 614.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8966, 'Tabriak', 'tzx', null, null, 614.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8967, 'Kuan', 'uan', null, null, 614.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8968, 'Tairuma', 'uar', null, null, 614.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8969, 'Ubang', 'uba', null, null, 615.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8970, 'Ubi', 'ubi', null, null, 615.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8971, 'Buhi non Bikol', 'ubl', null, null, 615.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8972, 'Ubir', 'ubr', null, null, 615.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8973, 'Umbu-Ungu', 'ubu', null, null, 615.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8974, 'Uda', 'uda', null, null, 615.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8975, 'Udihe', 'ude', null, null, 615.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8976, 'Muduga', 'udg', null, null, 615.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8977, 'Udi', 'udi', null, null, 615.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8978, 'Ujir', 'udj', null, null, 615.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8979, 'Wuzlam', 'udl', null, null, 616.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8980, 'Udmurt', 'udm', null, null, 616.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8981, 'Uduk', 'udu', null, null, 616.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8982, 'Kioko', 'ues', null, null, 616.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8983, 'Ufim', 'ufi', null, null, 616.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8984, 'Ughele', 'uge', null, null, 616.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8985, 'Ugandan Sign Language', 'ugn', null, null, 616.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8986, 'Ugong', 'ugo', null, null, 616.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8987, 'Uruguayan Sign Language', 'ugy', null, null, 616.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8988, 'Uhami', 'uha', null, null, 616.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8989, 'Damal', 'uhn', null, null, 617.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8990, 'Uighur', 'uig', null, null, 617.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8991, 'Uisai', 'uis', null, null, 617.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8992, 'Iyive', 'uiv', null, null, 617.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8993, 'Tanjijili', 'uji', null, null, 617.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8994, 'Kaburi', 'uka', null, null, 617.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8995, 'Ukuriguma', 'ukg', null, null, 617.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8996, 'Ukhwejo', 'ukh', null, null, 617.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8997, 'Ukrainian Sign Language', 'ukl', null, null, 617.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8998, 'Ukpe-Bayobiri', 'ukp', null, null, 617.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 8999, 'Ukwa', 'ukq', null, null, 618.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9000, 'Ukrainian', 'ukr', null, null, 618.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9001, 'Urub?-Kaapor Sign Language', 'uks', null, null, 618.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9002, 'Ukue', 'uku', null, null, 618.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9003, 'Ukwuani-Aboh-Ndoni', 'ukw', null, null, 618.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9004, 'Fungwa', 'ula', null, null, 618.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9005, 'Ulukwumi', 'ulb', null, null, 618.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9006, 'Ulch', 'ulc', null, null, 618.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9007, 'Usku', 'ulf', null, null, 618.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9008, 'Ulithian', 'uli', null, null, 618.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9009, 'Meriam', 'ulk', null, null, 619.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9010, 'Ullatan', 'ull', null, null, 619.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9011, 'Ulumanda', 'ulm', null, null, 619.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9012, 'Unserdeutsch', 'uln', null, null, 619.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9013, 'Uma Lung', 'ulu', null, null, 619.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9014, 'Ulwa', 'ulw', null, null, 619.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9015, 'Umatilla', 'uma', null, null, 619.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9016, 'Umbundu', 'umb', null, null, 619.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9017, 'Ukit', 'umi', null, null, 619.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9018, 'Umon', 'umm', null, null, 619.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9019, 'Makyan Naga', 'umn', null, null, 620.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9020, 'Umpila', 'ump', null, null, 620.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9021, 'Pendau', 'ums', null, null, 620.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9022, 'Munsee', 'umu', null, null, 620.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9023, 'North Watut', 'una', null, null, 620.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9024, 'Uneme', 'une', null, null, 620.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9025, 'Ngarinyin', 'ung', null, null, 620.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9026, 'Enawen?-Naw?', 'unk', null, null, 620.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9027, 'Kurnai', 'unn', null, null, 620.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9028, 'Mundari', 'unr', null, null, 620.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9029, 'Unubahe', 'unu', null, null, 621.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9030, 'Munda', 'unx', null, null, 621.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9031, 'Unde Kaili', 'unz', null, null, 621.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9032, 'Umeda', 'upi', null, null, 621.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9033, 'Uripiv-Wala-Rano-Atchin', 'upv', null, null, 621.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9034, 'Urarina', 'ura', null, null, 621.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9035, 'Urub?-Kaapor', 'urb', null, null, 621.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9036, 'Urdu', 'urd', null, null, 621.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9037, 'Uru', 'ure', null, null, 621.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9038, 'Urigina', 'urg', null, null, 621.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9039, 'Urhobo', 'urh', null, null, 622.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9040, 'Urim', 'uri', null, null, 622.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9041, 'Urak Lawoi', 'urk', null, null, 622.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9042, 'Urali', 'url', null, null, 622.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9043, 'Urapmin', 'urm', null, null, 622.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9044, 'Uruangnirin', 'urn', null, null, 622.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9045, 'Ura (Papua New Guinea)', 'uro', null, null, 622.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9046, 'Uru-Pa-In', 'urp', null, null, 622.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9047, 'Lehalurup', 'urr', null, null, 622.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9048, 'Urat', 'urt', null, null, 622.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9049, 'Sop', 'urw', null, null, 623.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9050, 'Urimo', 'urx', null, null, 623.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9051, 'Orya', 'ury', null, null, 623.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9052, 'Uru-Eu-Wau-Wau', 'urz', null, null, 623.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9053, 'Usarufa', 'usa', null, null, 623.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9054, 'Ushojo', 'ush', null, null, 623.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9055, 'Usui', 'usi', null, null, 623.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9056, 'Usaghade', 'usk', null, null, 623.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9057, 'Uspanteco', 'usp', null, null, 623.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9058, 'Uya', 'usu', null, null, 623.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9059, 'Otank', 'uta', null, null, 624.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9060, 'Ute-Southern Paiute', 'ute', null, null, 624.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9061, 'Amba (Solomon Islands)', 'utp', null, null, 624.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9062, 'Etulo', 'utr', null, null, 624.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9063, 'Utu', 'utu', null, null, 624.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9064, 'Urum', 'uum', null, null, 624.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9065, 'Kulon-Pazeh', 'uun', null, null, 624.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9066, 'Ura (Vanuatu)', 'uur', null, null, 624.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9067, 'U', 'uuu', null, null, 624.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9068, 'West Uvean', 'uve', null, null, 624.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9069, 'Uri', 'uvh', null, null, 625.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9070, 'Lote', 'uvl', null, null, 625.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9071, 'Kuku-Uwanh', 'uwa', null, null, 625.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9072, 'Doko-Uyanga', 'uya', null, null, 625.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9073, 'Uzbek', 'uzb', null, null, 625.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9074, 'Northern Uzbek', 'uzn', null, null, 625.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9075, 'Southern Uzbek', 'uzs', null, null, 625.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9076, 'Vaagri Booli', 'vaa', null, null, 625.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9077, 'Vale', 'vae', null, null, 625.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9078, 'Vafsi', 'vaf', null, null, 625.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9079, 'Vagla', 'vag', null, null, 626.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9080, 'Varhadi-Nagpuri', 'vah', null, null, 626.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9081, 'Vai', 'vai', null, null, 626.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9082, 'Sekele', 'vaj', null, null, 626.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9083, 'Vehes', 'val', null, null, 626.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9084, 'Vanimo', 'vam', null, null, 626.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9085, 'Valman', 'van', null, null, 626.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9086, 'Vao', 'vao', null, null, 626.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9087, 'Vaiphei', 'vap', null, null, 626.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9088, 'Huarijio', 'var', null, null, 626.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9089, 'Vasavi', 'vas', null, null, 627.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9090, 'Vanuma', 'vau', null, null, 627.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9091, 'Varli', 'vav', null, null, 627.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9092, 'Wayu', 'vay', null, null, 627.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9093, 'Southeast Babar', 'vbb', null, null, 627.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9094, 'Southwestern Bontok', 'vbk', null, null, 627.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9095, 'Venetian', 'vec', null, null, 627.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9096, 'Veddah', 'ved', null, null, 627.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9097, 'Veluws', 'vel', null, null, 627.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9098, 'Vemgo-Mabas', 'vem', null, null, 627.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9099, 'Venda', 'ven', null, null, 628.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9100, 'Veps', 'vep', null, null, 628.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9101, 'Mom Jango', 'ver', null, null, 628.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9102, 'Vaghri', 'vgr', null, null, 628.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9103, 'Vlaamse Gebarentaal', 'vgt', null, null, 628.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9104, 'Virgin Islands Creole English', 'vic', null, null, 628.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9105, 'Vidunda', 'vid', null, null, 628.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9106, 'Vietnamese', 'vie', null, null, 628.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9107, 'Vili', 'vif', null, null, 628.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9108, 'Viemo', 'vig', null, null, 628.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9109, 'Vilela', 'vil', null, null, 629.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9110, 'Vinza', 'vin', null, null, 629.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9111, 'Vishavan', 'vis', null, null, 629.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9112, 'Viti', 'vit', null, null, 629.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9113, 'Iduna', 'viv', null, null, 629.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9114, 'Ija-Zuba', 'vki', null, null, 629.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9115, 'Kujarge', 'vkj', null, null, 629.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9116, 'Kaur', 'vkk', null, null, 629.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9117, 'Kulisusu', 'vkl', null, null, 629.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9118, 'Kodeoha', 'vko', null, null, 629.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9119, 'Korlai Creole Portuguese', 'vkp', null, null, 630.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9120, 'Tenggarong Kutai Malay', 'vkt', null, null, 630.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9121, 'Kurrama', 'vku', null, null, 630.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9122, 'Valpei', 'vlp', null, null, 630.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9123, 'Vlaams', 'vls', null, null, 630.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9124, 'Martuyhunira', 'vma', null, null, 630.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9125, 'Juxtlahuaca Mixtec', 'vmc', null, null, 630.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9126, 'Mudu Koraga', 'vmd', null, null, 630.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9127, 'East Masela', 'vme', null, null, 630.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9128, 'Mainfr?nkisch', 'vmf', null, null, 630.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9129, 'Lungalunga', 'vmg', null, null, 631.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9130, 'Maraghei', 'vmh', null, null, 631.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9131, 'Ixtayutla Mixtec', 'vmj', null, null, 631.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9132, 'Makhuwa-Shirima', 'vmk', null, null, 631.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9133, 'Mitlatongo Mixtec', 'vmm', null, null, 631.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9134, 'Soyaltepec Mazatec', 'vmp', null, null, 631.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9135, 'Soyaltepec Mixtec', 'vmq', null, null, 631.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9136, 'Marenje', 'vmr', null, null, 631.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9137, 'Makhuwa', 'vmw', null, null, 631.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9138, 'Tamazola Mixtec', 'vmx', null, null, 631.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9139, 'Ayautla Mazatec', 'vmy', null, null, 632.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9140, 'Mazatl?n Mazatec', 'vmz', null, null, 632.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9141, 'Vano', 'vnk', null, null, 632.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9142, 'Vinmavis', 'vnm', null, null, 632.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9143, 'Vunapu', 'vnp', null, null, 632.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9144, 'Voro', 'vor', null, null, 632.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9145, 'Votic', 'vot', null, null, 632.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9146, 'Vera a', 'vra', null, null, 632.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9147, 'V?ro', 'vro', null, null, 632.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9148, 'Varisi', 'vrs', null, null, 632.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9149, 'Burmbar', 'vrt', null, null, 633.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9150, 'Moldova Sign Language', 'vsi', null, null, 633.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9151, 'Venezuelan Sign Language', 'vsl', null, null, 633.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9152, 'Valencian Sign Language', 'vsv', null, null, 633.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9153, 'Vitou', 'vto', null, null, 633.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9154, 'Vumbu', 'vum', null, null, 633.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9155, 'Vunjo', 'vun', null, null, 633.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9156, 'Vute', 'vut', null, null, 633.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9157, 'Awa (China)', 'vwa', null, null, 633.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9158, 'Walla Walla', 'waa', null, null, 633.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9159, 'Wab', 'wab', null, null, 634.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9160, 'Wasco-Wishram', 'wac', null, null, 634.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9161, 'Wandamen', 'wad', null, null, 634.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9162, 'Walser', 'wae', null, null, 634.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9163, 'Wa ema', 'wag', null, null, 634.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9164, 'Watubela', 'wah', null, null, 634.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9165, 'Wares', 'wai', null, null, 634.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9166, 'Waffa', 'waj', null, null, 634.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9167, 'Wolaytta', 'wal', null, null, 634.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9168, 'Wan', 'wan', null, null, 634.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9169, 'Wapishana', 'wap', null, null, 635.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9170, 'Wageman', 'waq', null, null, 635.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9171, 'Waray (Philippines)', 'war', null, null, 635.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9172, 'Washo', 'was', null, null, 635.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9173, 'Kaninuwa', 'wat', null, null, 635.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9174, 'Waur?', 'wau', null, null, 635.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9175, 'Waka', 'wav', null, null, 635.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9176, 'Waiwai', 'waw', null, null, 635.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9177, 'Watam', 'wax', null, null, 635.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9178, 'Wayana', 'way', null, null, 635.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9179, 'Wampur', 'waz', null, null, 636.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9180, 'Warao', 'wba', null, null, 636.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9181, 'Wabo', 'wbb', null, null, 636.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9182, 'Waritai', 'wbe', null, null, 636.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9183, 'Wara', 'wbf', null, null, 636.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9184, 'Wanda', 'wbh', null, null, 636.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9185, 'Vwanji', 'wbi', null, null, 636.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9186, 'Alagwa', 'wbj', null, null, 636.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9187, 'Waigali', 'wbk', null, null, 636.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9188, 'Wakhi', 'wbl', null, null, 636.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9189, 'Wa', 'wbm', null, null, 637.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9190, 'Warlpiri', 'wbp', null, null, 637.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9191, 'Waddar', 'wbq', null, null, 637.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9192, 'Wagdi', 'wbr', null, null, 637.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9193, 'Wanman', 'wbt', null, null, 637.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9194, 'Wajarri', 'wbv', null, null, 637.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9195, 'Woi', 'wbw', null, null, 637.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9196, 'Yanom?mi', 'wca', null, null, 637.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9197, 'Waci Gbe', 'wci', null, null, 637.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9198, 'Wandji', 'wdd', null, null, 637.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9199, 'Wadaginam', 'wdg', null, null, 638.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9200, 'Wadjiginy', 'wdj', null, null, 638.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9201, 'W? Western', 'wec', null, null, 638.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9202, 'Wedau', 'wed', null, null, 638.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9203, 'Wergaia', 'weg', null, null, 638.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9204, 'Weh', 'weh', null, null, 638.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9205, 'Kiunum', 'wei', null, null, 638.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9206, 'Weme Gbe', 'wem', null, null, 638.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9207, 'Wemale', 'weo', null, null, 638.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9208, 'Westphalien', 'wep', null, null, 638.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9209, 'Weri', 'wer', null, null, 639.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9210, 'Cameroon Pidgin', 'wes', null, null, 639.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9211, 'Perai', 'wet', null, null, 639.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9212, 'Rawngtu Chin', 'weu', null, null, 639.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9213, 'Wejewa', 'wew', null, null, 639.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9214, 'Yafi', 'wfg', null, null, 639.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9215, 'Wagawaga', 'wgb', null, null, 639.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9216, 'Wahgi', 'wgi', null, null, 639.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9217, 'Waigeo', 'wgo', null, null, 639.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9218, 'Warrgamay', 'wgy', null, null, 639.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9219, 'Sou Upaa', 'wha', null, null, 640.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9220, 'North Wahgi', 'whg', null, null, 640.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9221, 'Wahau Kenyah', 'whk', null, null, 640.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9222, 'Wahau Kayan', 'whu', null, null, 640.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9223, 'Southern Toussian', 'wib', null, null, 640.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9224, 'Wichita', 'wic', null, null, 640.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9225, 'Wik-Ngathana', 'wig', null, null, 640.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9226, 'Wik-Me anha', 'wih', null, null, 640.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9227, 'Minidien', 'wii', null, null, 640.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9228, 'Wik-Iiyanh', 'wij', null, null, 640.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9229, 'Wikalkan', 'wik', null, null, 641.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9230, 'Wik-Mungkan', 'wim', null, null, 641.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9231, 'Ho-Chunk', 'win', null, null, 641.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9232, 'Wiru', 'wiu', null, null, 641.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9233, 'Vitu', 'wiv', null, null, 641.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9234, 'Waja', 'wja', null, null, 641.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9235, 'Warji', 'wji', null, null, 641.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9236, 'Kumbaran', 'wkb', null, null, 641.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9237, 'Wakde', 'wkd', null, null, 641.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9238, 'Kalanadi', 'wkl', null, null, 641.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9239, 'Kunduvadi', 'wku', null, null, 642.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9240, 'Walio', 'wla', null, null, 642.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9241, 'Mwali Comorian', 'wlc', null, null, 642.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9242, 'Wolane', 'wle', null, null, 642.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9243, 'Kunbarlang', 'wlg', null, null, 642.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9244, 'Waioli', 'wli', null, null, 642.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9245, 'Wali (Sudan)', 'wll', null, null, 642.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9246, 'Walloon', 'wln', null, null, 642.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9247, 'Wolio', 'wlo', null, null, 642.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9248, 'Wailapa', 'wlr', null, null, 642.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9249, 'Wallisian', 'wls', null, null, 643.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9250, 'Wich? Lhamt?s Vejoz', 'wlv', null, null, 643.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9251, 'Walak', 'wlw', null, null, 643.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9252, 'Wali (Ghana)', 'wlx', null, null, 643.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9253, 'Wambaya', 'wmb', null, null, 643.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9254, 'Wamas', 'wmc', null, null, 643.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9255, 'Mamaind?', 'wmd', null, null, 643.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9256, 'Wambule', 'wme', null, null, 643.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9257, 'Waima a', 'wmh', null, null, 643.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9258, 'Maiwa (Indonesia)', 'wmm', null, null, 643.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9259, 'Wom (Papua New Guinea)', 'wmo', null, null, 644.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9260, 'Wambon', 'wms', null, null, 644.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9261, 'Walmajarri', 'wmt', null, null, 644.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9262, 'Mwani', 'wmw', null, null, 644.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9263, 'Womo', 'wmx', null, null, 644.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9264, 'Wanambre', 'wnb', null, null, 644.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9265, 'Wantoat', 'wnc', null, null, 644.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9266, 'Waneci', 'wne', null, null, 644.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9267, 'Wanggom', 'wng', null, null, 644.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9268, 'Ndzwani Comorian', 'wni', null, null, 644.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9269, 'Wanukaka', 'wnk', null, null, 645.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9270, 'Wano', 'wno', null, null, 645.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9271, 'Wanap', 'wnp', null, null, 645.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9272, 'Usan', 'wnu', null, null, 645.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9273, 'Wintu', 'wnw', null, null, 645.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9274, 'Wanyi', 'wny', null, null, 645.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9275, 'Tyaraity', 'woa', null, null, 645.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9276, 'W? Northern', 'wob', null, null, 645.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9277, 'Wogeo', 'woc', null, null, 645.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9278, 'Wolani', 'wod', null, null, 645.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9279, 'Woleaian', 'woe', null, null, 646.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9280, 'Gambian Wolof', 'wof', null, null, 646.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9281, 'Wogamusin', 'wog', null, null, 646.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9282, 'Kamang', 'woi', null, null, 646.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9283, 'Longto', 'wok', null, null, 646.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9284, 'Wolof', 'wol', null, null, 646.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9285, 'Wom (Nigeria)', 'wom', null, null, 646.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9286, 'Wongo', 'won', null, null, 646.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9287, 'Manombai', 'woo', null, null, 646.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9288, 'Woria', 'wor', null, null, 646.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9289, 'Hanga Hundi', 'wos', null, null, 647.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9290, 'Wawonii', 'wow', null, null, 647.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9291, 'Maco', 'wpc', null, null, 647.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9292, 'Warapu', 'wra', null, null, 647.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9293, 'Warduji', 'wrd', null, null, 647.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9294, 'Garrwa', 'wrk', null, null, 647.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9295, 'Warlmanpa', 'wrl', null, null, 647.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9296, 'Warumungu', 'wrm', null, null, 647.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9297, 'Warnang', 'wrn', null, null, 647.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9298, 'Waropen', 'wrp', null, null, 647.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9299, 'Wardaman', 'wrr', null, null, 648.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9300, 'Waris', 'wrs', null, null, 648.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9301, 'Waru', 'wru', null, null, 648.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9302, 'Waruna', 'wrv', null, null, 648.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9303, 'Wae Rana', 'wrx', null, null, 648.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9304, 'Merwari', 'wry', null, null, 648.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9305, 'Warembori', 'wsa', null, null, 648.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9306, 'Adilabad Gondi', 'wsg', null, null, 648.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9307, 'Wusi', 'wsi', null, null, 648.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9308, 'Waskia', 'wsk', null, null, 648.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9309, 'Owenia', 'wsr', null, null, 649.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9310, 'Wasa', 'wss', null, null, 649.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9311, 'Watiwa', 'wtf', null, null, 649.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9312, 'Berta', 'wti', null, null, 649.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9313, 'Watakataui', 'wtk', null, null, 649.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9314, 'Mewati', 'wtm', null, null, 649.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9315, 'Wotu', 'wtw', null, null, 649.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9316, 'Wikngenchera', 'wua', null, null, 649.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9317, 'Wunambal', 'wub', null, null, 649.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9318, 'Wudu', 'wud', null, null, 649.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9319, 'Wutunhua', 'wuh', null, null, 650.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9320, 'Silimo', 'wul', null, null, 650.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9321, 'Wumbvu', 'wum', null, null, 650.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9322, 'Bungu', 'wun', null, null, 650.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9323, 'Wutung', 'wut', null, null, 650.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9324, 'Wu Chinese', 'wuu', null, null, 650.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9325, 'Wuvulu-Aua', 'wuv', null, null, 650.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9326, 'Wulna', 'wux', null, null, 650.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9327, 'Wauyai', 'wuy', null, null, 650.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9328, 'Waama', 'wwa', null, null, 650.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9329, 'Wetamut', 'wwo', null, null, 651.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9330, 'Wawa', 'www', null, null, 651.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9331, 'Waxianghua', 'wxa', null, null, 651.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9332, 'Wyandot', 'wya', null, null, 651.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9333, 'Wangaaybuwan-Ngiyambaa', 'wyb', null, null, 651.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9334, 'Wymysorys', 'wym', null, null, 651.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9335, 'Wayor?', 'wyr', null, null, 651.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9336, 'Western Fijian', 'wyy', null, null, 651.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9337, 'Sambe', 'xab', null, null, 651.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9338, 'Kachari', 'xac', null, null, 651.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9339, 'Kalmyk', 'xal', null, null, 652.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9340, 'Xamtanga', 'xan', null, null, 652.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9341, 'Khao', 'xao', null, null, 652.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9342, 'Katawixi', 'xat', null, null, 652.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9343, 'Kauwera', 'xau', null, null, 652.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9344, 'Xav?nte', 'xav', null, null, 652.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9345, 'Kawaiisu', 'xaw', null, null, 652.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9346, 'Kayan Mahakam', 'xay', null, null, 652.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9347, 'Kombio', 'xbi', null, null, 652.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9348, 'Kambera', 'xbr', null, null, 652.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9349, 'Batyala', 'xby', null, null, 653.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9350, 'Darkinyung', 'xda', null, null, 653.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9351, 'Malayic Dayak', 'xdy', null, null, 653.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9352, 'Hdi', 'xed', null, null, 653.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9353, 'Kelo', 'xel', null, null, 653.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9354, 'Kembayan', 'xem', null, null, 653.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9355, 'Xer?nte', 'xer', null, null, 653.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9356, 'Kesawai', 'xes', null, null, 653.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9357, 'Xet?', 'xet', null, null, 653.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9358, 'Keoru-Ahia', 'xeu', null, null, 653.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9359, 'Unggumi', 'xgu', null, null, 654.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9360, 'Khetrani', 'xhe', null, null, 654.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9361, 'Xhosa', 'xho', null, null, 654.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9362, 'Khua', 'xhv', null, null, 654.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9363, 'Xiri', 'xii', null, null, 654.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9364, 'Kisan', 'xis', null, null, 654.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9365, 'Xipaya', 'xiy', null, null, 654.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9366, 'Kalkoti', 'xka', null, null, 654.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9367, 'Northern Nago', 'xkb', null, null, 654.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9368, 'Kho ini', 'xkc', null, null, 654.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9369, 'Mendalam Kayan', 'xkd', null, null, 655.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9370, 'Kereho', 'xke', null, null, 655.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9371, 'Khengkha', 'xkf', null, null, 655.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9372, 'Kagoro', 'xkg', null, null, 655.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9373, 'Kenyan Sign Language', 'xki', null, null, 655.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9374, 'Kajali', 'xkj', null, null, 655.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9375, 'Kaco', 'xkk', null, null, 655.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9376, 'Mainstream Kenyah', 'xkl', null, null, 655.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9377, 'Kayan River Kayan', 'xkn', null, null, 655.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9378, 'Kiorr', 'xko', null, null, 655.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9379, 'Kabatei', 'xkp', null, null, 656.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9380, 'Koroni', 'xkq', null, null, 656.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9381, 'Kumbewaha', 'xks', null, null, 656.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9382, 'Kantosi', 'xkt', null, null, 656.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9383, 'Kaamba', 'xku', null, null, 656.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9384, 'Kgalagadi', 'xkv', null, null, 656.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9385, 'Kembra', 'xkw', null, null, 656.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9386, 'Karore', 'xkx', null, null, 656.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9387, 'Uma Lasan', 'xky', null, null, 656.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9388, 'Kurtokha', 'xkz', null, null, 656.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9389, 'Kamula', 'xla', null, null, 657.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9390, 'Mushungulu', 'xma', null, null, 657.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9391, 'Mbonga', 'xmb', null, null, 657.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9392, 'Makhuwa-Marrevone', 'xmc', null, null, 657.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9393, 'Mbudum', 'xmd', null, null, 657.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9394, 'Mingrelian', 'xmf', null, null, 657.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9395, 'Mengaka', 'xmg', null, null, 657.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9396, 'Kuku-Muminh', 'xmh', null, null, 657.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9397, 'Majera', 'xmj', null, null, 657.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9398, 'Malaysian Sign Language', 'xml', null, null, 657.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9399, 'Manado Malay', 'xmm', null, null, 658.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9400, 'Morerebi', 'xmo', null, null, 658.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9401, 'Moroccan Sign Language', 'xms', null, null, 658.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9402, 'Matbat', 'xmt', null, null, 658.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9403, 'Antankarana Malagasy', 'xmv', null, null, 658.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9404, 'Tsimihety Malagasy', 'xmw', null, null, 658.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9405, 'Maden', 'xmx', null, null, 658.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9406, 'Mayaguduna', 'xmy', null, null, 658.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9407, 'Mori Bawah', 'xmz', null, null, 658.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9408, 'Kanakanabu', 'xnb', null, null, 658.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9409, 'Kuanhua', 'xnh', null, null, 659.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9410, 'Northern Kankanay', 'xnn', null, null, 659.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9411, 'Kangri', 'xnr', null, null, 659.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9412, 'Kanashi', 'xns', null, null, 659.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9413, 'Nyiyaparli', 'xny', null, null, 659.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9414, 'Kenzi', 'xnz', null, null, 659.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9415, 'Kokoda', 'xod', null, null, 659.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9416, 'Soga', 'xog', null, null, 659.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9417, 'Kominimung', 'xoi', null, null, 659.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9418, 'Xokleng', 'xok', null, null, 659.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9419, 'Komo (Sudan)', 'xom', null, null, 660.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9420, 'Konkomba', 'xon', null, null, 660.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9421, 'Kopar', 'xop', null, null, 660.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9422, 'Korubo', 'xor', null, null, 660.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9423, 'Kowaki', 'xow', null, null, 660.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9424, 'Liberia Kpelle', 'xpe', null, null, 660.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9425, 'Kulina Pano', 'xpk', null, null, 660.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9426, 'Krah?', 'xra', null, null, 660.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9427, 'Eastern Karaboro', 'xrb', null, null, 660.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9428, 'Kreye', 'xre', null, null, 660.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9429, 'Krikati-Timbira', 'xri', null, null, 661.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9430, 'Marriammu', 'xru', null, null, 661.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9431, 'Karawa', 'xrw', null, null, 661.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9432, 'Sambal', 'xsb', null, null, 661.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9433, 'Sempan', 'xse', null, null, 661.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9434, 'Shamang', 'xsh', null, null, 661.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9435, 'Sio', 'xsi', null, null, 661.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9436, 'South Slavey', 'xsl', null, null, 661.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9437, 'Kasem', 'xsm', null, null, 661.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9438, 'Sanga (Nigeria)', 'xsn', null, null, 661.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9439, 'Silopi', 'xsp', null, null, 662.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9440, 'Makhuwa-Saka', 'xsq', null, null, 662.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9441, 'Sherpa', 'xsr', null, null, 662.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9442, 'Sanum?', 'xsu', null, null, 662.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9443, 'Saisiyat', 'xsy', null, null, 662.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9444, 'Alcozauca Mixtec', 'xta', null, null, 662.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9445, 'Chazumba Mixtec', 'xtb', null, null, 662.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9446, 'Katcha-Kadugli-Miri', 'xtc', null, null, 662.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9447, 'Diuxi-Tilantongo Mixtec', 'xtd', null, null, 662.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9448, 'Ketengban', 'xte', null, null, 662.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9449, 'Sinicahua Mixtec', 'xti', null, null, 663.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9450, 'San Juan Teita Mixtec', 'xtj', null, null, 663.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9451, 'Tijaltepec Mixtec', 'xtl', null, null, 663.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9452, 'Magdalena Pe?asco Mixtec', 'xtm', null, null, 663.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9453, 'Northern Tlaxiaco Mixtec', 'xtn', null, null, 663.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9454, 'San Miguel Piedras Mixtec', 'xtp', null, null, 663.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9455, 'Sindihui Mixtec', 'xts', null, null, 663.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9456, 'Tacahua Mixtec', 'xtt', null, null, 663.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9457, 'Cuyamecalco Mixtec', 'xtu', null, null, 663.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9458, 'Tawand?', 'xtw', null, null, 663.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9459, 'Yoloxochitl Mixtec', 'xty', null, null, 664.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9460, 'Alu Kurumba', 'xua', null, null, 664.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9461, 'Betta Kurumba', 'xub', null, null, 664.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9462, 'Kunigami', 'xug', null, null, 664.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9463, 'Jennu Kurumba', 'xuj', null, null, 664.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9464, 'Kuo', 'xuo', null, null, 664.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9465, 'Kxoe', 'xuu', null, null, 664.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9466, 'Kamviri', 'xvi', null, null, 664.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9467, 'Kwaza', 'xwa', null, null, 664.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9468, 'Xwela Gbe', 'xwe', null, null, 664.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9469, 'Kwegu', 'xwg', null, null, 665.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9470, 'Western Xwla Gbe', 'xwl', null, null, 665.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9471, 'Kwerba Mamberamo', 'xwr', null, null, 665.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9472, 'Ke o', 'xxk', null, null, 665.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9473, 'Yorta Yorta', 'xyy', null, null, 665.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9474, 'Yaminahua', 'yaa', null, null, 665.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9475, 'Yuhup', 'yab', null, null, 665.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9476, 'Pass Valley Yali', 'yac', null, null, 665.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9477, 'Yagua', 'yad', null, null, 665.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9478, 'Pum?', 'yae', null, null, 665.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9479, 'Yaka (Democratic Republic of Congo)', 'yaf', null, null, 666.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9480, 'Y?mana', 'yag', null, null, 666.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9481, 'Yazgulyam', 'yah', null, null, 666.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9482, 'Yagnobi', 'yai', null, null, 666.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9483, 'Banda-Yangere', 'yaj', null, null, 666.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9484, 'Yakama', 'yak', null, null, 666.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9485, 'Yalunka', 'yal', null, null, 666.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9486, 'Yamba', 'yam', null, null, 666.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9487, 'Mayangna', 'yan', null, null, 666.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9488, 'Yao', 'yao', null, null, 666.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9489, 'Yapese', 'yap', null, null, 667.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9490, 'Yaqui', 'yaq', null, null, 667.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9491, 'Yabarana', 'yar', null, null, 667.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9492, 'Nugunu (Cameroon)', 'yas', null, null, 667.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9493, 'Yambeta', 'yat', null, null, 667.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9494, 'Yuwana', 'yau', null, null, 667.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9495, 'Yangben', 'yav', null, null, 667.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9496, 'Yawalapit?', 'yaw', null, null, 667.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9497, 'Yauma', 'yax', null, null, 667.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9498, 'Agwagwune', 'yay', null, null, 667.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9499, 'Lokaa', 'yaz', null, null, 668.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9500, 'Yala', 'yba', null, null, 668.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9501, 'Yemba', 'ybb', null, null, 668.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9502, 'West Yugur', 'ybe', null, null, 668.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9503, 'Yakha', 'ybh', null, null, 668.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9504, 'Yamphu', 'ybi', null, null, 668.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9505, 'Hasha', 'ybj', null, null, 668.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9506, 'Bokha', 'ybk', null, null, 668.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9507, 'Yukuben', 'ybl', null, null, 668.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9508, 'Yaben', 'ybm', null, null, 668.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9509, 'Yabong', 'ybo', null, null, 669.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9510, 'Yawiyo', 'ybx', null, null, 669.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9511, 'Yaweyuha', 'yby', null, null, 669.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9512, 'Chesu', 'ych', null, null, 669.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9513, 'Lolopo', 'ycl', null, null, 669.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9514, 'Yucuna', 'ycn', null, null, 669.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9515, 'Chepya', 'ycp', null, null, 669.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9516, 'Eastern Yiddish', 'ydd', null, null, 669.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9517, 'Yangum Dey', 'yde', null, null, 669.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9518, 'Yidgha', 'ydg', null, null, 669.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9519, 'Yoidik', 'ydk', null, null, 670.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9520, 'Ravula', 'yea', null, null, 670.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9521, 'Yeniche', 'yec', null, null, 670.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9522, 'Yimas', 'yee', null, null, 670.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9523, 'Yevanic', 'yej', null, null, 670.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9524, 'Yela', 'yel', null, null, 670.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9525, 'Tarok', 'yer', null, null, 670.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9526, 'Nyankpa', 'yes', null, null, 670.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9527, 'Yetfa', 'yet', null, null, 670.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9528, 'Yerukula', 'yeu', null, null, 670.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9529, 'Yapunda', 'yev', null, null, 671.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9530, 'Yeyi', 'yey', null, null, 671.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9531, 'Yangum Gel', 'ygl', null, null, 671.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9532, 'Yagomi', 'ygm', null, null, 671.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9533, 'Gepo', 'ygp', null, null, 671.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9534, 'Yagaria', 'ygr', null, null, 671.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9535, 'Yol?u Sign Language', 'ygs', null, null, 671.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9536, 'Yugul', 'ygu', null, null, 671.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9537, 'Yagwoia', 'ygw', null, null, 671.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9538, 'Baha Buyang', 'yha', null, null, 671.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9539, 'Judeo-Iraqi Arabic', 'yhd', null, null, 672.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9540, 'Hlepho Phowa', 'yhl', null, null, 672.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9541, 'Yan-nhangu Sign Language', 'yhs', null, null, 672.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9542, 'Yinggarda', 'yia', null, null, 672.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9543, 'Yiddish', 'yid', null, null, 672.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9544, 'Ache', 'yif', null, null, 672.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9545, 'Wusa Nasu', 'yig', null, null, 672.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9546, 'Western Yiddish', 'yih', null, null, 672.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9547, 'Yidiny', 'yii', null, null, 672.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9548, 'Yindjibarndi', 'yij', null, null, 672.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9549, 'Dongshanba Lalo', 'yik', null, null, 673.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9550, 'Yimchungru Naga', 'yim', null, null, 673.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9551, 'Yinchia', 'yin', null, null, 673.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9552, 'Pholo', 'yip', null, null, 673.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9553, 'Miqie', 'yiq', null, null, 673.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9554, 'North Awyu', 'yir', null, null, 673.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9555, 'Yis', 'yis', null, null, 673.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9556, 'Eastern Lalu', 'yit', null, null, 673.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9557, 'Awu', 'yiu', null, null, 673.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9558, 'Northern Nisu', 'yiv', null, null, 673.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9559, 'Axi Yi', 'yix', null, null, 674.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9560, 'Azhe', 'yiz', null, null, 674.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9561, 'Yakan', 'yka', null, null, 674.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9562, 'Northern Yukaghir', 'ykg', null, null, 674.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9563, 'Yoke', 'yki', null, null, 674.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9564, 'Yakaikeke', 'ykk', null, null, 674.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9565, 'Khlula', 'ykl', null, null, 674.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9566, 'Kap', 'ykm', null, null, 674.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9567, 'Kua-nsi', 'ykn', null, null, 674.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9568, 'Yasa', 'yko', null, null, 674.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9569, 'Yekora', 'ykr', null, null, 675.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9570, 'Kathu', 'ykt', null, null, 675.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9571, 'Kuamasi', 'yku', null, null, 675.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9572, 'Yakoma', 'yky', null, null, 675.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9573, 'Yaul', 'yla', null, null, 675.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9574, 'Yaleba', 'ylb', null, null, 675.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9575, 'Yele', 'yle', null, null, 675.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9576, 'Yelogu', 'ylg', null, null, 675.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9577, 'Angguruk Yali', 'yli', null, null, 675.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9578, 'Yil', 'yll', null, null, 675.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9579, 'Limi', 'ylm', null, null, 676.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9580, 'Langnian Buyang', 'yln', null, null, 676.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9581, 'Naluo Yi', 'ylo', null, null, 676.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9582, 'Aribwaung', 'ylu', null, null, 676.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9583, 'Ny?layu', 'yly', null, null, 676.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9584, 'Yambes', 'ymb', null, null, 676.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9585, 'Southern Muji', 'ymc', null, null, 676.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9586, 'Muda', 'ymd', null, null, 676.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9587, 'Yamongeri', 'ymg', null, null, 676.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9588, 'Mili', 'ymh', null, null, 676.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9589, 'Moji', 'ymi', null, null, 677.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9590, 'Makwe', 'ymk', null, null, 677.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9591, 'Iamalele', 'yml', null, null, 677.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9592, 'Maay', 'ymm', null, null, 677.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9593, 'Yamna', 'ymn', null, null, 677.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9594, 'Yangum Mon', 'ymo', null, null, 677.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9595, 'Yamap', 'ymp', null, null, 677.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9596, 'Qila Muji', 'ymq', null, null, 677.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9597, 'Malasar', 'ymr', null, null, 677.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9598, 'Northern Muji', 'ymx', null, null, 677.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9599, 'Muzi', 'ymz', null, null, 678.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9600, 'Aluo', 'yna', null, null, 678.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9601, 'Lang e', 'yne', null, null, 678.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9602, 'Yango', 'yng', null, null, 678.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9603, 'Naukan Yupik', 'ynk', null, null, 678.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9604, 'Yangulam', 'ynl', null, null, 678.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9605, 'Yong', 'yno', null, null, 678.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9606, 'Yendang', 'ynq', null, null, 678.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9607, 'Yansi', 'yns', null, null, 678.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9608, 'Yogad', 'yog', null, null, 678.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9609, 'Yonaguni', 'yoi', null, null, 679.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9610, 'Yokuts', 'yok', null, null, 679.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9611, 'Yombe', 'yom', null, null, 679.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9612, 'Yongkom', 'yon', null, null, 679.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9613, 'Yoruba', 'yor', null, null, 679.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9614, 'Yotti', 'yot', null, null, 679.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9615, 'Yoron', 'yox', null, null, 679.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9616, 'Yoy', 'yoy', null, null, 679.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9617, 'Phala', 'ypa', null, null, 679.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9618, 'Labo Phowa', 'ypb', null, null, 679.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9619, 'Phola', 'ypg', null, null, 680.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9620, 'Phupha', 'yph', null, null, 680.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9621, 'Phuma', 'ypm', null, null, 680.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9622, 'Ani Phowa', 'ypn', null, null, 680.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9623, 'Alo Phola', 'ypo', null, null, 680.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9624, 'Phupa', 'ypp', null, null, 680.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9625, 'Phuza', 'ypz', null, null, 680.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9626, 'Yerakai', 'yra', null, null, 680.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9627, 'Yareba', 'yrb', null, null, 680.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9628, 'Yaour?', 'yre', null, null, 680.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9629, 'Nenets', 'yrk', null, null, 681.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9630, 'Nhengatu', 'yrl', null, null, 681.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9631, 'Yirrk-Mel', 'yrm', null, null, 681.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9632, 'Yerong', 'yrn', null, null, 681.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9633, 'Yaroame', 'yro', null, null, 681.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9634, 'Yarsun', 'yrs', null, null, 681.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9635, 'Yarawata', 'yrw', null, null, 681.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9636, 'Yarluyandi', 'yry', null, null, 681.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9637, 'Samatao', 'ysd', null, null, 681.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9638, 'Sonaga', 'ysg', null, null, 681.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9639, 'Yugoslavian Sign Language', 'ysl', null, null, 682.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9640, 'Sani', 'ysn', null, null, 682.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9641, 'Nisi (China)', 'yso', null, null, 682.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9642, 'Southern Lolopo', 'ysp', null, null, 682.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9643, 'Yessan-Mayo', 'yss', null, null, 682.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9644, 'Sanie', 'ysy', null, null, 682.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9645, 'Talu', 'yta', null, null, 682.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9646, 'Tanglang', 'ytl', null, null, 682.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9647, 'Thopho', 'ytp', null, null, 682.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9648, 'Yout Wam', 'ytw', null, null, 682.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9649, 'Yucateco', 'yua', null, null, 683.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9650, 'Yuchi', 'yuc', null, null, 683.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9651, 'Judeo-Tripolitanian Arabic', 'yud', null, null, 683.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9652, 'Yue Chinese', 'yue', null, null, 683.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9653, 'Havasupai-Walapai-Yavapai', 'yuf', null, null, 683.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9654, 'Yurut?', 'yui', null, null, 683.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9655, 'Karkar-Yuri', 'yuj', null, null, 683.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9656, 'Yulu', 'yul', null, null, 683.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9657, 'Quechan', 'yum', null, null, 683.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9658, 'Bena (Nigeria)', 'yun', null, null, 683.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9659, 'Yukpa', 'yup', null, null, 684.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9660, 'Yuqui', 'yuq', null, null, 684.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9661, 'Yurok', 'yur', null, null, 684.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9662, 'Yopno', 'yut', null, null, 684.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9663, 'Yau (Morobe Province)', 'yuw', null, null, 684.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9664, 'Southern Yukaghir', 'yux', null, null, 684.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9665, 'East Yugur', 'yuy', null, null, 684.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9666, 'Yuracare', 'yuz', null, null, 684.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9667, 'Yawa', 'yva', null, null, 684.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9668, 'Kalou', 'ywa', null, null, 684.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9669, 'Yinhawangka', 'ywg', null, null, 685.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9670, 'Western Lalu', 'ywl', null, null, 685.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9671, 'Yawanawa', 'ywn', null, null, 685.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9672, 'Wuding-Luquan Yi', 'ywq', null, null, 685.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9673, 'Yawuru', 'ywr', null, null, 685.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9674, 'Xishanba Lalo', 'ywt', null, null, 685.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9675, 'Wumeng Nasu', 'ywu', null, null, 685.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9676, 'Yau (Sandaun Province)', 'yyu', null, null, 685.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9677, 'Ayizi', 'yyz', null, null, 685.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9678, 'E ma Buyang', 'yzg', null, null, 685.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9679, 'Zokhuo', 'yzk', null, null, 686.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9680, 'Sierra de Ju?rez Zapotec', 'zaa', null, null, 686.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9681, 'Western Tlacolula Valley Zapotec', 'zab', null, null, 686.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9682, 'Ocotl?n Zapotec', 'zac', null, null, 686.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9683, 'Cajonos Zapotec', 'zad', null, null, 686.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9684, 'Yareni Zapotec', 'zae', null, null, 686.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9685, 'Ayoquesco Zapotec', 'zaf', null, null, 686.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9686, 'Zaghawa', 'zag', null, null, 686.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9687, 'Zangwal', 'zah', null, null, 686.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9688, 'Isthmus Zapotec', 'zai', null, null, 686.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9689, 'Zaramo', 'zaj', null, null, 687.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9690, 'Zanaki', 'zak', null, null, 687.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9691, 'Zauzou', 'zal', null, null, 687.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9692, 'Miahuatl?n Zapotec', 'zam', null, null, 687.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9693, 'Ozolotepec Zapotec', 'zao', null, null, 687.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9694, 'Zapotec', 'zap', null, null, 687.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9695, 'Alo?pam Zapotec', 'zaq', null, null, 687.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9696, 'Rinc?n Zapotec', 'zar', null, null, 687.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9697, 'Santo Domingo Albarradas Zapotec', 'zas', null, null, 687.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9698, 'Tabaa Zapotec', 'zat', null, null, 687.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9699, 'Zangskari', 'zau', null, null, 688.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9700, 'Yatzachi Zapotec', 'zav', null, null, 688.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9701, 'Mitla Zapotec', 'zaw', null, null, 688.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9702, 'Xadani Zapotec', 'zax', null, null, 688.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9703, 'Zayse-Zergulla', 'zay', null, null, 688.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9704, 'Zari', 'zaz', null, null, 688.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9705, 'Central Berawan', 'zbc', null, null, 688.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9706, 'East Berawan', 'zbe', null, null, 688.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9707, 'Batui', 'zbt', null, null, 688.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9708, 'West Berawan', 'zbw', null, null, 688.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9709, 'Coatecas Altas Zapotec', 'zca', null, null, 689.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9710, 'Central Hongshuihe Zhuang', 'zch', null, null, 689.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9711, 'Ngazidja Comorian', 'zdj', null, null, 689.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9712, 'Zeeuws', 'zea', null, null, 689.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9713, 'Zenag', 'zeg', null, null, 689.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9714, 'Eastern Hongshuihe Zhuang', 'zeh', null, null, 689.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9715, 'Zenaga', 'zen', null, null, 689.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9716, 'Kinga', 'zga', null, null, 689.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9717, 'Guibei Zhuang', 'zgb', null, null, 689.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9718, 'Standard Moroccan Tamazight', 'zgh', null, null, 689.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9719, 'Minz Zhuang', 'zgm', null, null, 690.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9720, 'Guibian Zhuang', 'zgn', null, null, 690.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9721, 'Magori', 'zgr', null, null, 690.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9722, 'Zhuang', 'zha', null, null, 690.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9723, 'Zhaba', 'zhb', null, null, 690.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9724, 'Dai Zhuang', 'zhd', null, null, 690.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9725, 'Zhire', 'zhi', null, null, 690.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9726, 'Nong Zhuang', 'zhn', null, null, 690.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9727, 'Chinese', 'zho', null, null, 690.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9728, 'Zhoa', 'zhw', null, null, 690.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9729, 'Zia', 'zia', null, null, 691.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9730, 'Zimbabwe Sign Language', 'zib', null, null, 691.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9731, 'Zimakani', 'zik', null, null, 691.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9732, 'Zialo', 'zil', null, null, 691.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9733, 'Mesme', 'zim', null, null, 691.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9734, 'Zinza', 'zin', null, null, 691.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9735, 'Zigula', 'ziw', null, null, 691.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9736, 'Zizilivakan', 'ziz', null, null, 691.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9737, 'Kaimbulawa', 'zka', null, null, 691.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9738, 'Kadu', 'zkd', null, null, 691.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9739, 'Kanan', 'zkn', null, null, 692.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9740, 'Zakhring', 'zkr', null, null, 692.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9741, 'Liujiang Zhuang', 'zlj', null, null, 692.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9742, 'Malay (individual language)', 'zlm', null, null, 692.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9743, 'Lianshan Zhuang', 'zln', null, null, 692.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9744, 'Liuqian Zhuang', 'zlq', null, null, 692.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9745, 'Manda (Australia)', 'zma', null, null, 692.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9746, 'Zimba', 'zmb', null, null, 692.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9747, 'Maridan', 'zmd', null, null, 692.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9748, 'Mfinu', 'zmf', null, null, 692.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9749, 'Marti Ke', 'zmg', null, null, 693.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9750, 'Negeri Sembilan Malay', 'zmi', null, null, 693.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9751, 'Maridjabin', 'zmj', null, null, 693.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9752, 'Madngele', 'zml', null, null, 693.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9753, 'Marimanindji', 'zmm', null, null, 693.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9754, 'Mbangwe', 'zmn', null, null, 693.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9755, 'Molo', 'zmo', null, null, 693.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9756, 'Mpuono', 'zmp', null, null, 693.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9757, 'Mituku', 'zmq', null, null, 693.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9758, 'Maranunggu', 'zmr', null, null, 693.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9759, 'Mbesa', 'zms', null, null, 694.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9760, 'Maringarr', 'zmt', null, null, 694.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9761, 'Mbo (Democratic Republic of Congo)', 'zmw', null, null, 694.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9762, 'Bomitaba', 'zmx', null, null, 694.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9763, 'Mariyedi', 'zmy', null, null, 694.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9764, 'Mbandja', 'zmz', null, null, 694.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9765, 'Zan Gula', 'zna', null, null, 694.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9766, 'Zande (individual language)', 'zne', null, null, 694.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9767, 'Mang', 'zng', null, null, 694.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9768, 'Mangas', 'zns', null, null, 694.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9769, 'Copainal? Zoque', 'zoc', null, null, 695.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9770, 'Chimalapa Zoque', 'zoh', null, null, 695.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9771, 'Zou', 'zom', null, null, 695.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9772, 'Asunci?n Mixtepec Zapotec', 'zoo', null, null, 695.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9773, 'Tabasco Zoque', 'zoq', null, null, 695.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9774, 'Ray?n Zoque', 'zor', null, null, 695.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9775, 'Francisco Le?n Zoque', 'zos', null, null, 695.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9776, 'Lachiguiri Zapotec', 'zpa', null, null, 695.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9777, 'Yautepec Zapotec', 'zpb', null, null, 695.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9778, 'Choapan Zapotec', 'zpc', null, null, 695.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9779, 'Southeastern Ixtl?n Zapotec', 'zpd', null, null, 696.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9780, 'Petapa Zapotec', 'zpe', null, null, 696.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9781, 'San Pedro Quiatoni Zapotec', 'zpf', null, null, 696.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9782, 'Guevea De Humboldt Zapotec', 'zpg', null, null, 696.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9783, 'Totomachapan Zapotec', 'zph', null, null, 696.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9784, 'Santa Mar?a Quiegolani Zapotec', 'zpi', null, null, 696.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9785, 'Quiavicuzas Zapotec', 'zpj', null, null, 696.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9786, 'Tlacolulita Zapotec', 'zpk', null, null, 696.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9787, 'Lachix?o Zapotec', 'zpl', null, null, 696.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9788, 'Mixtepec Zapotec', 'zpm', null, null, 696.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9789, 'Santa In?s Yatzechi Zapotec', 'zpn', null, null, 697.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9790, 'Amatl?n Zapotec', 'zpo', null, null, 697.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9791, 'El Alto Zapotec', 'zpp', null, null, 697.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9792, 'Zoogocho Zapotec', 'zpq', null, null, 697.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9793, 'Santiago Xanica Zapotec', 'zpr', null, null, 697.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9794, 'Coatl?n Zapotec', 'zps', null, null, 697.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9795, 'San Vicente Coatl?n Zapotec', 'zpt', null, null, 697.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9796, 'Yal?lag Zapotec', 'zpu', null, null, 697.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9797, 'Chichicapan Zapotec', 'zpv', null, null, 697.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9798, 'Zaniza Zapotec', 'zpw', null, null, 697.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9799, 'San Baltazar Loxicha Zapotec', 'zpx', null, null, 698.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9800, 'Mazaltepec Zapotec', 'zpy', null, null, 698.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9801, 'Texmelucan Zapotec', 'zpz', null, null, 698.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9802, 'Qiubei Zhuang', 'zqe', null, null, 698.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9803, 'Mirgan', 'zrg', null, null, 698.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9804, 'Zerenkel', 'zrn', null, null, 698.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9805, 'Z?paro', 'zro', null, null, 698.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9806, 'Mairasi', 'zrs', null, null, 698.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9807, 'Sarasira', 'zsa', null, null, 698.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9808, 'Zambian Sign Language', 'zsl', null, null, 698.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9809, 'Standard Malay', 'zsm', null, null, 699.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9810, 'Southern Rincon Zapotec', 'zsr', null, null, 699.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9811, 'Sukurum', 'zsu', null, null, 699.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9812, 'Elotepec Zapotec', 'zte', null, null, 699.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9813, 'Xanagu?a Zapotec', 'ztg', null, null, 699.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9814, 'Lapagu?a-Guivini Zapotec', 'ztl', null, null, 699.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9815, 'San Agust?n Mixtepec Zapotec', 'ztm', null, null, 699.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9816, 'Santa Catarina Albarradas Zapotec', 'ztn', null, null, 699.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9817, 'Loxicha Zapotec', 'ztp', null, null, 699.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9818, 'Quioquitani-Quier? Zapotec', 'ztq', null, null, 699.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9819, 'Tilquiapan Zapotec', 'zts', null, null, 700.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9820, 'Tejalapan Zapotec', 'ztt', null, null, 700.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9821, 'G?il? Zapotec', 'ztu', null, null, 700.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9822, 'Zaachila Zapotec', 'ztx', null, null, 700.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9823, 'Yatee Zapotec', 'zty', null, null, 700.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9824, 'Zeem', 'zua', null, null, 700.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9825, 'Tokano', 'zuh', null, null, 700.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9826, 'Zulu', 'zul', null, null, 700.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9827, 'Kumzari', 'zum', null, null, 700.80 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9828, 'Zuni', 'zun', null, null, 700.90 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9829, 'Zumaya', 'zuy', null, null, 701.00 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9830, 'Zay', 'zwa', null, null, 701.10 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9831, 'Yongbei Zhuang', 'zyb', null, null, 701.20 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9832, 'Yang Zhuang', 'zyg', null, null, 701.30 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9833, 'Youjiang Zhuang', 'zyj', null, null, 701.40 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9834, 'Yongnan Zhuang', 'zyn', null, null, 701.50 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9835, 'Zyphe Chin', 'zyp', null, null, 701.60 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9836, 'Zaza', 'zza', null, null, 701.70 ); 
INSERT INTO ceds6sc.Ref_ISO6393_Language( Ref_ISO6393_Language_Id, Description, Code, Definition, Ref_Jurisdiction_Id, Sort_Order ) VALUES ( 9837, 'Zuojiang Zhuang', 'zzj', null, null, 701.80 ); 

