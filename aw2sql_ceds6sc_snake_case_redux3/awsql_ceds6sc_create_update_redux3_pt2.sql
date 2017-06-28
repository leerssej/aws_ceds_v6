
CREATE TABLE ceds6sc_rdx.facility ( 
	location_id          integer  NOT NULL,
	identifier           varchar(40)  ,
	building_name        varchar(60)  ,
	space_description    varchar(300)  ,
	ref_space_use_type_id integer  ,
	building_site_number varchar(30)  ,
	ref_building_use_type_id integer  ,
	CONSTRAINT pk_facility PRIMARY KEY ( location_id )
 );

COMMENT ON TABLE ceds6sc_rdx.facility IS 'Information about a piece of land, a building site, a building, or part of a building owned by and/or used for activities of an organizational unit such as a school, school system, program, or institution. 
';

COMMENT ON COLUMN ceds6sc_rdx.facility.location_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.facility.identifier IS 'A locally assigned unique number or alphanumeric code used to capture precise information on locations specific to a school (e.g., building number, class number, hall number, school bus number, computer station number, or internet protocol (IP) address). [CEDS Element: Facilities Identifier, ID:000504]';

COMMENT ON COLUMN ceds6sc_rdx.facility.building_name IS 'The full, legally accepted or popularly accepted name of a building. [CEDS Element: Facility Building Name, ID:001205]';

COMMENT ON COLUMN ceds6sc_rdx.facility.space_description IS 'A description of the space, as determined by its physical layout and built-in systems and equipment. [CEDS Element: Facility Space Description, ID:001207]';

COMMENT ON COLUMN ceds6sc_rdx.facility.ref_space_use_type_id IS 'The primary use of a space, as determined by its physical layout and built-in systems and equipment, regardless of its original design. [CEDS Element: Facility Space Use Type, ID:001208]';

COMMENT ON COLUMN ceds6sc_rdx.facility.building_site_number IS 'The number of the building on the site, if more than one building shares the same address. [CEDS Element: Building Site Number, ID:000602]';

COMMENT ON COLUMN ceds6sc_rdx.facility.ref_building_use_type_id IS 'How a building is principally used, regardless of its original design. [CEDS Element: Building Use Type, ID:001206]';

CREATE TABLE ceds6sc_rdx.financial_aid_award ( 
	financial_aid_award_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_financial_aid_award_type_id integer  ,
	ref_financial_aid_status_id integer  ,
	financial_aid_award_amount decimal(9,2)  ,
	financial_aid_year_designator char(9)  ,
	CONSTRAINT pk_financial_aid_award PRIMARY KEY ( financial_aid_award_id )
 );

COMMENT ON TABLE ceds6sc_rdx.financial_aid_award IS 'An award of financial aid for a student/learner.';

COMMENT ON COLUMN ceds6sc_rdx.financial_aid_award.financial_aid_award_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.financial_aid_award.organization_person_role_id IS 'Surrogate key from Organizatin_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.financial_aid_award.ref_financial_aid_award_type_id IS 'The classification of financial aid awarded to a person for the academic term/year. [CEDS Element: Financial Aid Award Type, ID:000113]  (Foreign key - Ref_Financial_Aid_Award_Type)';

COMMENT ON COLUMN ceds6sc_rdx.financial_aid_award.ref_financial_aid_status_id IS 'An indication of whether the financial aid type being reported is aid that has been awarded, accepted or dispersed. [CEDS Element: Financial Aid Award Status, ID:000363]  (Foreign key - Ref_Financial_Aid_Status)';

COMMENT ON COLUMN ceds6sc_rdx.financial_aid_award.financial_aid_award_amount IS 'The amount of financial aid awarded to a person for the term/year. [CEDS Element: Financial Aid Award Amount, ID:000112]';

COMMENT ON COLUMN ceds6sc_rdx.financial_aid_award.financial_aid_year_designator IS 'The school year for which the student''s financial aid application and award data apply.  Generally, this is the 12-month period from July 1 to June 30. [CEDS Element: Financial Aid Year Designator, ID:001611]';

CREATE TABLE ceds6sc_rdx.incident_person ( 
	incident_id          integer  NOT NULL,
	person_id            integer  NOT NULL,
	ref_incident_person_role_type_id integer  NOT NULL,
	identifier           varchar(40)  ,
	ref_incident_person_type_id integer  ,
	CONSTRAINT pk_incident_person PRIMARY KEY ( incident_id, person_id, ref_incident_person_role_type_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.incident_person.ref_incident_person_role_type_id IS 'The role or type of participation of a person in a discipline incident. [CEDS Element: Incident Person Role Type, ID:001373]';

COMMENT ON COLUMN ceds6sc_rdx.incident_person.identifier IS 'Person''s identifier. [CEDS Element: Incident Perpetrator Identifier (001370), Incident Victim Identifier (001377), Incident Witness Identifier (001379)]';

COMMENT ON COLUMN ceds6sc_rdx.incident_person.ref_incident_person_type_id IS 'Information on the type of individual who was involved in an incident. [CEDS Elements: Incident Perpetrator Type (001372), Incident Witness Type (001380), Incident Victim Type (001378)]';

CREATE TABLE ceds6sc_rdx.individualized_program_service ( 
	individualized_program_service_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	ref_individualized_program_planned_service_type_id integer  ,
	ref_method_of_service_delivery_id integer  ,
	ref_service_frequency_id integer  ,
	planned_service_duration decimal(6,2)  ,
	planned_service_start_date date  ,
	CONSTRAINT pk_individualized_program_service PRIMARY KEY ( individualized_program_service_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.individualized_program_service.individualized_program_service_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program_service.person_id IS 'Surrogate key from Person';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program_service.ref_individualized_program_planned_service_type_id IS 'The types of service that adapts the curriculum, materials, or instruction for students identified as needing special education because of a delay or disability. [CEDS Element: Individualized Program Planned Service Type, ID: 001383]';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program_service.ref_method_of_service_delivery_id IS 'The method by which the services will be provided. [CEDS Element: Method of Service Delivery, ID: 001510]';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program_service.ref_service_frequency_id IS 'The frequency that a service is planned to be provided. [CEDS Element: Individualized Program Planned Service Frequency, ID: 001519]';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program_service.planned_service_duration IS 'The length, in hours, that delivery of the service is planned. [CEDS Element: Individualized Program Planned Service Duration, ID:001520]';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program_service.planned_service_start_date IS 'The date the service is planned to begin. [CEDS Element: Individualized Program Planned Service Start Date, ID: 001381]';

CREATE TABLE ceds6sc_rdx.k12_lea ( 
	organization_id      integer  NOT NULL,
	ref_lea_type_id      integer  ,
	supervisory_union_identification_number char(3)  ,
	ref_lea_improvement_status_id integer  ,
	ref_public_school_choice_status_id integer  ,
	CONSTRAINT xpk_k12lea PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_lea IS 'An administrative unit within K-12 education at the local level which exists primarily to operate schools or to contract for educational services. These units may or may not be co-extensive with county, city, or town boundaries. ';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea.organization_id IS 'Inherited surrogate key from Organization.';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea.ref_lea_type_id IS 'The classification of education agencies within the geographic boundaries of a state according to the level of administrative and operational control. [CEDS Element: Local Education Agency Type, ID:000537]  (Foreign key - Ref_Lea_Type)';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea.supervisory_union_identification_number IS 'The three-digit unique identifier assigned to the supervisory union by the state.   [CEDS Element: Local Education Agency Supervisory Union Identification Number, ID:000175]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea.ref_lea_improvement_status_id IS 'An indication of the improvement stage for AYP of the local education agency (LEA). [CEDS Element: Local Education Agency Improvement Status, ID:000173]  (Foreign key - Ref_LEA_Improvement_Status)';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea.ref_public_school_choice_status_id IS 'An indication of whether the LEA was able to implement the provisions for public school choice under Title I, Part A, Section 1116 of ESEA as amended. [CEDS Element: Public School Choice Implementation Status, ID:000227]  (Foreign key - Ref_Public_School_Choice_Status)';

CREATE TABLE ceds6sc_rdx.k12_lea_federal_reporting ( 
	organization_id      integer  NOT NULL,
	ref_barrier_to_educating_homeless_id integer  ,
	desegregation_order_or_plan bool  ,
	harassment_or_bullying_policy bool  ,
	ref_integrated_technology_status_id integer  ,
	state_assessment_admin_funding numeric(5,2)  ,
	state_assess_standards_funding numeric(5,2)  ,
	terminated_title_iii_program_failure bool  ,
	interscholastic_sports_male_only integer  ,
	interscholastic_sports_female_only integer  ,
	interscholastic_teams_male_only integer  ,
	interscholastic_teams_female_only integer  ,
	interscholastic_sport_participants_male integer  ,
	interscholastic_sport_participants_female integer  ,
	CONSTRAINT pk_k12_lea_federal_reporting PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_lea_federal_reporting IS 'Federal reporting status values and counts for an LEA.';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_reporting.organization_id IS 'Inherited surrogate key from K12Lea.';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_reporting.ref_barrier_to_educating_homeless_id IS 'Barriers to the enrollment and success of homeless children and youths. [CEDS Element: Barrier to Educating Homeless, ID:000449]  (Foreign key - Ref_Barrier_To_Educating_Homeless)';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_reporting.desegregation_order_or_plan IS 'An indication whether the LEA is covered by a desegregation plan either ordered by a court or entered into with the Office for Civil Rights under Title VI of the Civil Rights Act of 1964. [CEDS Element: Desegregation Order or Plan, ID:000080]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_reporting.harassment_or_bullying_policy IS 'An indication of whether the education unit has adopted written policy prohibiting harassment and bullying on the basis of a civil rights law. [CEDS Element: Harassment or Bullying Policy Status, ID:000135]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_reporting.ref_integrated_technology_status_id IS 'An indication of the extent to which the district has effectively and fully integrated technology, as defined by the state. [CEDS Element: Integrated Technology Status, ID:000170]  (Foreign key - Ref_Integrated_Technology_Status)';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_reporting.state_assessment_admin_funding IS 'The percentage of funds used to administer assessments required by section 1111(b) or to carry out other activities described in section 6111 and other activities related to ensuring that the State’s schools and local educational agencies are held accountable for results. [CEDS Element: State Assessment Administration Funding, ID:000454]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_reporting.state_assess_standards_funding IS 'The percentage of funds used to pay the costs of the development of the State assessments and standards required by section 1111(b). [CEDS Element: State Assessment Standards Funding, ID:000453]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_reporting.terminated_title_iii_program_failure IS 'An indication of whether a Title III program or activity was terminated due to failure to meet goals. [CEDS Element: Terminated Title III Programs Due to Failure, ID:000482]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_reporting.interscholastic_sports_male_only IS 'The number of interscholastic sports in which only male students participate.  Sports include distinct sports such as football, basketball, soccer but not intramural sports or cheerleading. [CEDS Element: Interscholastic Sports - Male Only, ID:000653]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_reporting.interscholastic_sports_female_only IS 'The number of interscholastic sports in which only female students participate.  Sports include distinct sports such as football, basketball, soccer but not intramural sports or cheerleading. [CEDS Element: Interscholastic Sports - Female Only, ID:000654]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_reporting.interscholastic_teams_male_only IS 'The number of interscholastic teams in which only male students participate.  Teams include each competitive level team in each sport, such as freshman team, junior varsity team, and varsity team but not intramural sports or cheerleading. [CEDS Element: Interscholastic Teams - Male Only, ID:000655]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_reporting.interscholastic_teams_female_only IS 'The number of interscholastic teams in which only female students participate.  Teams include each competitive level team in each sport, such as freshman team, junior varsity team, and varsity team but not intramural sports or cheerleading. [CEDS Element: Interscholastic Teams - Female Only, ID:000656]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_reporting.interscholastic_sport_participants_male IS 'The number of male students who participated on an interscholastic team.  A student should be counted once for each team he was on. [CEDS Element: Interscholastic Sport Participants - Male Only, ID:000657]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_reporting.interscholastic_sport_participants_female IS 'The number of female students who participated on an interscholastic team.  A student should be counted once for each team she was on. [CEDS Element: Interscholastic Sport Participants - Female Only, ID:000658]';

CREATE TABLE ceds6sc_rdx.k12_lea_pre_k_eligible_ages_idea ( 
	k12_lea_pre_k_eligible_ages_idea_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_pre_k_eligible_ages_non_idea_id integer  NOT NULL,
	CONSTRAINT pk_k12_lea_pre_k_eligible_ages_idea PRIMARY KEY ( k12_lea_pre_k_eligible_ages_idea_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_lea_pre_k_eligible_ages_idea IS 'The ages of children not served under IDEA to whom the LEA''s pre-kindergarten services are available.';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_pre_k_eligible_ages_idea.k12_lea_pre_k_eligible_ages_idea_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_pre_k_eligible_ages_idea.organization_id IS 'Surrogate key from K12LEA';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_pre_k_eligible_ages_idea.ref_pre_k_eligible_ages_non_idea_id IS 'The ages of children not served under IDEA to whom the LEA''s pre-kindergarten services are available.   [CEDS Element: Pre-kindergarten Eligible Ages for Non-IDEA Students, ID:000217]  (Foreign key - Ref_Pre_K_Eligible_Ages_Non_IDEA)';

CREATE TABLE ceds6sc_rdx.k12_lea_title_iii_professional_development ( 
	k12_lea_title_iii_professional_development_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_title_iii_professional_development_type_id integer  NOT NULL,
	CONSTRAINT pk_k12_lea_title_iii_professional_dev PRIMARY KEY ( k12_lea_title_iii_professional_development_id ),
	CONSTRAINT ix_k12_lea_title_iii_professional_development UNIQUE ( organization_id, ref_title_iii_professional_development_type_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.k12_lea_title_iii_professional_development IS 'The type of Title III professional development utilized by an LEA.';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_title_iii_professional_development.k12_lea_title_iii_professional_development_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_title_iii_professional_development.organization_id IS 'Surrogate key from K12LEA';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_title_iii_professional_development.ref_title_iii_professional_development_type_id IS 'The type of Title III professional development utilized. [CEDS Element: Title III Professional Development Type, ID:000487]';

CREATE TABLE ceds6sc_rdx.k12_organization_student_responsibility ( 
	k12_organization_student_responsibility_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_k12_responsibility_type_id integer  NOT NULL,
	CONSTRAINT pk_k12_org_student_responsibility PRIMARY KEY ( k12_organization_student_responsibility_id ),
	CONSTRAINT ix_k12_organization_student_responsibility UNIQUE ( organization_person_role_id, ref_k12_responsibility_type_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.k12_organization_student_responsibility IS 'The type of services/instruction the organization is responsible for the student.';

COMMENT ON COLUMN ceds6sc_rdx.k12_organization_student_responsibility.k12_organization_student_responsibility_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_organization_student_responsibility.organization_person_role_id IS 'Surrogate key - Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.k12_organization_student_responsibility.ref_k12_responsibility_type_id IS 'The type of services/instruction the organization is responsible for the student. [CEDS Elements: Responsible School Type (000595), Responsible School Identifier (000638), Responsible District Type (000594), Responsible District Identifier (000637), Responsible Organization Type (001467)]';

CREATE TABLE ceds6sc_rdx.k12_school ( 
	organization_id      integer  NOT NULL,
	ref_school_type_id   integer  ,
	ref_school_level_id  integer  ,
	ref_administrative_funding_control_id integer  ,
	charter_school_indicator bool  ,
	ref_charter_school_type_id integer  ,
	ref_increased_learning_time_type_id integer  ,
	ref_state_poverty_designation_id integer  ,
	charter_school_approval_year varchar(9)  ,
	ref_charter_school_approval_agency_type_id integer  ,
	accreditation_agency_name varchar(300)  ,
	charter_school_open_enrollment_indicator bool  ,
	charter_school_contract_approval_date date  ,
	charter_school_contract_id_number varchar(30)  ,
	charter_school_contract_renewal_date date  ,
	ref_charter_school_management_organization_type_id integer  ,
	CONSTRAINT xpk_k12school PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_school IS 'An institution that provides educational services; has one or more grade groups (PK through 12); has one or more teachers; is located in one or more buildings; has an assigned administrator(s). ';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.organization_id IS 'Inherited surrogate key from Organization.';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.ref_school_type_id IS 'The type of education institution as classified by its primary focus.  [CEDS Element: School Type, ID:000242]  (Foreign key - Ref_School_Type)';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.ref_school_level_id IS 'An indication of the level of the education institution. [CEDS Element: School Level, ID:000241]  (Foreign key - Ref_School_Level)';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.ref_administrative_funding_control_id IS 'The type of education institution as classified by its funding source. [CEDS Element: Administrative Funding Control, ID:000012]  (Foreign key - Ref_Admin_Funding_Control)';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.charter_school_indicator IS 'A school or agency providing free public elementary or secondary education to eligible students under a specific charter granted by the state legislature or other appropriate authority and designated by such authority to be a charter school. [CEDS Element: Charter School Indicator, ID:000039]';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.ref_charter_school_type_id IS 'Surrogate key from Ref_Charter_School_Type.  The category of charter school. [CEDS Element: Charter School Type, ID:000710]';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.ref_increased_learning_time_type_id IS 'The types of increased learning time provided. [CEDS Element: Increased Learning Time Type, ID:000164]';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.ref_state_poverty_designation_id IS 'The designation of a school’s poverty quartile for purposes of determining classes taught by highly qualified teachers in high and low poverty schools, according to state’s indicator of poverty. [CEDS Element: State Poverty Designation, ID:000585]';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.charter_school_approval_year IS 'The school year in which a charter school was initially approved. (YYYY-YYYY) [CEDS Elements: Charter School Approval Year, ID: 001293]';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.ref_charter_school_approval_agency_type_id IS 'The type of agency that approved the establishment or continuation of a charter school. [CEDS Element: Charter School Approval Agency Type, ID:001292]';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.accreditation_agency_name IS 'The full name of an agency that accredited a school. [CEDS Element: Accreditation Agency Name, ID:001526]';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.charter_school_open_enrollment_indicator IS 'Indicates that the charter school offers open enrollment. [CEDS Element: Charter School Open Enrollment Indicator, ID:001548]';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.charter_school_contract_approval_date IS 'The effective date of the contract (or charter) that an approved charter school authorizer authorized the charter school to operate in the state under the state''s charter school legislation. [CEDS Element: Charter School Contract Approval Date, ID:001652]';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.charter_school_contract_id_number IS 'The unique number the SEA assigns to the contract (or charter) that authorizes the charter school to operate in the state under the state''s charter school legislation. [CEDS Element: Charter School Contract Id Number, ID:001651]';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.charter_school_contract_renewal_date IS 'The date by which the charter school must renew its contract (or charter) with an approved charter school authorizer in order to continue to operate in the state under the state''s charter school legislation. [CEDS Element: Charter School Contract Renewal Date, ID:001653]';

COMMENT ON COLUMN ceds6sc_rdx.k12_school.ref_charter_school_management_organization_type_id IS 'The type of organization that is a separate legal entity that 1) contracts with one or more charter schools to manage, operate, and oversee the charter schools; or 2) holds a charter, or charters, to operate multiple charter schools. [CEDS Element: Charter School Management Organization Type, ID:001650]';

CREATE TABLE ceds6sc_rdx.k12_school_grade_offered ( 
	k12_school_grade_offered_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_grade_level_id   integer  NOT NULL,
	CONSTRAINT pk_k12_school_grade_offered PRIMARY KEY ( k12_school_grade_offered_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_school_grade_offered IS 'The specific grade or combination of grades offered by an education institution.';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_grade_offered.k12_school_grade_offered_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_grade_offered.organization_id IS 'Foreign key - K12 School.';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_grade_offered.ref_grade_level_id IS 'The specific grade or combination of grades offered by an education institution. [CEDS Element: Grades Offered, ID:000131]  (Foreign key - Ref_Grade_Level)';

CREATE TABLE ceds6sc_rdx.k12_school_status ( 
	organization_id      integer  NOT NULL,
	ref_magnet_special_program_id integer  ,
	ref_alternative_school_focus_id integer  ,
	ref_internet_access_id integer  ,
	ref_restructuring_action_id integer  ,
	ref_title_i_school_status_id integer  ,
	consolidated_mep_funds_status bool  ,
	CONSTRAINT pk_k12_school_status PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_school_status IS 'The collection of status values for a K12 school.';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_status.organization_id IS 'Inherited surrogate key from K12School.';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_status.ref_magnet_special_program_id IS 'A school that has been designed: 1) to attract students of different racial/ethnic backgrounds for the purpose of reducing, preventing, or eliminating racial isolation; and/or 2)to provide an academic or social focus on a particular theme (e.g., science/math, performing arts, gifted/talented, career academy or foreign language). [CEDS Element: Magnet or Special Program Emphasis School, ID:000181]  (Foreign key - Ref_Magnet_Special_Program)';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_status.ref_alternative_school_focus_id IS 'An indication of the specific group of students whose needs the alternative school is designed to meet. [CEDS Element: Alternative School Focus Type, ID:000015]  (Foreign key - Ref_Alternative_School_Focus)';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_status.ref_internet_access_id IS 'The type of internet access available. [CEDS Element: Internet Access, ID:000587]  (Foreign key - Ref_Internet_Access)';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_status.ref_restructuring_action_id IS 'The types of actions being implemented in Title I schools as a result of the school being in an improvement status of restructuring – year 2 (implementation year). [CEDS Element: Restructuring Action, ID:000232]  (Foreign key - Ref_Restructuring_Action)';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_status.ref_title_i_school_status_id IS 'An indication that a school is designated under state and federal regulations as being eligible for participation in programs authorized by Title I of ESEA as amended and whether it has a Title I program. [CEDS Element: Title I School Status, ID:000285]  (Foreign key - Ref_Title_I_School_Status)';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_status.consolidated_mep_funds_status IS 'An indication of whether the school has a school-wide program, as defined by Title I of ESEA as amended, in which federal Migrant Education Program (MEP) funds are consolidated as authorized under 34 CFR Section 200.29. [CEDS Element: Consolidated Migrant Education Program Funds Status, ID:000542]';

CREATE TABLE ceds6sc_rdx.k12_sea_alternate_fund_use ( 
	k12_sealternate_fund_use_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_alternate_fund_uses_id integer  NOT NULL,
	CONSTRAINT pk_k12_sea_alternate_fund_use PRIMARY KEY ( k12_sealternate_fund_use_id ),
	CONSTRAINT ix_k12_sea_alternate_fund_use UNIQUE ( organization_id, ref_alternate_fund_uses_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.k12_sea_alternate_fund_use IS 'Purposes that funds available under ESEA section 6111 (Grants for State Assessments and Related Activities) were used for purposes other than the costs of the development of the State assessments and standards required by section 1111(b). [CEDS Element: Uses of Funds for Purposes other than Standards and Assessment Development, ID:000459] (Foreign key - Ref_Alternate_Fund_Use)';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea_alternate_fund_use.k12_sealternate_fund_use_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea_alternate_fund_use.organization_id IS 'Surrogate key from K12SEAFederal_Funds';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea_alternate_fund_use.ref_alternate_fund_uses_id IS 'Purposes that funds available under ESEA section 6111 (Grants for State Assessments and Related Activities) were used for purposes other than the costs of the development of the State assessments and standards required by section 1111(b). [CEDS Element: Uses of Funds for Purposes other than Standards and Assessment Development, ID:000459]  (Foreign key - Ref_Alternate_Fund_Use)';

CREATE TABLE ceds6sc_rdx.k12_sea_federal_funds ( 
	organization_id      integer  NOT NULL,
	state_transferability_of_funds bool  ,
	date_state_received_title_iii_allocation date  ,
	date_title_iii_funds_available_to_subgrantees date  ,
	number_of_days_for_title_iii_subgrants numeric(6,2)  ,
	CONSTRAINT pk_k12_sea_federal_funds PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_sea_federal_funds IS 'Information on the federal funds received by the SEA.';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea_federal_funds.organization_id IS 'Inherited surrogate key from K12SEA';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea_federal_funds.state_transferability_of_funds IS 'Did the State transfer funds under the State Transferability authority of Section 6123(a) [CEDS Element: State Transferability of Funds, ID:000445]';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea_federal_funds.date_state_received_title_iii_allocation IS 'Annual date the State receives the Title III allocation from U.S. Department of Education (ED). [CEDS Element: Date State Received Title III Allocation, ID:000455]';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea_federal_funds.date_title_iii_funds_available_to_subgrantees IS 'Annual date that Title III funds are available to approved subgrantees. [CEDS Element: Date Title III Funds Available to Subgrantees, ID:000456]';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea_federal_funds.number_of_days_for_title_iii_subgrants IS 'Average number of days for States receiving Title III funds to make subgrants to subgrantees beginning from July 1 of each year, except under conditions where funds are being withheld. [CEDS Element: Number of Days for Title III Subgrants, ID:000457]';

CREATE TABLE ceds6sc_rdx.k12_staff_employment ( 
	staff_employment_id  integer  NOT NULL,
	ref_k12_staff_classification_id integer  ,
	ref_employment_status_id integer  ,
	contract_days_of_service_per_year decimal(5,2)  ,
	staff_compensation_base_salary decimal(9,2)  ,
	staff_compensation_retirement_benefits decimal(9,2)  ,
	staff_compensation_health_benefits decimal(9,2)  ,
	staff_compensation_other_benefits decimal(9,2)  ,
	staff_compensation_total_benefits decimal(9,2)  ,
	staff_compensation_total_salary decimal(9,2)  ,
	mep_personnel_indicator bool  ,
	title_i_targeted_assistance_staff_funded bool  ,
	salary_for_teaching_assignment_only_indicator bool  ,
	CONSTRAINT pk_k12_staff_employment PRIMARY KEY ( staff_employment_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_staff_employment IS 'Employment attributes for a K12 Staff Member.';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_employment.staff_employment_id IS 'Foreign key - Staff_Employment';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_employment.ref_k12_staff_classification_id IS 'The titles of employment, official status, or rank of education staff. [CEDS Element: K12 Staff Classification, ID:000087]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_employment.ref_employment_status_id IS 'The condition under which a person has agreed to serve an employer. [CEDS Element: Employment Status, ID:000347]  (Foreign key - Ref_Employment_Status)';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_employment.contract_days_of_service_per_year IS 'The number of days per year that a person is expected to work as outlined specifically in his or her employment agreement. [CEDS Element: Contract Days of Service per Year, ID:000047]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_employment.staff_compensation_base_salary IS 'The salary or wage a person is paid before deductions (excluding differentials) but including annuities. [CEDS Element: Base Salary, ID:000032]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_employment.staff_compensation_retirement_benefits IS 'Contributions made by the school district, municipal, state, and other government agencies toward the teacher''s retirement plan, prorated to the specific school indicated on the record (does not include contributions made by the teacher). [CEDS Element: Staff Compensation Retirement Benefits, ID:000233]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_employment.staff_compensation_health_benefits IS 'Contributions made by the school district, municipal, state, and other government agencies for the teacher''s health insurance, prorated to the specific school indicated on the record (does not include contributions made by the teacher). [CEDS Element: Staff Compensation Health Benefits, ID:000136]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_employment.staff_compensation_other_benefits IS 'All other benefits (excluding retirement and health insurance) paid by the school district, municipal, state, and other government agencies for the teacher, prorated to the specific school indicated on the record (does not include contributions made by the teacher). [CEDS Element: Staff Compensation Other Benefits, ID:000205]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_employment.staff_compensation_total_benefits IS 'Sum of retirement, health, and all other benefits, or total benefits paid by the school district, municipal, state, and other government agencies, prorated to the specific school indicated on the record. [CEDS Element: Staff Compensation Total Benefits, ID:000293]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_employment.staff_compensation_total_salary IS 'Staff Compensation Total Salary';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_employment.mep_personnel_indicator IS 'An indication that a staff member''s salary is paid by the Title I, Part C Migrant Education Program (MEP) of ESEA as amended. [CEDS Element: Migrant Education Program Personnel Indicator, ID:000543]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_employment.title_i_targeted_assistance_staff_funded IS 'An indication that a staff member is targeted assistance (TAS) program staff funded by Title I, Part A, Section 1115 of ESEA as amended. [CEDS Element: Title I Targeted Assistance Staff Funded, ID:000552]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_employment.salary_for_teaching_assignment_only_indicator IS 'Indicator to determine whether the teacher''s base salary includes pay for teaching assignments alone. [CEDS Element: Salary For Teaching Assignment Only Indicator, ID:000234]';

CREATE TABLE ceds6sc_rdx.k12_student_academic_record ( 
	organization_person_role_id integer  NOT NULL,
	credits_attempted_cumulative decimal(9,2)  ,
	credits_earned_cumulative decimal(9,2)  ,
	grade_points_earned_cumulative decimal(9,2)  ,
	grade_point_average_cumulative decimal(9,4)  ,
	ref_gpa_weighted_indicator_id integer  ,
	projected_graduation_date char(7)  ,
	high_school_student_class_rank integer  ,
	class_ranking_date   varchar(10)  ,
	total_number_in_class integer  ,
	diploma_or_credential_award_date char(7)  ,
	ref_high_school_diploma_type_id integer  ,
	ref_high_school_diploma_distinction_type_id integer  ,
	ref_technology_literacy_status_id integer  ,
	ref_ps_enrollment_action_id integer  ,
	ref_pre_and_post_test_indicator_id integer  ,
	ref_professional_technical_credential_type_id integer  ,
	ref_progress_level_id integer  ,
	CONSTRAINT pk_k12_student_academic_record PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_student_academic_record IS 'The summary level academic record for a K12 student including graduation information.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.organization_person_role_id IS 'Inherited surrogate Key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.credits_attempted_cumulative IS 'The cumulative number of credits a person attempts to earn by taking courses during his or her enrollment in the current school as well as those credits transferred from schools in which the person had been previously enrolled. [CEDS Element: Credits Attempted Cumulative, ID:000073]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.credits_earned_cumulative IS 'The cumulative number of credits a person earns by completing courses or examinations during his or her enrollment in the current school as well as those credits transferred from schools in which the person had been previously enrolled. [CEDS Element: Credits Earned Cumulative, ID:000074]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.grade_points_earned_cumulative IS 'The cumulative number of grade points a person earns by successfully completing courses or examinations during his or her enrollment in the current school as well as those transferred from schools in which the person had been previously enrolled. [CEDS Element: Grade Points Earned Cumulative, ID:000130]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.grade_point_average_cumulative IS 'A measure of average performance in all courses taken by a person during his or her school career as determined for record-keeping purposes. This is obtained by dividing the total grade points received by the total number of credits attempted. This usually includes grade points received and credits attempted in his or her current school as well as those transferred from schools in which the person was previously enrolled. [CEDS Element: Grade Point Average Cumulative, ID:000128]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.ref_gpa_weighted_indicator_id IS 'An indication of whether the reported GPA is weighted or unweighted. [CEDS Element: Grade Point Average Weighted Indicator, ID:000123]  (Foreign key - Ref_Gpa_Weighed_Indicator)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.projected_graduation_date IS 'The year and month the student is projected to graduate. [CEDS Element: Projected Graduation Date, ID:000226]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.high_school_student_class_rank IS 'The academic rank of a student in relation to his or her high school graduating class (e.g., 1, 2, 3) based on high school GPA. [CEDS Element: High School Student Class Rank, ID:000041]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.class_ranking_date IS 'The date class ranking was determined. [CEDS Element: Class Ranking Date, ID:000042]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.total_number_in_class IS 'The total number of students in the student''s high school graduating class. [CEDS Element: Size of High School Graduating Class, ID:000294]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.diploma_or_credential_award_date IS 'The month and year on which the diploma/credential is awarded to a student in recognition of his/her completion of the curricular requirements. [CEDS Element: Diploma or Credential Award Date, ID:000081]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.ref_high_school_diploma_type_id IS 'The type of diploma/credential that is awarded to a person in recognition of his/her completion of the curricular requirements. [CEDS Element: High School Diploma Type, ID:000138]  (Foreign key - Ref_High_School_Diploma_Type)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.ref_high_school_diploma_distinction_type_id IS 'The distinction of the diploma or credential that is awarded to a student in recognition of their completion of the curricular requirements. [CEDS Element: High School Diploma Distinction Type, ID:000713]  (Foreign key - Ref_High_School_Diploma_Distinction_Type)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.ref_technology_literacy_status_id IS 'An indication of the technology literacy of 8th graders. [CEDS Element: Technology Literacy Status in 8th Grade, ID:000566]  (Foreign key - Ref_Technology_Literacy_Status)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.ref_ps_enrollment_action_id IS 'The action taken with respect to postsecondary enrollment by the student who graduated from the school, LEA or state in the past two years. [CEDS Element: Postsecondary Enrollment Action, ID:000586]  (Foreign key - Ref_Ps_Enrollment_Action)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.ref_pre_and_post_test_indicator_id IS 'An indication of whether students took both a pre-test and a post-test to measure academic improvement. [CEDS Element: Pre and Post Test Indicator, ID:000571]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.ref_professional_technical_credential_type_id IS 'An indicator of the category of credential conferred by a state occupational licensing entity or industry organization for competency in a specific area measured by a set of pre-established standards. [CEDS Element: Professional or Technical Credential Conferred, ID:000783]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_record.ref_progress_level_id IS 'The amount of progress shown in academic subjects. [CEDS Element: Progress Level, ID:000561]';

CREATE TABLE ceds6sc_rdx.k12_student_cohort ( 
	organization_person_role_id integer  NOT NULL,
	cohort_year          char(4)  ,
	cohort_graduation_year char(4)  ,
	graduation_rate_survey_cohort_year char(4)  ,
	graduation_rate_survey_indicator bool  ,
	cohort_description   varchar(30)  ,
	CONSTRAINT pk_k12_student_cohort PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_student_cohort IS 'Information on the cohort for a K12 student.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_cohort.organization_person_role_id IS 'Surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_cohort.cohort_year IS 'The school year in which the student entered the baseline group used for computing completion rates (e.g., high school, program). [CEDS Element: Cohort Year, ID:000046]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_cohort.cohort_graduation_year IS 'The year the cohort graduated with a regular high school diploma. [CEDS Element: Cohort Graduation Year, ID:000584]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_cohort.graduation_rate_survey_cohort_year IS 'The academic year in which a student entered as part of the GRS cohort. [CEDS Element: Graduation Rate Survey Cohort Year, ID:000132]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_cohort.graduation_rate_survey_indicator IS 'An indication of whether or not the student is in a GRS cohort; meaning the student began as a first-time, full-time, degree seeking student in the fall of a given year. [CEDS Element: Graduation Rate Survey Indicator, ID:000133]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_cohort.cohort_description IS 'A description of the student cohort. [CEDS Element: Cohort Description, ID:000711]';

CREATE TABLE ceds6sc_rdx.k12_student_course_section_mark ( 
	k12_student_course_section_mark_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	marking_period_name  varchar(30)  ,
	final_indicator      bool  ,
	grade_earned         varchar(15)  ,
	mid_term_mark        varchar(15)  ,
	grade_value_qualifier varchar(100)  ,
	student_course_section_grade_narrative varchar(300)  ,
	CONSTRAINT pk_k12_student_course_section_mark PRIMARY KEY ( k12_student_course_section_mark_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_student_course_section_mark IS 'Defines information about a mark associated with a student for a course section, including flags to indicate if the mark is a final grade or a midterm grade.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section_mark.k12_student_course_section_mark_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section_mark.organization_person_role_id IS 'Foreign key - K12Student_Course_Section';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section_mark.marking_period_name IS 'The name or description of the marking period (e.g., fall, first marking period). [CEDS Element: Marking Period Name, ID:000182]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section_mark.final_indicator IS 'Indicates that the mark is a final mark the learner has earned for the course section. [CEDS Element: Student Course Section Mark Final Indicator, ID:001142]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section_mark.grade_earned IS 'A final indicator of student performance in a course section as submitted by the instructor. [CEDS Element: Student Course Section Grade Earned, ID:000124]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section_mark.mid_term_mark IS 'Indicator of student performance at the mid-point of the marking period. [CEDS Element: Mid Term Mark, ID:000183]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section_mark.grade_value_qualifier IS 'The scale of equivalents, if applicable, for grades awarded as indicators of performance in schoolwork. For example, numerical equivalents for letter grades used in determining a student''s Grade Point Average (A=4, B=3, C=2, D=1 in a four-point system) or letter equivalents for percentage grades (90-100%=A, 80-90%=B, etc.) [CEDS Element: Grade Value Qualifier, ID:000616]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section_mark.student_course_section_grade_narrative IS 'The narrative of the student performance in a course section as submitted by the instructor. [CEDS Element: Student Course Section Grade Narrative, ID:001573]';

CREATE TABLE ceds6sc_rdx.k12_student_employment ( 
	organization_person_role_id integer  NOT NULL,
	ref_employed_while_enrolled_id integer  ,
	ref_employed_after_exit_id integer  ,
	employment_naics_code char(6)  ,
	CONSTRAINT pk_k12_student_employment PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_student_employment IS 'Employment information for a K12 Student.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_employment.organization_person_role_id IS 'Surrogate Key - Foreign key: Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_employment.ref_employed_while_enrolled_id IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, and at the same time is enrolled in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed While Enrolled, ID:000987]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_employment.ref_employed_after_exit_id IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, after exiting secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed After Exit, ID:000988]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_employment.employment_naics_code IS 'The North American Industry Classification System (NAICS) code associated with an individual''s employment. [CEDS Element: Employment NAICS Code, ID:001064]';

CREATE TABLE ceds6sc_rdx.k12_student_graduation_plan ( 
	organization_person_role_id integer  NOT NULL,
	k12_course_id        integer  NOT NULL,
	credits_required     decimal(9,2)  ,
	ref_sced_course_subject_area_id integer  ,
	ref_grade_level_when_course_taken_id integer  ,
	CONSTRAINT pk_k12_student_graduation_plan PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.k12_student_graduation_plan.organization_person_role_id IS 'Inherited surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_graduation_plan.k12_course_id IS 'Foreign key - K12Course.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_graduation_plan.credits_required IS 'The total number of credits required for a student to graduate from the school of enrollment or complete a program. [CEDS Element: Credits Required, ID:001574]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_graduation_plan.ref_sced_course_subject_area_id IS 'The intended major subject area of the education course. [CEDS Element: School Courses for the Exchange of Data Course Subject Area, ID:001518]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_graduation_plan.ref_grade_level_when_course_taken_id IS 'Student''s grade level at time of course. [CEDS Element: Grade Level When Course Taken, ID:000125]  (Foreign key - Ref_Grade_Level)';

CREATE TABLE ceds6sc_rdx.k12_student_session ( 
	k12_student_session_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	organization_calendar_session_id integer  ,
	grade_point_average_given_session decimal(9,4)  ,
	CONSTRAINT pk_k12_student_session PRIMARY KEY ( k12_student_session_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_student_session IS 'Information specific to a K12 student and session.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_session.k12_student_session_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_session.organization_person_role_id IS 'Foreign key to Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_session.organization_calendar_session_id IS 'Foreign key to Session.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_session.grade_point_average_given_session IS 'A measure of average performance in all courses taken by a person during a given session. This is obtained by dividing the total grade points received by the number of credits attempted for the same session. [CEDS Element: Grade Point Average Given Session, ID:000129]';

CREATE TABLE ceds6sc_rdx.learner_action ( 
	learner_action_id    integer  NOT NULL,
	assessment_item_response_id integer  ,
	ref_learner_action_type_id integer  ,
	value              text  ,
	learner_action_date_time date  ,
	learner_action_actor_identifier varchar(40)  ,
	learner_action_object_description varchar(300)  ,
	learner_action_object_identifier varchar(40)  ,
	learner_action_object_type varchar(60)  ,
	CONSTRAINT pk_assessment_item_learner_action PRIMARY KEY ( learner_action_id )
 );

COMMENT ON TABLE ceds6sc_rdx.learner_action IS 'The information about detailed actions taken by a learner while engaging in learning activities, such as asking for a hint when taking an online formative assessment.';

COMMENT ON COLUMN ceds6sc_rdx.learner_action.learner_action_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.learner_action.assessment_item_response_id IS 'Foreign key - Assessment_Item_Response';

COMMENT ON COLUMN ceds6sc_rdx.learner_action.ref_learner_action_type_id IS 'The type of action taken by the learner. [CEDS Element Learner Action Type, ID:000934]';

COMMENT ON COLUMN ceds6sc_rdx.learner_action.value IS 'The value representing input by the learner using an online system, such as a value entered in response to an assessment question, or the URL of a learning resource link clicked. [CEDS Element: Learner Action Value, ID:000935]';

COMMENT ON COLUMN ceds6sc_rdx.learner_action.learner_action_date_time IS 'The date and time at which the action was taken. [CEDS Element: Learner Action Date Time, ID:000937]';

COMMENT ON COLUMN ceds6sc_rdx.learner_action.learner_action_actor_identifier IS ' A unique identifier for the person performing the learner action.  The identifier should be encrypted when integrating learning experience data across systems to secure the privacy of the learner. [CEDS Element: Learner Action Actor Identifier, ID:001557]';

COMMENT ON COLUMN ceds6sc_rdx.learner_action.learner_action_object_description IS 'A description of the object upon which the person has performed the Learner Action. [CEDS Element: Learner Action Object Description, ID:001558]';

COMMENT ON COLUMN ceds6sc_rdx.learner_action.learner_action_object_identifier IS 'A globally unique identifier for the object upon which the learning has performed the Learner Action which may be a URL with information about a learning resource or to launch the resource. [CEDS Element: Learner Action Object Identifier, ID:001559]';

COMMENT ON COLUMN ceds6sc_rdx.learner_action.learner_action_object_type IS 'The type of object upon which a person has performed the Learner Action. [CEDS Element: Learner Action Object Type, ID:001560]';

CREATE TABLE ceds6sc_rdx.learner_activity_learning_resource ( 
	learner_activity_learning_resource_id integer  NOT NULL,
	learner_activity_id  integer  NOT NULL,
	learning_resource_id integer  NOT NULL,
	CONSTRAINT pk_learner_activity_learning_resource PRIMARY KEY ( learner_activity_learning_resource_id ),
	CONSTRAINT ix_learner_activity_learning_resource UNIQUE ( learner_activity_id, learning_resource_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.learner_activity_learning_resource IS 'The collection of learning resources for a learner activity.';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity_learning_resource.learner_activity_learning_resource_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity_learning_resource.learner_activity_id IS 'Foreign key - Learner_Activity';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity_learning_resource.learning_resource_id IS 'Foreign key - Learning_Resource';

CREATE TABLE ceds6sc_rdx.learning_resource ( 
	learning_resource_id integer  NOT NULL,
	title                varchar(30)  ,
	description          varchar(300)  ,
	url                  varchar(300)  ,
	concept_keyword      varchar(300)  ,
	subject_name         varchar(30)  ,
	subject_code         varchar(30)  ,
	subject_code_system  varchar(30)  ,
	ref_learning_resource_type_id integer  ,
	date_created         date  ,
	version            varchar(30)  ,
	creator              varchar(60)  ,
	publisher_name       varchar(60)  ,
	published_date       date  ,
	copyright_holder_name varchar(60)  ,
	copyright_year       char(4)  ,
	learning_resource_license_url varchar(300)  ,
	based_on_url         varchar(300)  ,
	ref_learning_resource_intended_end_user_role_id integer  ,
	ref_learning_resource_educational_use_id integer  ,
	ref_learning_resource_interactivity_type_id integer  ,
	ref_language_id      integer  ,
	time_required        decimal(9,2)  ,
	typical_age_range_minimum smallint  ,
	typical_age_range_maximum smallint  ,
	text_complexity_value varchar(30)  ,
	text_complexity_system varchar(30)  ,
	adapted_from_url     varchar(300)  ,
	assistive_technologies_compatible_ind bool  ,
	peer_rating_sample_size integer  ,
	ref_learning_resource_access_api_type_id integer  ,
	ref_learning_resource_access_hazard_type_id integer  ,
	ref_learning_resource_access_mode_type_id integer  ,
	ref_learning_resource_book_format_type_id integer  ,
	ref_learning_resource_control_flexibility_type_id integer  ,
	ref_learning_resource_digital_media_sub_type_id integer  ,
	ref_learning_resource_digital_media_type_id integer  ,
	learning_resource_author_email varchar(128)  ,
	learning_resource_author_url varchar(300)  ,
	learning_resource_date_modified date  ,
	learning_resource_publisher_email varchar(128)  ,
	learning_resource_publisher_url varchar(300)  ,
	ref_learning_resource_access_rights_url_id integer  ,
	ref_learning_resource_author_type_id integer  ,
	ref_learning_resource_interaction_mode_id integer  ,
	CONSTRAINT pk_learning_resource PRIMARY KEY ( learning_resource_id )
 );

COMMENT ON TABLE ceds6sc_rdx.learning_resource IS 'Describes the content, materials, or informational resources that support learning.
';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.learning_resource_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.title IS 'The title of the resource. [CEDS Element: Learning Resource Title, ID:000912]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.description IS 'A short description of the Learning Resource. [CEDS Element: Learning Resource Description, ID:001143]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.url IS 'The Uniform Resource Locator where the resource may be accessed, or a proxy for the resource, such as an information page for a commercially available resource. [CEDS Element: Learning Resource URL, ID:000911]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.concept_keyword IS 'The significant topicality of the Learning Resource using free-text keywords and phrases. [CEDS Element: Learning Resource Concept Keyword, ID:001146]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.subject_name IS 'The descriptive name for the subject of the content for the learning resource. [CEDS Element: Learning Resource Subject Name, ID:000913]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.subject_code IS 'The code used to identify the organization of subject matter and related learning experiences addressed by the learning resource. [CEDS Element: Learning Resource Subject Code, ID:000914]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.subject_code_system IS 'The system that is used to identify the organization of subject matter and related learning experiences addressed by the learning resource. [CEDS Element: Learning Resource Subject Code System, ID:000915]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_learning_resource_type_id IS 'The predominate type or kind characterizing the learning resource. [CEDS Element: Learning Resource Type, ID:000928]  (Foreign key - Ref_Learning_Resource_Type)';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.date_created IS 'The date on which the resource was created. [CEDS Element: Learning Resource Date Created, ID:000916]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.version IS 'Defines the version of the learning resource as defined by the publisher. [CEDS Element: Learning Resource Version, ID:001216]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.creator IS 'The name of individual credited with the creation of the resource. [CEDS Element: Learning Resource Creator, ID:000917]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.publisher_name IS 'The name of the organization credited with publishing the resource. [CEDS Element: Learning Resource Publisher Name, ID:000918]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.published_date IS 'The published date of an educational resource, such as instructional media, an assessment form, or section of an assessment form. [CEDS Element: Learning Resource Published Date, ID:001184]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.copyright_holder_name IS 'The name(s) of the person(s) or organization(s) holding the copyright for the Learning Resource. [CEDS Element: Learning Resource Copyright Holder Name, ID:001144]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.copyright_year IS 'The copyright year for the Learning Resource. [CEDS Element: Learning Resource Copyright Year, ID:001145]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.learning_resource_license_url IS 'The URL where the owner specifies permissions for using the resource. [CEDS Element: Learning Resource License URL, ID:000921]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.based_on_url IS 'A resource that was used in the creation of this resource. This term can be repeated for multiple sources. [CEDS Element: Learning Resource Based On URL, ID:000922]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_learning_resource_intended_end_user_role_id IS 'The individual or group for which the resource was produced. [CEDS Element: Learning Resource Intended End User Role, ID:000923]  (Foreign key - Ref_Learning_Resouce_Intended_End_User_Role)';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_learning_resource_educational_use_id IS 'The purpose of the work in the context of education. [CEDS Element: Learning Resource Educational Use, ID:001002]  (Foreign key - Ref_Learning_Resource_Educational_Use)';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_learning_resource_interactivity_type_id IS 'The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed. [CEDS Element: Learning Resource Interactivity Type, ID:000927]  (Foreign key - Ref_Lr_Interactivity_Type)';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_language_id IS 'The primary language of the resource. [CEDS Element: Learning Resource Language, ID:000919]  (Foreign key - Ref_Language)';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.time_required IS 'The approximate or typical time it takes to work with or through this learning resource for the typical intended target audience. [CEDS Element: Learning Resource Time Required, ID:000924]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.typical_age_range_minimum IS 'The minimum for the typical range of ages of the content’s intended end user. [CEDS Element: Learning Resource Typical Age Range Minimum, ID:000925]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.typical_age_range_maximum IS 'The maximum for the typical range of ages of the content’s intended end user. [CEDS Element: Learning Resource Typical Age Range Maximum, ID:000926]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.text_complexity_value IS 'The complexity of the text using the scaling system defined by Text Complexity System, e.g. Lexile(tm). [CEDS Element: Learning Resource Text Complexity Value, ID:000929]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.text_complexity_system IS 'The scaling system used to specify the text complexity of an Learning Resource [CEDS Element: Learning Resource Text Complexity System, ID:000930]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.adapted_from_url IS 'URL identifier of a learning resource for which this resource is an adaptation. [CEDS Element: Learning Resource Adapted From URL, ID: 001398]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.assistive_technologies_compatible_ind IS 'Indicates that the learning resource is compatible with assistive technologies. [CEDS Element: Learning Resource Assistive Technologies Compatible Indicator, ID: 001393]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.peer_rating_sample_size IS 'The sample size of a peer rating value. Only used when the Peer Rating Value is collected in aggregate as an average of multiple atomic/individual ratings. [CEDS Element: Learning Resource Peer Rating Sample Size, ID: 001400]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_learning_resource_access_api_type_id IS 'Indicates that the learning resource is compatible with the referenced accessibility application programming interface (API). [CEDS Element: Learning Resource Access API Type, ID:001389]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_learning_resource_access_hazard_type_id IS 'A characteristic of the described learning resource that is physiologically dangerous to some users. [CEDS Element: Learning Resource Access Hazard Type, ID:001390]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_learning_resource_access_mode_type_id IS 'An access mode through which the intellectual content of a described learning resource or adaptation is communicated; if adaptations for the resource are known, the access modes of those adaptations are not included. [CEDS Element: Learning Resource Access Mode Type, ID:001391]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_learning_resource_book_format_type_id IS 'Specifies the format for a learning resource that is a book.  Other options may be considered for inclusion in the option set. [CEDS Element: Learning Resource Book Format Type, ID:001394]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_learning_resource_control_flexibility_type_id IS 'Identifies a single input method that is sufficient to control the described learning resource. [CEDS Element: Learning Resource Control Flexibility Type, ID:001395]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_learning_resource_digital_media_sub_type_id IS 'The media or file subtype of the digital resource being based on the Media Types and Subtypes, formerly known as MIME types, defined by the Internet Assigned Numbers Authority (IANA). [CEDS Element: Learning Resource Digital Media Sub Type, ID:001396]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_learning_resource_digital_media_type_id IS 'The media or file type of the digital resource being based on the media types defined by the Internet Assigned Numbers Authority (AINA) at http://www.iana.org/assignments/media-types. [CEDS Element: Learning Resource Digital Media Type, ID:001397]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.learning_resource_author_email IS 'An email address for the author of the learning resource. [CEDS Element: Learning Resource Author Email, ID:001566]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.learning_resource_author_url IS 'A Uniform Resource Locator (URL) attributed to the author of a learning resource. [CEDS Element: Learning Resource Author URL, ID:001563]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.learning_resource_date_modified IS 'The most recent date that the learning resource was updated. [CEDS Element: Learning Resource Date Modified, ID:001564]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.learning_resource_publisher_email IS 'An email address for the publisher of the learning resource. [CEDS Element: Learning Resource Publisher Email, ID:001567]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.learning_resource_publisher_url IS 'A Uniform Resource Locator (URL) attributed to the publisher of a learning resource. [CEDS Element: Learning Resource Publisher URL, ID:001568]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_learning_resource_access_rights_url_id IS 'A Uniform Resource Locator (URL) that identifies the conditions that govern the user’s ability to access a learning resource. [CEDS Element: Learning Resource Access Rights Url, ID:001561]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_learning_resource_author_type_id IS 'The type of entity, organization or person, that authored the learning resource. [CEDS Element: Learning Resource Author Type, ID:001562]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource.ref_learning_resource_interaction_mode_id IS 'The primary type of interaction, synchronous or asynchronous, defined for the learning resource. [CEDS Element: Learning Resource Interaction Mode, ID:001565]';

CREATE TABLE ceds6sc_rdx.learning_resource_education_level ( 
	learning_resource_education_level_id integer  NOT NULL,
	learning_resource_id integer  NOT NULL,
	ref_education_level_id integer  NOT NULL,
	CONSTRAINT pk_learning_resource_education_lvl PRIMARY KEY ( learning_resource_education_level_id ),
	CONSTRAINT ix_learning_resource_education_level UNIQUE ( learning_resource_id, ref_education_level_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.learning_resource_education_level IS 'The education level(s) associated to a learning resource.';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_education_level.learning_resource_education_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_education_level.learning_resource_id IS 'Foreign key - Learning_Resource';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_education_level.ref_education_level_id IS 'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). [CEDS Elements: Highest Level of Education Completed (000141),  Learning Resource Education Level (001246)]';

CREATE TABLE ceds6sc_rdx.learning_resource_peer_rating ( 
	learning_resource_peer_rating_id integer  NOT NULL,
	learning_resource_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	peer_rating_system_id integer  NOT NULL,
	value              numeric(18,4)  ,
	date               date  ,
	CONSTRAINT pk_learning_resource_peer_rating_1 PRIMARY KEY ( learning_resource_peer_rating_id )
 );

COMMENT ON TABLE ceds6sc_rdx.learning_resource_peer_rating IS 'An individual score, rating or level assigned to a Learning Resource by a person within the boundaries set by a Peer Rating System.';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_peer_rating.learning_resource_peer_rating_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_peer_rating.learning_resource_id IS 'Foreign key - Learning_Resource';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_peer_rating.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_peer_rating.peer_rating_system_id IS 'Foreign key - Peer_Rating_System';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_peer_rating.value IS 'An individual score, rating or level assigned to a Learning Resource by a person within the boundaries set by a Peer Rating System that may be aggregated to derive an overall score for the learning resource. [CEDS Element: Learning Resource Peer Rating Value, ID:001148]';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_peer_rating.date IS 'The date on which the Peer Rating was entered. [CEDS Element: Peer Rating Date, ID:001167]';

CREATE TABLE ceds6sc_rdx.learning_standard_document ( 
	learning_standard_document_id integer  NOT NULL,
	uri                  varchar(300)  ,
	title                varchar(120)  ,
	subject              varchar(30)  ,
	version            varchar(30)  ,
	creator              varchar(120)  ,
	jurisdiction         varchar(120)  ,
	description          varchar(300)  ,
	publisher            varchar(30)  ,
	ref_learning_standard_document_publication_status_id integer  ,
	valid_start_date     date  NOT NULL,
	valid_end_date       date  NOT NULL,
	ref_language_id      integer  ,
	license              varchar(300)  ,
	rights               varchar(300)  ,
	rights_holder        varchar(30)  ,
	learning_standard_document_publication_date date  ,
	CONSTRAINT pk_learning_standard_document PRIMARY KEY ( learning_standard_document_id )
 );

COMMENT ON TABLE ceds6sc_rdx.learning_standard_document IS 'A collection of learning standard items, typically arranged in a hierarchical structure or classification scheme, reflecting expectations of learner competencies within a single subject area covering one or more levels. (examples: Head Start Child Outcomes Framework, Common Core State Standards for Mathematics, Accountability Criteria for National Health Care Cluster Foundation Standards).';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.learning_standard_document_id IS 'PK';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.uri IS 'An unambiguous reference to the standards document using a network-resolvable URI. [CEDS Element: Learning Standard Document Identifier URI, ID:000693]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.title IS 'The name of the standards document. [CEDS Element: Learning Standard Document Title, ID:000694]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.subject IS 'The topic or academic subject of the Learning Standard Document. [CEDS Element: Learning Standard Document Subject, ID:000702]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.version IS 'Defines the revision of the document as a version number or date. [CEDS Element: Learning Standard Document Version, ID:000695]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.creator IS 'The person or organization chiefly responsible for the intellectual content of the standards document. [CEDS Element: Learning Standard Document Creator, ID:000696]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.jurisdiction IS 'A legal, quasi-legal, organizational or institutional domain of the entity mandating the use of the statement--e.g., California. [CEDS Element: Learning Standard Document Jurisdiction, ID:000699]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.description IS 'A textual description of the scope and contents of the Learning Standards Document. [CEDS Element: Learning Standard Document Description, ID:000697]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.publisher IS 'The entity responsible for making the learning standards document available. [CEDS Element: Learning Standard Document Publisher, ID:000884]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.ref_learning_standard_document_publication_status_id IS 'The publication status of the document. [CEDS Element: Learning Standard Document Publication Status, ID:000698]  (Foreign key - Ref_Ls_Document_Publication_Status)';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.valid_start_date IS 'The date the standards document was adopted by the jurisdiction in which it was intended to apply. [CEDS Element: Learning Standard Document Valid Start Date, ID:000700]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.valid_end_date IS 'The date the standards document was deprecated/replaced by the jurisdiction in which it was intended to apply. [CEDS Element: Learning Standard Document Valid End Date, ID:000701]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.ref_language_id IS 'The default language of the text used for the content in the learning standard document. [CEDS Element: Learning Standard Document Language, ID:000880]  (Foreign key - Ref_Language)';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.license IS 'A legal document giving official permission to do something with the standards document. [CEDS Element: Learning Standard Document License, ID:000882]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.rights IS 'The information about rights held in and over the resource. [CEDS Element: Learning Standard Document Rights, ID:000885]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.rights_holder IS 'The person or organization owning or managing rights over the learning standards document. [CEDS Element: Learning Standard Document Rights Holder, ID:000886]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_document.learning_standard_document_publication_date IS 'The date on which this content was first published. [CEDS Element: Learning Standard Document Publication Date, ID:001569]';

CREATE TABLE ceds6sc_rdx.learning_standard_item_association ( 
	learning_standard_item_association_id integer  NOT NULL,
	learning_standard_item_id integer  NOT NULL,
	ref_entity_type_id   integer  NOT NULL,
	associated_entity_id integer  NOT NULL,
	ref_learning_standard_item_association_type_id integer  ,
	learning_standard_item_association_identifier_uri varchar(300)  ,
	connection_citation  varchar(300)  ,
	origin_node_name     varchar(30)  ,
	origin_node_uri      varchar(300)  ,
	destination_node_name varchar(30)  ,
	destination_node_uri varchar(300)  ,
	weight               decimal(9,3)  ,
	CONSTRAINT pk_learning_standard_item_association PRIMARY KEY ( learning_standard_item_association_id )
 );

COMMENT ON TABLE ceds6sc_rdx.learning_standard_item_association IS 'An entity that relates learning standard items to other learning standard items to support competency maps using competency to prerequisite-competency assertions, and to relate learning standard Items to other objects such as learning resources. ';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_association.learning_standard_item_association_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_association.learning_standard_item_id IS 'Foreign key - Learning_Standard_Item.';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_association.ref_entity_type_id IS 'CEDS entities. Used when the relationship of Learning Standards data requires the associated entity to be specified.';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_association.associated_entity_id IS 'FK';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_association.ref_learning_standard_item_association_type_id IS 'Defines the nature of the association between a Learning Standard Item and an associated  data object  such as a Learning Resource, an Assessment Item, or even another Learning Standard Item. [CEDS Element: Learning Standard Item Association Type, ID:000869]  (Foreign key - Ref_Ls_Item_Association_Type)';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_association.learning_standard_item_association_identifier_uri IS 'A URI that establishes uniqueness of an association between a learning standard and another learning standard or other objects such as learning resources. [CEDS Element: Learning Standard Item Association Identifier URI, ID:000871]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_association.connection_citation IS 'Any citation appropriate to evidence the connection between nodes. [CEDS Element: Learning Standard Item Association Connection Citation, ID: 001402]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_association.origin_node_name IS 'Name of the origin node when the Learning Standard Item Association is used as a connector in a learning map. [CEDS Element: Learning Standard Item Association Origin Node Name, ID: 001405]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_association.origin_node_uri IS 'URI of the origin node when the Learning Standard Item Association is used as a connector in a learning map. [CEDS Element: Learning Standard Item Association Origin Node URI, ID: 001406]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_association.destination_node_name IS 'Name of the destination node when the Learning Standard Item Association is used as a connector in a learning map. [CEDS Element: Learning Standard Item Association Destination Node Name, ID: 001403]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_association.destination_node_uri IS 'URI of the destination node when the Learning Standard Item Association is used as a connector in a learning map. [CEDS Element: Learning Standard Item Association Destination Node URI, ID: 001404]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_association.weight IS 'Indicates the relative significance this connection has for the destination node in a learning map. [CEDS Element: Learning Standard Item Association Weight, ID: 001407]';

CREATE TABLE ceds6sc_rdx.organization ( 
	organization_id      integer  NOT NULL,
	name                 varchar(60)  ,
	ref_organization_type_id integer  ,
	short_name           varchar(30)  ,
	CONSTRAINT pk_organization PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization IS 'An entity that represents any type of organization.  It includes information common to all types of organizations.  CEDS also defines specific types of organizations such as Early Learning Organization, K12 School and Post Secondary Institution.
';

COMMENT ON COLUMN ceds6sc_rdx.organization.organization_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization.name IS 'The name or title of a non-person entity such as an organization, institution, agency, business, program or course. [CEDS Elements: Organization Name (000204), Name of Institution (000191), Program Name (000626), Responsible Organization Name (000631), Course Title (000067), Postsecondary Course Title (000068)]';

COMMENT ON COLUMN ceds6sc_rdx.organization.ref_organization_type_id IS 'The type of organization.  (Foreign key - Ref_Organization_Type)';

COMMENT ON COLUMN ceds6sc_rdx.organization.short_name IS 'The name of the organization, which may be the abbreviated form of the full legally accepted name. [CEDS Element: Short Name Of Institution, ID: 001487]';

CREATE TABLE ceds6sc_rdx.organization_calendar ( 
	organization_calendar_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	calendar_code        varchar(30)  ,
	calendar_description varchar(60)  NOT NULL,
	calendar_year        char(4)  ,
	CONSTRAINT pk_organization_calendar PRIMARY KEY ( organization_calendar_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_calendar IS 'A set of dates associated with an organization. ';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar.organization_calendar_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar.calendar_code IS 'A unique number assigned by a school district to a school calendar. [CEDS Element: Calendar Code, ID:000494]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar.calendar_description IS 'A description or identification of the calendar. [CEDS Element: Calendar Description, ID:000495]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar.calendar_year IS 'The school or program year for the calendar.  [CEDS Elements:  School Year (000243), Early Learning Program Year (000864)]';

CREATE TABLE ceds6sc_rdx.organization_calendar_day ( 
	organization_calendar_day_id integer  NOT NULL,
	organization_calendar_id integer  NOT NULL,
	day_name             varchar(30)  NOT NULL,
	alternate_day_name   varchar(30)  ,
	CONSTRAINT pk_organization_calendar_day PRIMARY KEY ( organization_calendar_day_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_calendar_day IS 'A calendar day as described by the organization.  Used for the school day, typically used for the bell schedule.';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_day.organization_calendar_day_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_day.organization_calendar_id IS 'Foreign key - Orgainzation_Calendar';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_day.day_name IS 'An name used for the school day, typically used for the bell schedule.';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_day.alternate_day_name IS 'An alternate name used for the school day, typically used for the bell schedule (e.g., Blue day, Red day). [CEDS Element: Alternate Day Name, ID:000598]';

CREATE TABLE ceds6sc_rdx.organization_calendar_session ( 
	organization_calendar_session_id integer  NOT NULL,
	designator           varchar(7)  ,
	begin_date           date  ,
	end_date             date  ,
	ref_session_type_id  integer  ,
	instructional_minutes numeric(18,0)  ,
	code                 varchar(30)  ,
	description          text  ,
	marking_term_indicator bool  ,
	scheduling_term_indicator bool  ,
	attendance_term_indicator bool  ,
	organization_calendar_id integer  ,
	days_in_session      integer  ,
	first_instruction_date date  ,
	last_instruction_date date  ,
	minutes_per_day      integer  ,
	session_start_time   time  ,
	session_end_time     time  ,
	CONSTRAINT pk_organization_calendar_session PRIMARY KEY ( organization_calendar_session_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_calendar_session IS 'A prescribed span of time when an education institution is open, instruction is provided, and students are under the direction and guidance of teachers and/or education institution administration.';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.organization_calendar_session_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.designator IS 'The academic session for which the data are recorded and applicable. [CEDS Element: Session Designator, ID:000252]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.begin_date IS 'The date on which a session begins. [CEDS Elements: Session Begin Date (000251), Course Begin Date (000054), Course Add Date (001300)]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.end_date IS 'The date on which a session ends. [CEDS Elements: Session End Date (000253), Course End Date (000059)]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.ref_session_type_id IS 'A prescribed span of time when an education institution is open, instruction is provided, and students are under the direction and guidance of teachers and/or education institution administration. A session may be interrupted by one or more vacations. [CEDS Element: Session Type, ID:000254]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.instructional_minutes IS 'The total number of instruction minutes in a given session, as determined by time in class, time on task (e.g., engaged in a class), or as estimated by a qualified course designer. [CEDS Element: Instructional Minutes, ID:000499]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.code IS 'A local code given to the session, usually for a session that represents a term within the school year such as a marking term. [CEDS Element: Session Code, ID:001270]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.description IS 'A short description of the Session. [CEDS Element: Session Description, ID:001271]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.marking_term_indicator IS 'Indicates that the session is a marking term. [CEDS Element: Session Marking Term Indicator, ID:001272]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.scheduling_term_indicator IS 'Indicates that the session is a scheduling term. [CEDS Element: Session Scheduling Term Indicator, ID:001273]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.attendance_term_indicator IS 'Initicates that the session is a an attendance term. [CEDS Element: Session Attendance Term Indicator, ID:001274]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.organization_calendar_id IS 'Surrogate key from Organization_Calendar.';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.days_in_session IS 'The total number of days that the school was or is anticipated to be in session during the school year. Also included are days on which the education institution facility is closed and the student body as a whole is engaged in planned activities off-campus under the guidance and direction of staff members. [CEDS Element: Days In Session, ID:000496]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.first_instruction_date IS 'The date of the first day of student instruction for the school year. [CEDS Element: First Instruction Date, ID:000497]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.last_instruction_date IS 'The last day of student instruction (including days or times that students are present for purposes of testing and/or evaluation, but not including whole or part-days whose sole purposes is for distribution of report cards). [CEDS Element: Last Instruction Date, ID:000498]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.minutes_per_day IS 'The number of minutes in the day in which the school is normally in session. [CEDS Element: Minutes Per Day, ID:000500]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.session_start_time IS 'Time at which the organization begins the session. [CEDS Element: Session Start Time, ID:000985]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_session.session_end_time IS 'Time at which the organization concludes the session [CEDS Element: Session End Time, ID:000986]';

CREATE TABLE ceds6sc_rdx.organization_federal_accountability ( 
	organization_federal_accountability_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_ayp_status_id    integer  ,
	alternate_ayp_approach_indicator bool  ,
	ayp_appeal_changed_designation bool  ,
	ayp_appeal_process_date date  ,
	ayp_appeal_process_designation bool  ,
	amao_ayp_progress_attainment_lep_students integer  ,
	amao_proficiency_attainment_lep_students integer  ,
	amao_progress_attainment_lep_students integer  ,
	ref_gun_free_schools_act_status_reporting_id integer  ,
	ref_high_school_graduation_rate_indicator integer  ,
	ref_participation_status_math_id integer  ,
	ref_participation_status_rla_id integer  ,
	ref_proficiency_target_status_math_id integer  ,
	ref_proficiency_target_status_rlaid integer  ,
	persistently_dangerous_status bool  ,
	ref_reconstituted_status_id integer  ,
	ref_elementary_middle_additional_id integer  ,
	accountability_report_title varchar(80)  ,
	ref_cte_graduation_rate_inclusion_id integer  ,
	CONSTRAINT pk_organization_federal_accountability PRIMARY KEY ( organization_federal_accountability_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_federal_accountability IS 'Information on the status of the organization on various federal accountability measures.';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.organization_federal_accountability_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.organization_id IS 'Surrogate key from Organization.';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.ref_ayp_status_id IS 'An indication of whether the state, district, or school met the Adequate Yearly Progress (AYP) requirements for the school year, as determined by the state-established criteria. [CEDS Element: Adequate Yearly Progress Status, ID:000011]  (Foreign key - Ref_Ayp_Status)';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.alternate_ayp_approach_indicator IS 'An indication of whether the district or school used an approved alternate approach for calculating Adequate Yearly Progress (AYP). [CEDS Element: Alternate Adequate Yearly Progress Approach Indicator, ID:000014]';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.ayp_appeal_changed_designation IS 'An indication that the appeal resulted in a change in a school or district''s AYP designation. [CEDS Element: Adequate Yearly Progress Appeal Changed Designation, ID:000443]';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.ayp_appeal_process_date IS 'The last date that an appeal of an AYP designation was processed. [CEDS Element: Adequate Yearly Progress Appeal Process Date, ID:000444]';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.ayp_appeal_process_designation IS 'An indication that the appeal resulted in a change in a school or district''s AYP designation. [CEDS Element: Adequate Yearly Progress Appeal Changed Designation, ID:000443]';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.amao_ayp_progress_attainment_lep_students IS 'An indication of whether the state or district met the annual measurable objectives for the Limited English Proficient (LEP) student subgroup in mathematics and reading/language arts. [CEDS Element: Annual Measurable Achievement Objective AYP Progress Attainment Status for LEP Students, ID:000579]';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.amao_proficiency_attainment_lep_students IS 'An indication whether the state, district or school met the Annual Measurable Achievement Objectives (AMAO) for attaining English proficiency for limited English proficient (LEP) students under Title III of ESEA. [CEDS Element: Annual Measurable Achievement Objective Proficiency Attainment Status for LEP Students, ID:000544]';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.amao_progress_attainment_lep_students IS 'An indication whether the state, district, or school met the Annual Measurable Achievement Objective (AMAO) for making progress in learning English for limited English proficient (LEP) students under Title III of ESEA as amended. [CEDS Element: Annual Measurable Achievement Objective Progress Attainment Status for LEP Students, ID:000554]';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.ref_gun_free_schools_act_status_reporting_id IS 'An indication of whether the school or local education agency (LEA) submitted a Gun-Free Schools Act (GFSA) of 1994 report to the state, as defined by Title 18, Section 921. [CEDS Element: Gun Free Schools Act Reporting Status, ID:000134]  (Foreign key - Ref_Gun_Free_Schools_Act_Status_Reporting)';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.ref_high_school_graduation_rate_indicator IS 'An indication of whether the school or district met the High School Graduation Rate requirement in accordance with state definition for the purposes of determining AYP. [CEDS Element: High School Graduation Rate Indicator Status, ID:000140]  (Foreign key - Ref_HSGraduation_Rate_Indicator)';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.ref_participation_status_math_id IS 'An indication of whether the school or district met the 95 percent participation requirement in the mathematics assessment in accordance with state definition for the purposes of determining AYP. [CEDS Element: Participation Status for Math, ID:000208]  (Foreign key - Ref_Participation_Status_Ayp)';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.ref_participation_status_rla_id IS 'An indication of whether the school or district met the 95 percent participation requirement on the reading/language arts assessment in accordance with state definition for the purposes of determining AYP. [CEDS Element: Participation Status for Reading and Language Arts, ID:000209]  (Foreign key - Ref_Participation_Status_Ayp)';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.ref_proficiency_target_status_math_id IS 'An indication of whether the school or district met the math proficiency target in accordance with state definition for the purposes of determining AYP. [CEDS Element: Proficiency Target Status for Math, ID:000221]  (Foreign key - Ref_Participation_Target_Ayp)';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.ref_proficiency_target_status_rlaid IS 'An indication of whether the school or district met the reading/language arts proficiency target in accordance with state definition for the purposes of determining AYP. [CEDS Element: Proficiency Target Status for Reading and Language Arts, ID:000553] (Foreign key - Ref_Participation_Target_Ayp)';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.persistently_dangerous_status IS 'An indication of whether the school is identified as persistently dangerous in accordance with state definition. [CEDS Element: Persistently Dangerous Status, ID:000210]';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.ref_reconstituted_status_id IS 'An indication that the school was restructured, transformed or otherwise changed as a consequence of the state’s accountability system under ESEA or as a result of School Improvement Grants (SIG). [CEDS Element: Reconstituted Status, ID:000230]  (Foreign key - Ref_Reconstituted_Status)';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.ref_elementary_middle_additional_id IS 'An indication of whether the school or district met the Elementary/Middle Additional Indicator requirement in accordance with state definition for the purpose of determining Adequate Yearly Progress (AYP). [CEDS Element: Elementary-Middle Additional Indicator Status, ID:000091]  (Foreign key - Ref_Elementary_Middle_Additional)';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.accountability_report_title IS 'The title of the accountability report. [CEDS Element: Accountability Report Title, ID:000005]';

COMMENT ON COLUMN ceds6sc_rdx.organization_federal_accountability.ref_cte_graduation_rate_inclusion_id IS 'An indication of how CTE concentrators are included in the state''s computation of its graduation rate. [CEDS Element: Career and Technical Education Graduation Rate Inclusion, ID:000075]  (Foreign key - Ref_Cte_Graduation_Rate_Inclusion)';

CREATE TABLE ceds6sc_rdx.organization_identifier ( 
	organization_identifier_id integer  NOT NULL,
	identifier           varchar(40)  ,
	ref_organization_identification_system_id integer  ,
	organization_id      integer  NOT NULL,
	ref_organization_identifier_type_id integer  ,
	CONSTRAINT pk_organization_identifier PRIMARY KEY ( organization_identifier_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_identifier IS ' A unique number or alphanumeric code assigned to an organization by a school, school system, a state, or other agency or entity.';

COMMENT ON COLUMN ceds6sc_rdx.organization_identifier.organization_identifier_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_identifier.identifier IS 'A unique number or alphanumeric code assigned to an organization by a school, school system, a state, or other agency or entity. [CEDS Elements: Organization Identifier (000826), Course Section Identifier (000978), Course Identifier (000055), Adult Education Service Provider Identifier (001076), Program Identifier (000625), Local Education Agency Identifier (001068), School Identifier (001069), Classroom Identifier (000364), State Agency Identifier (001490), Responsible Organization Identifier (001466), Course Section Number (001315)]';

COMMENT ON COLUMN ceds6sc_rdx.organization_identifier.ref_organization_identification_system_id IS 'A coding scheme that is used for identification and record-keeping purposes by an organization.  [Organization Identification System (000827), Adult Education Service Provider Identification System (000781), Agency Course Identifier (001280), Course Code System (000056), Federal School Code (000111), Institution IPEDS Unit_ID (000166), Local Education Agency Identification System (001072), Local Education Agency Supervisory Union Identification Number (000175), Office of Postsecondary Education Identifier (000203), School Identification System (001073), State Agency Identification System (001491), Course Section Number (001315), Activity Identifier (000006), Course Identifier (000055), Program Identifier (000625), Course Section Identifier (000978)]';

COMMENT ON COLUMN ceds6sc_rdx.organization_identifier.organization_id IS 'Foreign key - Organization.';

COMMENT ON COLUMN ceds6sc_rdx.organization_identifier.ref_organization_identifier_type_id IS 'The CEDS organization identifier or identification system element that the Identifier column represents [List of CEDS Elements: Organization Identification System (000827), Adult Education Service Provider Identification System (000781), Agency Course Identifier (001280), Course Code System (000056), Federal School Code (000111), Institution IPEDS Unit_ID (000166), Local Education Agency Identification System (001072), Local Education Agency Supervisory Union Identification Number (000175), Office of Postsecondary Education Identifier (000203), School Identification System (001073), State Agency Identification System (001491), Course Section Number (001315), Activity Identifier (000006), Course Identifier (000055), Program Identifier (000625), Course Section Identifier (000978)]';

CREATE TABLE ceds6sc_rdx.organization_location ( 
	organization_location_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	location_id          integer  NOT NULL,
	ref_organization_location_type_id integer  ,
	CONSTRAINT pk_organization_location PRIMARY KEY ( organization_location_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_location IS 'An association of a Location to an Organization.';

COMMENT ON COLUMN ceds6sc_rdx.organization_location.organization_location_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_location.organization_id IS 'Foreign key - Organization.';

COMMENT ON COLUMN ceds6sc_rdx.organization_location.location_id IS 'Foreign key - Location.';

COMMENT ON COLUMN ceds6sc_rdx.organization_location.ref_organization_location_type_id IS 'The type of address listed for an organization. [CEDS Element: Address Type for Organization, ID:001066]  (Foreign key - Ref_Organization_Location_Type)';

CREATE TABLE ceds6sc_rdx.organization_person_role ( 
	organization_person_role_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	person_id            integer  NOT NULL,
	role_id              integer  NOT NULL,
	entry_date           date  ,
	exit_date            date  ,
	CONSTRAINT pk_organization_person_role PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_person_role IS 'The association of an organization (e.g. school, section, employer) to a person with the role (e.g. student, staff).';

COMMENT ON COLUMN ceds6sc_rdx.organization_person_role.organization_person_role_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_person_role.organization_id IS 'Surrogate key from Organization.';

COMMENT ON COLUMN ceds6sc_rdx.organization_person_role.person_id IS 'Surrogate key from Person';

COMMENT ON COLUMN ceds6sc_rdx.organization_person_role.role_id IS 'Surrogate key from Role.  The name of the role, e.g. Student, Staff, Employee';

COMMENT ON COLUMN ceds6sc_rdx.organization_person_role.entry_date IS 'The date associated with the commencement/entry/start of a role for a person at an organization.  [CEDS Elements: Activity Involvement Begin Date (000007), Enrollment Entry Date (000097), Service Entry Date (000326), Employment Start Date (000346), Program Participation Start Date (000590), Teaching Assignment Start Date (000645), Staff Education Entry Date (000793), Course Section Enrollment Status Start Date (000974), Workforce Program Participation Start Date (000998), Course Add Date (001300)]';

COMMENT ON COLUMN ceds6sc_rdx.organization_person_role.exit_date IS 'The date associated with the termination/exit/end of a role for a person at an organization.  [CEDS Elements: Activity Involvement End Date (000008), Course End Date (000059), Enrollment Exit Date (000107), Service Exit Date (000327), Assignment End Date (000527), Program Participation Exit Date (000591), Teaching Assignment End Date (000646), Employment End Date (000795), Workforce Program Participation End Date (000999), Course Drop Date (001305)]';

CREATE TABLE ceds6sc_rdx.organization_program_type ( 
	organization_program_type_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_program_type_id  integer  NOT NULL,
	CONSTRAINT pk_organization_program_type PRIMARY KEY ( organization_program_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_program_type IS 'The instructional or non-instructional programs, activities and procedures designed to accomplish a predetermined educational objective or set of objectives or to provide support services to person and/or the community.';

COMMENT ON COLUMN ceds6sc_rdx.organization_program_type.organization_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_program_type.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.organization_program_type.ref_program_type_id IS 'The system outlining instructional or non-instructional activities and procedures designed to accomplish a predetermined educational objective or set of objectives or to provide support services to a person and/or the community. [CEDS Elements: Program Type (000225)]';

CREATE TABLE ceds6sc_rdx.organization_technical_assistance ( 
	organization_technical_assistance_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_technical_assistance_type_id integer  ,
	ref_technical_assistance_delivery_type_id integer  ,
	technical_assistance_approved_ind bool  ,
	CONSTRAINT pk_organization_technical_assistance PRIMARY KEY ( organization_technical_assistance_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.organization_technical_assistance.organization_technical_assistance_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.organization_technical_assistance.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN ceds6sc_rdx.organization_technical_assistance.ref_technical_assistance_type_id IS 'They type of technical assistance provided [CEDS Element: Technical Assistance Type, ID:001495]';

COMMENT ON COLUMN ceds6sc_rdx.organization_technical_assistance.ref_technical_assistance_delivery_type_id IS 'The method of delivery of technical assistance received/provided [CEDS Element: Technical Assistance Delivery Type, ID:001494]';

COMMENT ON COLUMN ceds6sc_rdx.organization_technical_assistance.technical_assistance_approved_ind IS 'Indicates whether or not the technical assistance was approved. [CEDS Element: Technical Assistance Approved Indicator, ID: 001493]';

CREATE TABLE ceds6sc_rdx.organization_website ( 
	organization_id      integer  NOT NULL,
	website              varchar(300)  ,
	CONSTRAINT pk_organization_website PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_website IS 'The website URL for an organization.';

COMMENT ON COLUMN ceds6sc_rdx.organization_website.organization_id IS 'Inherited surrogate key from Location';

COMMENT ON COLUMN ceds6sc_rdx.organization_website.website IS 'The Uniform Resource Locator (URL) for the unique address of a Web page. [CEDS Element: Web Site Address, ID:000704]';

CREATE TABLE ceds6sc_rdx.person ( 
	person_id            integer  NOT NULL,
	first_name           varchar(35)  ,
	middle_name          varchar(35)  ,
	last_name            varchar(35)  NOT NULL,
	generation_code      varchar(10)  ,
	prefix             varchar(30)  ,
	birthdate            date  ,
	ref_sex_id           integer  ,
	hispanic_latino_ethnicity bool  ,
	ref_us_citizenship_status_id integer  ,
	ref_visa_type_id     integer  ,
	ref_state_of_residence_id integer  ,
	ref_proof_of_residency_type_id integer  ,
	ref_highest_education_level_completed_id integer  ,
	ref_personal_information_verification_id integer  ,
	birthdate_verification varchar(60)  ,
	ref_tribal_affiliation_id integer  ,
	CONSTRAINT xpk_person PRIMARY KEY ( person_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person IS 'A person, including Students, Staff and Parents.';

COMMENT ON COLUMN ceds6sc_rdx.person.person_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.person.first_name IS 'The full legal first name given to a person at birth, baptism, or through legal change.  [CEDS Element: First Name, ID: 000115]';

COMMENT ON COLUMN ceds6sc_rdx.person.middle_name IS 'A full legal middle name given to a person at birth, baptism, or through legal change. [CEDS Element: Middle Name, ID: 000184]';

COMMENT ON COLUMN ceds6sc_rdx.person.last_name IS 'The full legal last name borne in common by members of a family.  [CEDS Element: Last or Surname, ID: 000172]';

COMMENT ON COLUMN ceds6sc_rdx.person.generation_code IS 'An appendage, if any, used to denote a person''s generation in his family (e.g., Jr., Sr., III). [CEDS Element: Generation Code or Suffix, ID: 000121]';

COMMENT ON COLUMN ceds6sc_rdx.person.prefix IS 'An appellation, if any, used to denote rank, placement, or status (e.g., Mr., Ms., Reverend, Sister, Dr., Colonel). [CEDS Element: Personal Title or Prefix, ID:000212]';

COMMENT ON COLUMN ceds6sc_rdx.person.birthdate IS 'The date on which a person was born. [CEDS Element: Birthdate, ID:000033]';

COMMENT ON COLUMN ceds6sc_rdx.person.ref_sex_id IS 'The concept describing the biological traits that distinguish the males and females of a species. [CEDS Element: Sex, ID:000255]  (Foreign key - Ref_Sex)';

COMMENT ON COLUMN ceds6sc_rdx.person.hispanic_latino_ethnicity IS 'An indication that the person traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central and South America, and other Spanish cultures, regardless of race. [CEDS Element: Hispanic or Latino Ethnicity, ID:000144]';

COMMENT ON COLUMN ceds6sc_rdx.person.ref_us_citizenship_status_id IS 'An indicator of whether or not the person is a US citizen. [CEDS Element: United States Citizenship Status, ID:000299]';

COMMENT ON COLUMN ceds6sc_rdx.person.ref_visa_type_id IS 'An indicator of a non-US citizen''s Visa type. [CEDS Element: Visa Type, ID:000196]';

COMMENT ON COLUMN ceds6sc_rdx.person.ref_state_of_residence_id IS 'An person''s permanent address as determined by such evidence as a driver''s license or voter registration. For entering freshmen, state of residence may be the legal state of residence of a parent or guardian. [CEDS Element: State of Residence, ID:000268]  (Foreign key - Ref_USState_Abbreviation)';

COMMENT ON COLUMN ceds6sc_rdx.person.ref_proof_of_residency_type_id IS 'An accepted form of proof of residency in the district/county/other locality. [CEDS Element: Proof of Residency Type, ID:000305]';

COMMENT ON COLUMN ceds6sc_rdx.person.ref_highest_education_level_completed_id IS 'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). [CEDS Element: Highest Level of Education Completed, ID:000141]  (Foreign key - Ref_Education_Level)';

COMMENT ON COLUMN ceds6sc_rdx.person.ref_personal_information_verification_id IS 'The evidence by which a persons name, address, date of birth, etc. is confirmed. [CEDS Element: Personal Information Verification, ID:000618]  (Foreign key - Ref_Personal_Information_Verification)';

COMMENT ON COLUMN ceds6sc_rdx.person.birthdate_verification IS 'The evidence by which a child''s date of birth is confirmed. [CEDS Element: Birthdate Verification, ID:000428]';

COMMENT ON COLUMN ceds6sc_rdx.person.ref_tribal_affiliation_id IS 'The Native American tribal entity recognized and eligible to receive services from the United States Bureau of Indian Affairs to which a person is affiliated. [CEDS Element: Tribal Affiliation, ID:001657]';

CREATE TABLE ceds6sc_rdx.person_allergy ( 
	person_allergy_id    integer  NOT NULL,
	person_id            integer  NOT NULL,
	ref_allergy_type_id  integer  NOT NULL,
	ref_allergy_severity_id integer  ,
	reaction_description varchar(2000)  ,
	CONSTRAINT pk_person_allergy PRIMARY KEY ( person_allergy_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.person_allergy.person_allergy_id IS 'Surrogate key.';

COMMENT ON COLUMN ceds6sc_rdx.person_allergy.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_allergy.ref_allergy_type_id IS 'Type of allergy condition attributed to a person as defined by the SNOWMED Clinical Terms(r) vocabulary. [CEDS Element: Allergy Type, ID:001283]';

COMMENT ON COLUMN ceds6sc_rdx.person_allergy.ref_allergy_severity_id IS 'The level of severity of a person''s reaction to an allergen. [CEDS Element: Allergy Severity, ID:001282]';

COMMENT ON COLUMN ceds6sc_rdx.person_allergy.reaction_description IS 'Describes symptoms know to be associated with a person''s reaction to an allergen. [CEDS Element: Allergy Reaction Description, ID:001281]';

CREATE TABLE ceds6sc_rdx.person_birthplace ( 
	person_id            integer  NOT NULL,
	city                 varchar(30)  ,
	ref_state_id         integer  ,
	ref_country_id       integer  ,
	CONSTRAINT xpk_person_birthplace PRIMARY KEY ( person_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_birthplace IS 'The city, state, and country where a person was born.';

COMMENT ON COLUMN ceds6sc_rdx.person_birthplace.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_birthplace.city IS 'The name of the city in which a person was born. [CEDS Element: City of Birth, ID:000426]';

COMMENT ON COLUMN ceds6sc_rdx.person_birthplace.ref_state_id IS 'The state in which a person was born. [CEDS Element: State of Birth Abbreviation, ID:000427]  (Foreign key - Ref_State)';

COMMENT ON COLUMN ceds6sc_rdx.person_birthplace.ref_country_id IS 'The country in which a person is born. [CEDS Element: Country of Birth Code, ID:000051]  (Foreign key - Ref_Country)';

CREATE TABLE ceds6sc_rdx.person_credential ( 
	person_credential_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	credential_name      varchar(60)  ,
	ref_credential_type_id integer  ,
	issuance_date        date  ,
	expiration_date      date  ,
	ref_issuing_state_id integer  ,
	professional_certificate_or_license_number varchar(30)  ,
	credential_or_license_award_entity varchar(60)  ,
	CONSTRAINT pk_person_credential PRIMARY KEY ( person_credential_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_credential IS 'The credential awarded to a person.';

COMMENT ON COLUMN ceds6sc_rdx.person_credential.person_credential_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.person_credential.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_credential.credential_name IS 'The name of the license/credential awarded by a given profession. [CEDS Element: Name of Professional Credential or License, ID:001058]';

COMMENT ON COLUMN ceds6sc_rdx.person_credential.ref_credential_type_id IS 'An indication of the category of credential a person holds. [CEDS Element: Credential Type, ID:000071]  (Foreign key - Ref_Credential_Type)';

COMMENT ON COLUMN ceds6sc_rdx.person_credential.issuance_date IS 'The date on which an active credential was issued to a person. [CEDS Element: Credential Issuance Date, ID:000070]';

COMMENT ON COLUMN ceds6sc_rdx.person_credential.expiration_date IS 'The date on which an active credential held by a person will expire. [CEDS Element: Credential Expiration Date, ID:000069]';

COMMENT ON COLUMN ceds6sc_rdx.person_credential.ref_issuing_state_id IS 'State where the professional license/credential was issued. [CEDS Element: State Issuing Professional Credential or License, ID:000805]  (Foreign key - Ref_State_Id)';

COMMENT ON COLUMN ceds6sc_rdx.person_credential.professional_certificate_or_license_number IS 'The number issued by the credentialing/licensing agency. [CEDS Element: Professional Certificate or License Number, ID: 001429]';

COMMENT ON COLUMN ceds6sc_rdx.person_credential.credential_or_license_award_entity IS 'The name of the organization awarding the individual''s credential or license. [CEDS Element: Credential or License Award Entity, ID:001587]';

CREATE TABLE ceds6sc_rdx.person_demographic_race ( 
	person_demographic_race_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	ref_race_id          integer  NOT NULL,
	CONSTRAINT xpk_demographic_race PRIMARY KEY ( person_demographic_race_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_demographic_race IS 'The associations of a person to a race.  Multiple associations are allowed.';

COMMENT ON COLUMN ceds6sc_rdx.person_demographic_race.person_demographic_race_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.person_demographic_race.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_demographic_race.ref_race_id IS 'Foreign key - Ref_Race.';

CREATE TABLE ceds6sc_rdx.person_email_address ( 
	person_email_address_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	email_address        varchar(128)  ,
	ref_email_type_id    integer  ,
	CONSTRAINT pk_person_email_address PRIMARY KEY ( person_email_address_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_email_address IS 'The electronic mail (e-mail) address for a person.  ';

COMMENT ON COLUMN ceds6sc_rdx.person_email_address.person_email_address_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.person_email_address.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_email_address.email_address IS 'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the person or organization belongs. [CEDS Element: Electronic Mail Address, ID:000088]';

COMMENT ON COLUMN ceds6sc_rdx.person_email_address.ref_email_type_id IS 'The type of electronic mail (e-mail) address listed for a person or organization. [CEDS Element: Electronic Mail Address Type, ID:000089]  (Foreign key - Ref_Email_Type)';

CREATE TABLE ceds6sc_rdx.person_health ( 
	person_health_id     integer  NOT NULL,
	person_id            integer  NOT NULL,
	vision_screening_date date  ,
	ref_vision_screening_status_id integer  ,
	hearing_screening_date date  ,
	ref_hearing_screening_status_id integer  ,
	dental_screening_date date  NOT NULL,
	ref_dental_screening_status_id integer  ,
	ref_health_insurance_coverage_id integer  ,
	ref_dental_insurance_coverage_type_id integer  ,
	ref_medical_alert_indicator_id integer  ,
	health_screening_equipment_used varchar(300)  ,
	health_screening_follow_up_recommendation text  ,
	CONSTRAINT xpk_person_health PRIMARY KEY ( person_health_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_health IS 'Data points of a person''s health';

COMMENT ON COLUMN ceds6sc_rdx.person_health.person_health_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.person_health.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN ceds6sc_rdx.person_health.vision_screening_date IS 'The date of a vision screening. [CEDS Element: Vision Screening Date, ID:000703]';

COMMENT ON COLUMN ceds6sc_rdx.person_health.ref_vision_screening_status_id IS 'Status of an examination used to measure a person''s ability to see. [CEDS Element: Vision Screening Status, ID:000308]  (Foreign key - Ref_Vision_Screening_Status)';

COMMENT ON COLUMN ceds6sc_rdx.person_health.hearing_screening_date IS 'The date of a hearing screening. [CEDS Element: Hearing Screening Date, ID:000705]';

COMMENT ON COLUMN ceds6sc_rdx.person_health.ref_hearing_screening_status_id IS 'Status of an examination used to measure a person''s ability to perceive sounds. [CEDS Element: Hearing Screening Status, ID:000309]  (Foreign key - Ref_Hearing_Screening_Status)';

COMMENT ON COLUMN ceds6sc_rdx.person_health.dental_screening_date IS 'The date of a dental screening [CEDS Element: Dental Screening Date, ID:000706]';

COMMENT ON COLUMN ceds6sc_rdx.person_health.ref_dental_screening_status_id IS 'The condition of a person''s mouth or oral cavity; more specifically the condition of the hard tissues (i.e., teeth and jaws) and the soft tissues (i.e., gums, tongue, lips, palate, mouth floor, and inner cheeks). Good oral health denotes the absence of clinically manifested disease or abnormalities of the oral cavity. [CEDS Element: Dental Screening Status, ID:000310]  (Foreign key - Ref_Dental_Screening_Status)';

COMMENT ON COLUMN ceds6sc_rdx.person_health.ref_health_insurance_coverage_id IS 'The nature of insurance covering an person''s hospitalization and other health or medical care. [CEDS Element: Insurance Coverage, ID:000335]  (Foreign key - Ref_Insurance_Type)';

COMMENT ON COLUMN ceds6sc_rdx.person_health.ref_dental_insurance_coverage_type_id IS 'The source of insurance covering an person''s dental care. [CEDS Element: Dental Insurance Coverage, ID:000336]';

COMMENT ON COLUMN ceds6sc_rdx.person_health.ref_medical_alert_indicator_id IS 'Alert indicator for a medical/health condition. [CEDS Element: Medical Alert Indicator, ID:000439]  (Foreign key - Ref_Medical_Alert_Indicator)';

COMMENT ON COLUMN ceds6sc_rdx.person_health.health_screening_equipment_used IS 'The screening equipment used for the hearing screening or the method used for the vision screening. [CEDS Element: Health Screening Equipment Used, ID: 001358]';

COMMENT ON COLUMN ceds6sc_rdx.person_health.health_screening_follow_up_recommendation IS 'Recommended frequency for screener or for specific child- add something to assessment design or administration. [CEDS Element: Health Screening Follow-up Recommendation, ID: 001359]';

CREATE TABLE ceds6sc_rdx.person_homelessness ( 
	person_id            integer  NOT NULL,
	homelessness_status  bool  NOT NULL,
	ref_homeless_nighttime_residence_id integer  NOT NULL,
	CONSTRAINT pk_homeless_primary_nighttime_residence PRIMARY KEY ( person_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_homelessness IS 'Persons who lack a fixed, regular, and adequate nighttime residence.';

COMMENT ON COLUMN ceds6sc_rdx.person_homelessness.person_id IS 'Inherited surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_homelessness.homelessness_status IS 'Persons who lack a fixed, regular, and adequate nighttime residence. Homeless children and youth include: 1) children and youth who are sharing the housing of other persons due to loss of housing, economic hardship, or a similar reason; are living in motels, hotels, trailer parks, or camping grounds due to the lack of alternative adequate accommodations; are living in emergency or transitional shelters; are abandoned in hospitals; or are awaiting foster care placemen; 2) children and youth who have a primary nighttime residence that is a public or private place not designed for or originally used as a regular sleeping accommodation for human beings; or 3) children and youths who are living in cars, parks, public spaces, abandoned buildings, substandard housing, bus or train stations, or similar settings. 4) migratory children who qualify as homeless because the children are living in circumstances described in the above. (See Section 103 of the Mc_Kinney Act for a more detailed description of this data element). [CEDS Element: Homelessness Status, ID:000149]';

COMMENT ON COLUMN ceds6sc_rdx.person_homelessness.ref_homeless_nighttime_residence_id IS 'The primary nighttime residence of the students at the time the students are identified as homeless. [CEDS Element: Homeless Primary Nighttime Residence, ID:000146]  (Foreign key - Ref_Homeless_Nighttime_Residence)';

CREATE TABLE ceds6sc_rdx.person_immunization ( 
	person_immunization_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	immunization_date    date  NOT NULL,
	ref_immunization_type_id integer  NOT NULL,
	CONSTRAINT pk_person_immunization PRIMARY KEY ( person_immunization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_immunization IS 'The immunizations that a person has satisfactorily received.';

COMMENT ON COLUMN ceds6sc_rdx.person_immunization.person_immunization_id IS 'PK';

COMMENT ON COLUMN ceds6sc_rdx.person_immunization.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_immunization.immunization_date IS 'The date of an immunization. [CEDS Element: Immunization Date, ID:000306]';

COMMENT ON COLUMN ceds6sc_rdx.person_immunization.ref_immunization_type_id IS 'An indication of the type of immunization that an individual has satisfactorily received. (Note: The International Classification of Diseases (ICD) is maintained by the World Health Organization. The ICD is revised periodically to incorporate changes in the medical field, the most updated and detailed list of International Statistical Classification of Diseases and Related Health Problems can be found at http://www.who.int/classifications/apps/icd/icd10online). [CEDS Element: Immunization Type, ID:001248]  (Foreign key - Ref_Immunization_Type)';

CREATE TABLE ceds6sc_rdx.person_military ( 
	person_id            integer  NOT NULL,
	ref_military_active_student_indicator_id integer  ,
	ref_military_connected_student_indicator_id integer  ,
	ref_military_veteran_student_indicator_id integer  ,
	ref_military_branch_id integer  ,
	CONSTRAINT pk_person_military PRIMARY KEY ( person_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.person_military.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_military.ref_military_active_student_indicator_id IS 'An indication that the student is currently serving on Active Duty, in the National Guard, or in the Reserve components of the United States military services [CEDS Element: Military Active Student Indicator, ID:001577]';

COMMENT ON COLUMN ceds6sc_rdx.person_military.ref_military_connected_student_indicator_id IS 'An indication that the student’s parent or guardian is on Active Duty, in the National Guard, or in the Reserve components of the United States military services [CEDS Element: Military Connected Student Indicator, ID:001576]';

COMMENT ON COLUMN ceds6sc_rdx.person_military.ref_military_veteran_student_indicator_id IS 'An indication that the student is a veteran who served on Active Duty, in the National Guard, or in the Reserve components of the United States military services [CEDS Element: Military Veteran Student Indicator, ID:001578]';

COMMENT ON COLUMN ceds6sc_rdx.person_military.ref_military_branch_id IS 'A branch of the U.S. Military applicable for specifying more details when using Military Connected Student Indicator, Military Active Student Indicator,  Military Veteran Student Indicator, and Military Enlistment After Exit elements. [CEDS Element: Military Branch, ID:001640]';

CREATE TABLE ceds6sc_rdx.person_program_participation ( 
	organization_person_role_id integer  NOT NULL,
	ref_participation_type_id integer  ,
	ref_program_exit_reason_id integer  ,
	CONSTRAINT pk_person_program_participation_1 PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_program_participation IS 'Identifies the type of participation for a person participating in a program.';

COMMENT ON COLUMN ceds6sc_rdx.person_program_participation.organization_person_role_id IS 'Surrogate Key from Organization Person Role.  Identifies the Person and the Program with effective dates.';

COMMENT ON COLUMN ceds6sc_rdx.person_program_participation.ref_participation_type_id IS 'Status types for a person''s participation in the program where the possible condition is either Yes (True) or No (False). [CEDS Elements: GED Preparation Program Participation Status (000120), Homeless Serviced Indicator (000147), Migrant Education Program Participation Status (000185), Section 504 Status (000249), Title III Immigrant Participation Status (000290), Title I Schoolwide Program Participation (000550), Title I Targeted Assistance Participation (000551), Title III Limited English Proficient Participation Status (000565), Kindergarten Program Participation Type (000714), Career Pathways Program Participation Indicator (001291), Correctional Education Reentry Services Participation Indicator (001297)]';

COMMENT ON COLUMN ceds6sc_rdx.person_program_participation.ref_program_exit_reason_id IS 'The documented or assumed reason a student is no longer being served by a special program. [CEDS Element: Exit Reason, ID:000222]';

CREATE TABLE ceds6sc_rdx.person_relationship ( 
	person_relationship_id integer  NOT NULL,
	person_id            integer  NOT NULL,
	related_person_id    integer  NOT NULL,
	ref_person_relationship_id integer  ,
	custodial_relationship_indicator bool  ,
	emergency_contact_ind bool  ,
	contact_priority_number integer  ,
	contact_restrictions varchar(2000)  ,
	lives_with_indicator bool  ,
	primary_contact_indicator bool  ,
	CONSTRAINT xpk_person_relationship PRIMARY KEY ( person_relationship_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_relationship IS 'Identifies two people and the nature of their relationship.';

COMMENT ON COLUMN ceds6sc_rdx.person_relationship.person_relationship_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.person_relationship.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_relationship.related_person_id IS 'Foreign key - Person.  Identifies the other person.';

COMMENT ON COLUMN ceds6sc_rdx.person_relationship.ref_person_relationship_id IS 'The nature of the person''s relationship to another person.  [CEDS Element: Person Relationship to Learner Type, ID:000425]  (Foreign key - Ref_Person_Relationship)';

COMMENT ON COLUMN ceds6sc_rdx.person_relationship.custodial_relationship_indicator IS 'An indication that a person has legal custody of a child. [CEDS Element: Custodial Parent or Guardian Indicator, ID:000329]';

COMMENT ON COLUMN ceds6sc_rdx.person_relationship.emergency_contact_ind IS 'Indicates whether or not the person is a designated emergency contact for the learner. [CEDS Element: Emergency Contact Indicator, ID: 001341]';

COMMENT ON COLUMN ceds6sc_rdx.person_relationship.contact_priority_number IS 'The numeric order in the preferred sequence and priority for contacting a person related to the learner. [CEDS Element: Person Relationship to Learner Contact Priority Number, ID: 001423]';

COMMENT ON COLUMN ceds6sc_rdx.person_relationship.contact_restrictions IS 'Restrictions for student and/or teacher contact with the individual (e.g., the student may not be picked up by the individual) [CEDS Element: Person Relationship to Learner Contact Restrictions Description, ID: 001424]';

COMMENT ON COLUMN ceds6sc_rdx.person_relationship.lives_with_indicator IS 'Indicates whether or not the learner lives with the related person. [CEDS Element: Person Relationship to Learner Lives With Indicator, ID: 001425]';

COMMENT ON COLUMN ceds6sc_rdx.person_relationship.primary_contact_indicator IS 'Indicates that a person is a primary contact within the specified context, such as a primary parental contact specified in Person Relationship to Learner or a primary administrative contact for an organization. [CEDS Element: Primary Contact Indicator, ID: 001428]';

CREATE TABLE ceds6sc_rdx.person_telephone ( 
	person_telephone_id  integer  NOT NULL,
	person_id            integer  NOT NULL,
	telephone_number     varchar(24)  ,
	primary_telephone_number_indicator bool DEFAULT FALSE NOT NULL,
	ref_person_telephone_number_type_id integer  ,
	CONSTRAINT xpk_person_phone PRIMARY KEY ( person_telephone_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_telephone IS 'Telephone number for a person.';

COMMENT ON COLUMN ceds6sc_rdx.person_telephone.person_telephone_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.person_telephone.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_telephone.telephone_number IS 'The telephone number including the area code, and extension, if applicable. [CEDS Element: Telephone Number, ID:000279]';

COMMENT ON COLUMN ceds6sc_rdx.person_telephone.primary_telephone_number_indicator IS 'An indication that the telephone number should be used as the principal number for a person or organization. [CEDS Element: Primary Telephone Number Indicator, ID:000219]';

COMMENT ON COLUMN ceds6sc_rdx.person_telephone.ref_person_telephone_number_type_id IS 'The type of communication number listed for a person. [CEDS Element: Telephone Number Type, ID:000280]  (Foreign key - Ref_Person_Telephone_Number_Type)';

CREATE TABLE ceds6sc_rdx.professional_development_requirement ( 
	professional_development_requirement_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	required_training_clock_hours decimal(6,2)  ,
	competency_set_id    integer  ,
	CONSTRAINT pk_professional_development_requirement PRIMARY KEY ( professional_development_requirement_id )
 );

COMMENT ON TABLE ceds6sc_rdx.professional_development_requirement IS 'Professional development requirements.';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_requirement.professional_development_requirement_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_requirement.organization_person_role_id IS 'Foreign key - Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_requirement.required_training_clock_hours IS 'Number of clock hours of training required for providers to meet requirements of the state. [CEDS Element: Required Training Clock Hours, ID:000804]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_requirement.competency_set_id IS 'The set of one or more competencies and criteria for completion of a learning goal, unit, course, program, degree, certification, or other achievement.   (The criteria may be ''all'' competencies in the set or ''at-least'' # of competencies. Sets may be nested, e.g. all in subset A and 3 of 5 from subset B.)';

CREATE TABLE ceds6sc_rdx.professional_development_session_instructor ( 
	professional_development_session_instructor_id integer  NOT NULL,
	professional_development_session_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	CONSTRAINT pk_professional_development_session_instructor PRIMARY KEY ( professional_development_session_instructor_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session_instructor.professional_development_session_instructor_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session_instructor.professional_development_session_id IS 'Foreign key to Professional_Development_Session';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session_instructor.organization_person_role_id IS 'Foreign key to Organization_Person_Role';

CREATE TABLE ceds6sc_rdx.program_participation_ae ( 
	organization_person_role_id integer  NOT NULL,
	ref_ae_instructional_program_type_id integer  ,
	ref_ae_postsecondary_transition_action_id integer  ,
	postsecondary_transition_date date  ,
	ref_ae_special_program_type_id integer  ,
	ref_ae_functioning_level_at_intake_id integer  ,
	ref_ae_functioning_level_at_posttest_id integer  ,
	ref_goals_for_attending_adult_education_id integer  ,
	displaced_homemaker_indicator bool  ,
	proxy_contact_hours  decimal(5,1)  ,
	instructional_activity_hours_completed decimal(9,2)  ,
	ref_correctional_education_facility_type_id integer  ,
	ref_workbased_learning_opportunity_type_id integer  ,
	CONSTRAINT pk_program_participation_ae PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.program_participation_ae IS 'Information on a person participating in an adult education program.';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_ae.organization_person_role_id IS 'Inherited surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_ae.ref_ae_instructional_program_type_id IS 'The type of instructional program in which an adult is enrolled. [CEDS Element: Adult Education Instructional Program Type, ID:001077]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_ae.ref_ae_postsecondary_transition_action_id IS 'The action taken with respect to postsecondary enrollment by the learner after program exit or when co-enrolled in ABE and postsecondary with respect to enrollment in a postsecondary educational or occupational skills program building on prior services or training received. [CEDS Element: Adult Education Postsecondary Transition Action, ID:000784]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_ae.postsecondary_transition_date IS 'The date on which a person previously enrolled in adult education entered and began to receive instructional services or training at a postsecondary institution. [CEDS Element: Adult Education Postsecondary Transition Date, ID:001081]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_ae.ref_ae_special_program_type_id IS 'The type, by location or delivery mode , of adult education instruction program in which an adult participates. [CEDS Element: Adult Education Special Program Environment, ID:000782]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_ae.ref_ae_functioning_level_at_intake_id IS 'An individual''s entering skill level, as defined by the National Reporting System for Adult Education and determined by an approved standardized assessment at program intake. [CEDS Element: Adult Educational Functioning Level at Intake, ID:000779]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_ae.ref_ae_functioning_level_at_posttest_id IS 'An individual''s skill level, as defined by the National Reporting System for Adult Education and determined by an approved standardized assessment after a set time period or number of instructional hours. [CEDS Element: Adult Educational Functioning Level at Posttest, ID:000780]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_ae.ref_goals_for_attending_adult_education_id IS 'A person''s reasons for attending an adult education class or program. [CEDS Element: Goals for Attending Adult Education, ID:001079]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_ae.displaced_homemaker_indicator IS 'A person who ; (A) (i) has worked primarily without remuneration to care for a home and family, and for that reason has diminished marketable skills;    (ii) has been dependent on the income of another family member but is no longer supported by that income; or    (iii) is a parent whose youngest dependent child will become ineligible to receive assistance under part A of title IV of the Social Security Act (42 U.S.C. 601 et seq.) not later than 2 years after the date on which the parent applies for assistance under such title; and (B)   is unemployed or underemployed and is experiencing difficulty in obtaining or upgrading employment. [CEDS Element: Career-Technical-Adult Education Displaced Homemaker Indicator, ID:000084]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_ae.proxy_contact_hours IS 'The number of instructional hours completed by an adult enrolled in a distance learning program. [CEDS Element: Proxy Contact Hours, ID:000790]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_ae.instructional_activity_hours_completed IS 'The number of credit hours and/or contact hours successfully completed by a person during a term. [CEDS Element: Instructional Hours Completed, ID:000362]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_ae.ref_correctional_education_facility_type_id IS 'The type of facility in which an inmate receives correctional education services. [CEDS Element: Correctional Education Facility Type, ID:001296]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_ae.ref_workbased_learning_opportunity_type_id IS 'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]';

CREATE TABLE ceds6sc_rdx.program_participation_food_service ( 
	program_participation_food_service_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_school_food_service_program_id integer  NOT NULL,
	CONSTRAINT pk_program_participation_food_service PRIMARY KEY ( program_participation_food_service_id )
 );

COMMENT ON TABLE ceds6sc_rdx.program_participation_food_service IS 'Information on a person participating in a food service program.';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_food_service.program_participation_food_service_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_food_service.organization_person_role_id IS 'Foreign key - Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_food_service.ref_school_food_service_program_id IS 'An indication of a student''s participation in free, reduced price, full price breakfast, lunch, snack, supper, and milk programs. [CEDS Element: Participation in School Food Service Programs, ID:000325]  (Foreign key - Ref_School_Food_Service_Program)';

CREATE TABLE ceds6sc_rdx.program_participation_neglected ( 
	organization_person_role_id integer  NOT NULL,
	ref_neglected_program_type_id integer  ,
	achievement_indicator bool  ,
	outcome_indicator    bool  ,
	obtained_employment  bool  ,
	CONSTRAINT pk_program_participation_neglected PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.program_participation_neglected IS 'Information on a person participating in a neglected or delinquent student education program.';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_neglected.organization_person_role_id IS 'Surrogate key from Person_Program_Participation';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_neglected.ref_neglected_program_type_id IS 'The type of program under ESEA Title I, Part D, Subpart 1 (state programs) or Subpart 2 (LEA). [CEDS Element: Neglected or Delinquent Program Type, ID:000194]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_neglected.achievement_indicator IS 'Student was served by Title I, Part D, Subpart 1 of ESEA as amended for at least 90 consecutive days during the reporting period who took both a pre- and post-test. [CEDS Element: Neglected or Delinquent Academic Achievement Indicator, ID:000635]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_neglected.outcome_indicator IS 'Student was served by Title I, Part D, Subpart 2 of ESEA as amended for at least 90 consecutive days during the reporting period who took both a pre- and post-test. [CEDS Element: Neglected or Delinquent Academic Outcome Indicator, ID:000636]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_neglected.obtained_employment IS 'An indication that a Neglected or Delinquent student obtained employment. [CEDS Element: Neglected or Delinquent Obtained Employment, ID:000484]';

CREATE TABLE ceds6sc_rdx.program_participation_teacher_prep ( 
	organization_person_role_id integer  NOT NULL,
	ref_teacher_prep_enrollment_status_id integer  ,
	ref_teacher_prep_completer_status_id integer  ,
	ref_supervised_clinical_experience_id integer  ,
	clinical_experience_clock_hours integer  ,
	ref_teaching_credential_basis_id integer  ,
	ref_teaching_credential_type_id integer  ,
	ref_critical_teacher_shortage_candidate_id integer  ,
	ref_alt_route_to_certification_or_licensure_id integer  ,
	CONSTRAINT pk_prgm_participation_teacher_prep PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.program_participation_teacher_prep IS 'Information on a person participating in a teacher preparation education program.';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_teacher_prep.organization_person_role_id IS 'Surrogate key - Foreign key - Person_Program_Participation';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_teacher_prep.ref_teacher_prep_enrollment_status_id IS 'An indication of whether a person is pursuing certification as a teacher. [CEDS Element: Teacher Preparation Program Enrollment Status, ID:000767]  (Foreign key - Ref_Teacher_Prep_Enroll_Status)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_teacher_prep.ref_teacher_prep_completer_status_id IS 'An indication of whether a person completed a state-approved teacher preparation program.  The fact that a person has or has not been recommended to the state for initial certification or licensure may not be used as a criterion for determining who is a program completer. [CEDS Element: Teacher Preparation Program Completer Status, ID:000768]  (Foreign key - Ref_Teacher_Prep_Completer_Status)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_teacher_prep.ref_supervised_clinical_experience_id IS 'An indication of whether a person is enrolled in a supervised clinical experience (including student teaching) as part of a teacher preparation program. [CEDS Element: Supervised Clinical Experience, ID:000771]  (Foreign key - Ref_Supervised_Clinical_Exper)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_teacher_prep.clinical_experience_clock_hours IS 'An indication of  the number of clock hours (minimum) a student is required to complete associated with a supervised clinical experience. [CEDS Element: Supervised Clinical Experience Clock Hours, ID:000772]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_teacher_prep.ref_teaching_credential_basis_id IS 'An indication of the pre-determined criteria for granting the teaching credential that a person holds. [CEDS Element: Teaching Credential Basis, ID:000277]  (Foreign key - Ref_Teaching_Credential_Basis)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_teacher_prep.ref_teaching_credential_type_id IS 'An indication of the category of a legal document giving authorization to perform teaching assignment services. [CEDS Element: Teaching Credential Type, ID:000278]  (Foreign key -Ref_Teaching_Credential_Type)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_teacher_prep.ref_critical_teacher_shortage_candidate_id IS 'An indication of whether a person is pursuing licensure/certification in a field designated as a shortage area as defined by Title II. [CEDS Element: Critical Teacher Shortage Area Candidate, ID:000770]  (Foreign key - Ref_Critical_Teach_Shortage_Candidate)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_teacher_prep.ref_alt_route_to_certification_or_licensure_id IS 'An indication of whether a person is enrolled in an alternative teacher preparation program as defined by Title II. [CEDS Element: Alternative Route to Certification or Licensure, ID:000769]';

CREATE TABLE ceds6sc_rdx.program_participation_title_i_ ( 
	organization_person_role_id integer  NOT NULL,
	ref_title_i_indicator_id integer  ,
	CONSTRAINT pk_program_participation_title_i_ PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.program_participation_title_i_ IS 'Information on a person participating in a Title I education program.';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_title_i_.organization_person_role_id IS 'Surrogate key from Person_Program_Participation';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_title_i_.ref_title_i_indicator_id IS 'An indication that the student is participating in and served by programs under Title I, Part A of ESEA as amended. [CEDS Element: Title I Indicator, ID:000281]';

CREATE TABLE ceds6sc_rdx.ps_institution ( 
	organization_id      integer  NOT NULL,
	ref_carnegie_basic_classification_id integer  ,
	ref_control_of_institution_id integer  ,
	ref_level_of_institution_id integer  ,
	ref_predominant_calendar_system_id integer  ,
	ref_tenure_system_id integer  ,
	virtual_indicator    bool  ,
	institutionally_controlled_housing_status bool  ,
	ref_admission_consideration_level_id integer  ,
	ref_admission_consideration_type_id integer  ,
	CONSTRAINT pk_ps_institution PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_institution IS 'An organization that provides educational programs for individuals who have completed or otherwise left educational programs in secondary school(s).';

COMMENT ON COLUMN ceds6sc_rdx.ps_institution.organization_id IS 'Inherited surrogate key from Organization.';

COMMENT ON COLUMN ceds6sc_rdx.ps_institution.ref_carnegie_basic_classification_id IS 'The Basic Classification is an update of the traditional classification framework developed by the Carnegie Commission on Higher Education in 1970 to support its research program, and later published in 1973 for use by other researchers. [CEDS Element: Carnegie Basic Classification, ID:000038]  (Foreign key - Ref_Carnegie_Basic_Classification)';

COMMENT ON COLUMN ceds6sc_rdx.ps_institution.ref_control_of_institution_id IS 'A classification of whether a postsecondary institution is operated by publicly elected or appointed officials (public control) or by privately elected or appointed officials and derives its major source of funds from private sources (private control).  [CEDS Element: Control of Institution, ID:000048]  (Foreign key - Ref_Control_Of_Institution)';

COMMENT ON COLUMN ceds6sc_rdx.ps_institution.ref_level_of_institution_id IS 'A classification of whether a postsecondary institution''s highest level of offering is a program of 4-years or higher (4 year), 2-but-less-than 4-years (2 year), or less than 2-years. [CEDS Element: Level of Institution, ID:000178]  (Foreign key - Ref_Level_Of_Institution)';

COMMENT ON COLUMN ceds6sc_rdx.ps_institution.ref_predominant_calendar_system_id IS 'The method by which an institution structures most of its courses for the academic year. [CEDS Element: Predominant Calendar System, ID:000729]  (Foreign key - Ref_Predominant_Calendar_System)';

COMMENT ON COLUMN ceds6sc_rdx.ps_institution.ref_tenure_system_id IS 'An indicator of whether an institution has personnel positions that lead to consideration for tenure. [CEDS Element: Tenure System, ID:000738]  (Foreign key - Ref_Tenure_System)';

COMMENT ON COLUMN ceds6sc_rdx.ps_institution.virtual_indicator IS 'Indicates a school, institution, program, or class/section focuses primarily on instruction in which students and teachers are separated by time and/or location and interact through the use of computers and/or telecommunications technologies. [CEDS Element: Virtual Indicator, ID:001160]';

COMMENT ON COLUMN ceds6sc_rdx.ps_institution.institutionally_controlled_housing_status IS 'An indication of whether an institution has any residence hall or housing facility located on- or off-campus that is owned or controlled by an institution and used by the institution in direct support of or in a manner related to, the institution''s educational purposes. [CEDS Element: Institutionally Controlled Housing Status, ID:000748]';

COMMENT ON COLUMN ceds6sc_rdx.ps_institution.ref_admission_consideration_level_id IS 'The level of consideration given a type of admission criteria used at an institution during the selection process. [CEDS Element: Admission Consideration Level, ID:001579]';

COMMENT ON COLUMN ceds6sc_rdx.ps_institution.ref_admission_consideration_type_id IS 'The type of admission consideration used at an institution during the selection process. [CEDS Element: Admission Consideration Type, ID:001580]';

CREATE TABLE ceds6sc_rdx.ps_program ( 
	ps_program_id        integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_cip_version_id   integer  ,
	ref_cip_code_id      integer  ,
	program_length_hours decimal(9,2)  ,
	ref_program_length_hours_type_id integer  ,
	normal_length_time_for_completion varchar(60)  ,
	ref_time_for_completion_units_id integer  ,
	ref_ps_exit_or_withdrawal_type_id integer  ,
	ref_ps_program_level_id integer  ,
	ref_dqpcategories_of_learning_id integer  ,
	CONSTRAINT pk_ps_program PRIMARY KEY ( ps_program_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_program IS 'The attributes for a postsecondary program that define the type program, the program length, and other requirements for a degree or certificate. ';

COMMENT ON COLUMN ceds6sc_rdx.ps_program.ps_program_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.ps_program.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.ps_program.ref_cip_version_id IS 'The version of CIP being reported. [CEDS Element: Classification of Instructional Program Version, ID:000045]  (Foreign key - Ref_Cip_Version)';

COMMENT ON COLUMN ceds6sc_rdx.ps_program.ref_cip_code_id IS 'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions. [CEDS Element: Classification of Instructional Program Code, ID:000043]  (Foreign Key - Ref_Cip_Code)';

COMMENT ON COLUMN ceds6sc_rdx.ps_program.program_length_hours IS 'The normal length in credit/contact hours of a person''s program as published in the institution''s catalogue, website, or other official documents. [CEDS Element: Program Length Hours, ID:000223]';

COMMENT ON COLUMN ceds6sc_rdx.ps_program.ref_program_length_hours_type_id IS 'The type of hours (credit or contact) by which the normal length of a program of study is measured. [CEDS Element: Program Length Hours Type, ID:000224]  (Foreign key - Ref_Program_Length_Hours_Type)';

COMMENT ON COLUMN ceds6sc_rdx.ps_program.normal_length_time_for_completion IS 'The amount of time necessary for a person to complete all requirements for a degree or certificate according to the institution''s catalog. This is typically 4 years (8 semesters or trimesters, or 12 quarters, excluding summer terms) for a bachelor''s degree in a standard term-based institution; 2 years (4 semesters or trimesters, or 6 quarters, excluding summer terms) for an associate''s degree in a standard term-based institution; and the various scheduled times for certificate programs. [CEDS Element: Normal Length of Time for Completion, ID:000197]';

COMMENT ON COLUMN ceds6sc_rdx.ps_program.ref_time_for_completion_units_id IS 'The unit of measurement for length of time for completion. [CEDS Element: Normal Length of Time for Completion Units, ID:000198]  (Foreign key - Ref_Time_For_Completion_Units)';

COMMENT ON COLUMN ceds6sc_rdx.ps_program.ref_ps_exit_or_withdrawal_type_id IS ' The circumstances under which the student exited from enrollment in a postsecondary institution. [CEDS Element: Postsecondary Exit or Withdrawal Type, ID:001617]';

COMMENT ON COLUMN ceds6sc_rdx.ps_program.ref_ps_program_level_id IS 'The level describing the concentration of study for a postsecondary program. [CEDS Element: Postsecondary Program Level, ID:001616]';

COMMENT ON COLUMN ceds6sc_rdx.ps_program.ref_dqpcategories_of_learning_id IS 'The Lumina Foundation''s Degree Qualifications Profile offers reference points for what students should know and be able to do upon completion of associate, bachelor''s and master''s degrees – in any field of study. The DQP Categories of Learning provide a profile of what degrees mean within which specific proficiencies may be defined. [CEDS Element: DQP Categories of Learning, ID:001641]';

CREATE TABLE ceds6sc_rdx.ps_section_location ( 
	organization_id      integer  NOT NULL,
	course_instruction_site_name varchar(60)  ,
	ref_course_instruction_site_type_id integer  ,
	CONSTRAINT pk_ps_section_location PRIMARY KEY ( organization_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.ps_section_location.course_instruction_site_name IS 'The name of the location at which the course is taught. [CEDS Element: Course Level Type, ID:001309]';

COMMENT ON COLUMN ceds6sc_rdx.ps_section_location.ref_course_instruction_site_type_id IS 'An indication of the type of location at which the course is taught. [CEDS Element: Course Instruction Site Type, ID:001310]';

CREATE TABLE ceds6sc_rdx.ps_student_academic_award ( 
	ps_student_academic_award_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	academic_award_date  varchar(14)  ,
	ref_academic_award_level_id integer  ,
	academic_award_title varchar(80)  ,
	CONSTRAINT pk_ps_student_academic_award PRIMARY KEY ( ps_student_academic_award_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_student_academic_award IS 'An award conferred by a college, university, or other postsecondary education institution as official recognition for the successful completion of a program of study.';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_award.ps_student_academic_award_id IS 'Surrogate key.';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_award.organization_person_role_id IS 'Foreign key - Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_award.academic_award_date IS 'The year, month and day or year and month on which the academic award was conferred. [CEDS Element: Academic Award Date, ID:000001]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_award.ref_academic_award_level_id IS 'An indicator of the category of award conferred by a college, university, or other postsecondary education institution as official recognition for the successful completion of a program of study.    [CEDS Element: Academic Award Level Conferred, ID:000002]  (Foreign key - Ref_Academic_Award_Level_Id)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_award.academic_award_title IS 'The descriptive title for the academic award. [CEDS Element: Academic Award Title, ID:000003]';

CREATE TABLE ceds6sc_rdx.ps_student_admission_test ( 
	ps_student_admission_test_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_standardized_admission_test_id integer  NOT NULL,
	standardized_admission_test_score decimal(9,2)  ,
	CONSTRAINT pk_ps_admission_test PRIMARY KEY ( ps_student_admission_test_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_student_admission_test IS 'A student''s performance on a test prepared and administered by an agency that is independent of any postsecondary education institution and is typically used for admissions purposes.';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_admission_test.ps_student_admission_test_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_admission_test.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_admission_test.ref_standardized_admission_test_id IS 'The type of test prepared and administered by an agency that is independent of any postsecondary education institution and is typically used for admissions purposes. Tests provide information about prospective students and their academic qualifications relative to a national sample. [CEDS Element: Standardized Admission Test Type, ID:000266]  (Foreign key - Ref_Standardized_Admission_Test)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_admission_test.standardized_admission_test_score IS 'The quantitative score on a standardized admission test reported to a postsecondary institution. [CEDS Element: Standardized Admission Test Score, ID:000265]';

CREATE TABLE ceds6sc_rdx.ps_student_cohort ( 
	organization_person_role_id integer  NOT NULL,
	cohort_graduation_year char(4)  ,
	CONSTRAINT pk_ps_student_cohort PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.ps_student_cohort.organization_person_role_id IS 'Surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_cohort.cohort_graduation_year IS 'The year the cohort graduated with a regular high school diploma. [CEDS Element: Cohort Graduation Year, ID:000584]';

CREATE TABLE ceds6sc_rdx.ps_student_demographic ( 
	organization_person_role_id integer  NOT NULL,
	ref_dependency_status_id integer  ,
	ref_tuition_residency_type_id integer  ,
	ref_campus_residency_type_id integer  ,
	ref_ps_lep_type_id   integer  ,
	ref_paternal_education_level_id integer  ,
	ref_maternal_education_level_id integer  ,
	ref_cohort_exclusion_id integer  ,
	number_of_dependents integer  ,
	CONSTRAINT pk_ps_student_demographic PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_student_demographic IS 'Additional attributes for a postsecondary student (beyond those demographic attributes stored in Person_Demographic)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_demographic.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_demographic.ref_dependency_status_id IS 'A person''s classification as dependent or independent with regards to eligibility for Title IV Federal Student aid. [CEDS Element: Dependency Status, ID:000079]  (Foreign key - Ref_Dependency_Status)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_demographic.ref_tuition_residency_type_id IS 'A person''s residency status for tuition purposes. [CEDS Element: Tuition Residency Type, ID:000297]  (Foreign key - Ref_Tuition_Residency_Type)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_demographic.ref_campus_residency_type_id IS 'A person''s residency arrangement as defined in the Free Application for Federal Student Aid (FAFSA). [CEDS Element: Campus Residency Type, ID:000035]  (Foreign key - Ref_Campus_Residency_Type)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_demographic.ref_ps_lep_type_id IS 'The term individual with limited english proficiency means a secondary school student, an adult, or an out-of-school youth, who has limited ability in speaking, reading, writing, or understanding the English language AND whose native language is a language other than English; OR who lives in a family or community environment in which a language other than English is the dominant language.  [CEDS Element: Limited English Proficiency - Postsecondary, ID:000179]  (Foreign key - Ref_Ps_Lep_Type)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_demographic.ref_paternal_education_level_id IS 'The highest level of education attained by a person''s father or paternal guardian [CEDS Element: Paternal Guardian Education, ID:001230]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_demographic.ref_maternal_education_level_id IS 'The highest level of education attained by a person''s mother or maternal guardian [CEDS Element: Maternal Guardian Education, ID:001229]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_demographic.ref_cohort_exclusion_id IS 'Those persons who may be removed (deleted) from a cohort (or subcohort). For the Graduation Rates and Fall Enrollment retention rate reporting, persons may be removed from a cohort if they left the institution for one of the following reasons: death or total and permanent disability; service in the armed forces (including those called to active duty); service with a foreign aid service of the federal government, such as the Peace Corps; or service on official church missions. [CEDS Element: Cohort Exclusion, ID:000106]  (Foreign key - Ref_Cohort_Exclusion)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_demographic.number_of_dependents IS 'The number of children or other dependents who live with the student and receive more than half their support from them. [CEDS Element: Number of Dependents, ID:001415]';

CREATE TABLE ceds6sc_rdx.ps_student_enrollment ( 
	ps_student_enrollment_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_ps_enrollment_type_id integer  ,
	ref_ps_enrollment_status_id integer  ,
	degree_or_certificate_seeking_student bool  ,
	first_time_postsecondary_student bool  ,
	ref_ps_student_level_id integer  ,
	ref_ps_enrollment_award_type_id integer  ,
	initial_enrollment_term varchar(30)  ,
	ref_transfer_ready_id integer  ,
	instructional_activity_hours_attempted decimal(9,2)  ,
	instructional_activity_hours_completed decimal(9,2)  ,
	ref_instructional_activity_hours_id integer  ,
	ref_distance_education_course_enrollment_id integer  ,
	housing_on_campus    bool  ,
	fraternity_participation_status bool  ,
	sorority_participation_status bool  ,
	entry_date_into_postsecondary date  ,
	distance_education_program_enrollment_ind bool  ,
	doctoral_candidacy_admit_ind bool  ,
	doctoral_candidacy_date date  ,
	doctoral_exam_taken_date date  ,
	ref_doctoral_exams_required_code_id integer  ,
	ref_graduate_or_doctoral_exam_results_status_id integer  ,
	oral_defense_completed_indicator bool  ,
	oral_defense_date    date  ,
	postsecondary_entering_student_ind bool  ,
	thesis_or_dissertation_title varchar(300)  ,
	ref_developmental_education_referral_status_id integer  ,
	ref_developmental_education_type_id integer  ,
	CONSTRAINT pk_ps_student_enrollment PRIMARY KEY ( ps_student_enrollment_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_student_enrollment IS 'Attributes of a person enrolled at a postsecondary institution.';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.ps_student_enrollment_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.ref_ps_enrollment_type_id IS 'An indicator of the enrollment type associated with the enrollment award level of a person at the beginning of a term. [CEDS Element: Postsecondary Enrollment Type, ID:000095]  (Foreign key - Ref_Ps_Enrollment_Type)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.ref_ps_enrollment_status_id IS 'An indication of the student''s enrollment status for a particular term as defined by the institution [CEDS Element: Postsecondary Enrollment Status, ID:000096]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.degree_or_certificate_seeking_student IS 'Person is enrolled in courses for credit and recognized by the institution as seeking a degree, certificate, or other formal award. High school students also enrolled in postsecondary courses for credit are not considered degree/certificate-seeking. [CEDS Element: Degree or Certificate Seeking Student, ID:000078]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.first_time_postsecondary_student IS 'A person who has no prior postsecondary experience  attending any institution for the first time at the undergraduate level since completing high school (or its equivalent). This includes persons enrolled in academic or occupational programs. It also includes persons enrolled in the fall term who attended college for the first time in the prior summer term, and persons who entered with advanced standing (college credits earned before graduation from high school). [CEDS Element: First Time Postsecondary Student, ID:000117]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.ref_ps_student_level_id IS 'Classification of a person enrolling in credit-granting courses at a postsecondary institution since completing high school (or its equivalent) as either an undergraduate or graduate student. [CEDS Element: Student Level, ID:000272]  (Foreign key - Ref_Ps_Student_Level)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.ref_ps_enrollment_award_type_id IS 'An indicator of the award level in which the person is currently enrolled. [CEDS Element: Enrollment in Postsecondary Award Type, ID:000361]  (Forign key - Ref_Ps_Enrollment_Award_Type)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.initial_enrollment_term IS 'The first registration term of a person enrolling in credit-granting courses at a postsecondary institution after completing high school (or its equivalent).   [CEDS Element: Initial Enrollment Term, ID:000165]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.ref_transfer_ready_id IS 'A person who has successfully completed a transfer-preparatory program as defined by the state or by the institution if no official state definition exists. [CEDS Element: Transfer-ready, ID:000296]  (Foreign key - Ref_Transfer_Ready)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.instructional_activity_hours_attempted IS 'The number of credit hours and/or contact hours attempted by a person during a term. [CEDS Element: Instructional Activity Hours Attempted, ID:000168]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.instructional_activity_hours_completed IS 'The number of credit hours and/or contact hours successfully completed by a person during a term. [CEDS Element: Instructional Hours Completed, ID:000362]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.ref_instructional_activity_hours_id IS 'The unit of measure of student instructional activity. [CEDS Element: Instructional Activity Hours Type, ID:000169]  (Foreign key - Ref_Instructional_Activity_Hours)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.ref_distance_education_course_enrollment_id IS 'An individual''s enrollment in a course or courses in which the instructional content is delivered exclusively via distance education.  Distance education is education that uses one or more technologies to deliver instruction to students who are separated from the instructor and to support regular and substantive interaction between the students and the instructor synchronously or asynchronously.  Technologies used for instruction may include: Internet; one-way and two-way transmissions through open broadcasts, closed circuit, cable, microwave, broadband lines, fiber optics, satellite or wireless communication devices; audio conferencing; and video cassette, DVDs, and CD-ROMs, if the cassette, DVDs, and CD-ROMs are used in a course in conjunction with the technologies listed above. [CEDS Element: Distance Education Course Enrollment, ID:000728]  (Foreign key - Ref_Distance_Education_Course_Enrollment)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.housing_on_campus IS 'The student resides in a residence hall or housing facility owned or controlled by an institution within the same reasonably contiguous geographic area and used by the institution in direct support of or in a manner related to, the institution''s educational purposes. [CEDS Element: Postsecondary Student Housing On-Campus, ID:000760]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.fraternity_participation_status IS 'Student is in membership of a chiefly social organization of men students at a college or university, usually designated by Greek letters. [CEDS Element: Fraternity Participation Status, ID:000761]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.sorority_participation_status IS 'Student is in membership in a chiefly social organization of women students at a college or university, usually designated by Greek letters. [CEDS Element: Sorority Participation Status, ID:000762]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.entry_date_into_postsecondary IS 'The date on which a person entered and began to receive instructional services at a postsecondary institution for the first time after completing high school (or its equivalent).  [CEDS Element: Entry Date into Postsecondary, ID:000098]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.distance_education_program_enrollment_ind IS 'An individual''s enrollment in a program for which all the required coursework for program completion is able to be completed via distance education courses. Distance education is education that uses one or more technologies to deliver instruction to individuals who are separated from the instructor and to support regular and substantive interaction between the individuals and the instructor synchronously or asynchronously. [CEDS Element: Distance Education Program Enrollment Indicator, ID:001323]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.doctoral_candidacy_admit_ind IS 'The individual''s status in being admitted as a doctoral candidate. [CEDS Element: Doctoral Candidacy Admit Indicator, ID:001324]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.doctoral_candidacy_date IS 'The date on which the individual was admitted to doctoral candidate status. [CEDS Element: Doctoral Candidacy Date, ID:001325]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.doctoral_exam_taken_date IS 'The date on which the individual took an exam for advancement in, continuation or completion of a doctoral program.	[CEDS Element: Doctoral Exam Taken Date, ID:001326]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.ref_doctoral_exams_required_code_id IS 'A qualifier identifying the types of exams required of doctoral level individuals. [CEDS Element: Doctoral Exams Required Code, ID:001327]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.ref_graduate_or_doctoral_exam_results_status_id IS 'The individual''s status in completing exams required for graduate or doctoral degree programs. [CEDS Element: Graduate or Doctoral Exam Results Status, ID:001357]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.oral_defense_completed_indicator IS 'An indication of the individual''s completion of an oral defense. The requirement to conduct an oral defense by doctoral individuals may vary across institutions, programs, or fields of study. [CEDS Element: Oral Defense Completed Indicator, ID: 001416]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.oral_defense_date IS 'The date on which the individual gave an oral defense. [CEDS Element: Oral Defense Date, ID: 001417]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.postsecondary_entering_student_ind IS 'The initial enrollment of an individual in credit bearing courses or developmental/remedial courses at an institution after completing high school or a high school equivalency program (e.g. GED, Adult High School Diploma). [CEDS Element: Postsecondary Entering Student Indicator, ID: 001426]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.thesis_or_dissertation_title IS 'The title of the thesis or dissertation. [CEDS Element: Thesis or Dissertation Title, ID: 001496]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.ref_developmental_education_referral_status_id IS 'The status of a student''s referral to or placement into  developmental education. [CEDS Element: Developmental Education Referral Status, ID:001588]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_enrollment.ref_developmental_education_type_id IS 'An indicator of the category of developmental education. [CEDS Element: Developmental Education Type, ID:001589]';

CREATE TABLE ceds6sc_rdx.ps_student_program ( 
	ps_student_program_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_cip_use_id       integer  ,
	ps_program_id        integer  ,
	ref_workbased_learning_opportunity_type_id integer  ,
	ref_transfer_out_indicator_id integer  ,
	CONSTRAINT pk_ps_student_enrollment_cip PRIMARY KEY ( ps_student_program_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_student_program IS 'The classification of a program of a postsecondary student.';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_program.ps_student_program_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_program.organization_person_role_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_program.ref_cip_use_id IS 'An indicator of whether the CIP Code is referencing an enrollment program or an award program. [CEDS Element: Classification of Instructional Program Use, ID:000044]  (Foreign key - Ref_Cip_Use)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_program.ps_program_id IS 'Foreign key - Ps_Program';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_program.ref_workbased_learning_opportunity_type_id IS 'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_program.ref_transfer_out_indicator_id IS 'An indicator of whether the student has transferred to another institution. [CEDS Element: Transfer-out Indicator, ID:001629]';

CREATE TABLE ceds6sc_rdx.ps_student_section ( 
	organization_person_role_id integer  NOT NULL,
	course_override_school varchar(80)  ,
	degree_applicability bool  ,
	academic_grade       varchar(15)  ,
	number_of_credits_earned decimal(9,2)  ,
	quality_points_earned decimal(9,2)  ,
	ref_course_repeat_code_id integer  ,
	ref_course_academic_grade_status_code_id integer  ,
	CONSTRAINT pk_ps_student_section PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_student_section IS 'A postsecondary student''s performance in a class/section.';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_section.organization_person_role_id IS 'The association of an organization (e.g. school, section, employer) to a person with the role (e.g. student, ).';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_section.course_override_school IS 'The school where the credit was earned if different from the institution reporting.  [CEDS Element: Course Override School, ID:000063]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_section.degree_applicability IS 'An indication that the course is a part of a degree program.  [CEDS Element: Degree Applicability, ID:000077]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_section.academic_grade IS 'The final grade awarded for participation in the course.  [CEDS Element: Course Academic Grade, ID:000053]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_section.number_of_credits_earned IS 'The number of credits an individual earns by the successful completion of a course. [CEDS Element: Number of Credits Earned, ID:000200]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_section.quality_points_earned IS 'The numerical value assigned to a letter grade to provide a basis of quantitative determination of an average.  [CEDS Element: Course Quality Points Earned, ID:000064]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_section.ref_course_repeat_code_id IS 'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average. [CEDS Element: Course Repeat Code, ID:000065]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_section.ref_course_academic_grade_status_code_id IS 'Additional information regarding the context of the given grade. [CEDS Element: Course Academic Grade Status Code, ID:001299]';

CREATE TABLE ceds6sc_rdx.ref_absent_attendance_category ( 
	ref_absent_attendance_category_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_absent_attendance_category PRIMARY KEY ( ref_absent_attendance_category_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_absent_attendance_category IS 'The category that describes how the student spends his or her time not physically present on school grounds and not participating in instruction or instruction-related activities at an approved off-grounds location. [CEDS Element: Absent Attendance Category, ID:000599]';

COMMENT ON COLUMN ceds6sc_rdx.ref_absent_attendance_category.ref_absent_attendance_category_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_absent_attendance_category.description IS 'The category that describes how the student spends his or her time not physically present on school grounds and not participating in instruction or instruction-related activities at an approved off-grounds location. [CEDS Element: Absent Attendance Category, ID:000599]';

COMMENT ON COLUMN ceds6sc_rdx.ref_absent_attendance_category.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_absent_attendance_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_academic_honor_type ( 
	ref_academic_honor_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_academic_honor_type PRIMARY KEY ( ref_academic_honor_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_academic_honor_type IS 'A designation of the type of academic distinctions earned by or awarded to the student. [CEDS Element: Academic Honors Type, ID:000004]';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_honor_type.ref_academic_honor_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_honor_type.description IS 'A designation of the type of academic distinctions earned by or awarded to the student. [CEDS Element: Academic Honors Type, ID:000004]';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_honor_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_honor_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_academic_subject ( 
	ref_academic_subject_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_academic_rank PRIMARY KEY ( ref_academic_subject_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_academic_subject IS 'The description of the academic content or subject area (e.g., arts, mathematics, reading, or a foreign language) being evaluated. [CEDS Element: Assessment Academic Subject, ID:000021]';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_subject.ref_academic_subject_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_subject.description IS 'The description of the academic content or subject area (e.g., arts, mathematics, reading, or a foreign language) being evaluated. [CEDS Element: Assessment Academic Subject, ID:000021]';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_subject.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_subject.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_accommodations_needed_type ( 
	ref_accommodations_needed_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_accommodations_needed_type PRIMARY KEY ( ref_accommodations_needed_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_accommodations_needed_type IS 'Codes identifying the set of health accommodations. [CEDS Element: Accommodations Needed Type, ID:001277]';

COMMENT ON COLUMN ceds6sc_rdx.ref_accommodations_needed_type.ref_accommodations_needed_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_accommodations_needed_type.description IS 'Codes identifying the set of health accommodations. [CEDS Element: Accommodations Needed Type, ID:001277]';

COMMENT ON COLUMN ceds6sc_rdx.ref_accommodations_needed_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_accommodations_needed_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_activity_recognition_type ( 
	ref_activity_recognition_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_activity_recognition_type PRIMARY KEY ( ref_activity_recognition_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_activity_recognition_type IS 'The nature of recognition given to the student for accomplishments in a co-curricular, or extra-curricular activity. [CEDS Element: Recognition for Participation or Performance in an Activity, ID:000229]';

COMMENT ON COLUMN ceds6sc_rdx.ref_activity_recognition_type.ref_activity_recognition_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_activity_recognition_type.description IS 'The nature of recognition given to the student for accomplishments in a co-curricular, or extra-curricular activity. [CEDS Element: Recognition for Participation or Performance in an Activity, ID:000229]';

COMMENT ON COLUMN ceds6sc_rdx.ref_activity_recognition_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_activity_recognition_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_additional_credit_type ( 
	ref_additional_credit_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_additional_credit_type PRIMARY KEY ( ref_additional_credit_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_additional_credit_type IS 'The type of credits or units of value available for the completion of a course in addition to Carnegie Units. [CEDS Element: Additional Credit Type, ID:000596]';

COMMENT ON COLUMN ceds6sc_rdx.ref_additional_credit_type.ref_additional_credit_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_additional_credit_type.description IS 'The type of credits or units of value available for the completion of a course in addition to Carnegie Units. [CEDS Element: Additional Credit Type, ID:000596]';

COMMENT ON COLUMN ceds6sc_rdx.ref_additional_credit_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_additional_credit_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_administrative_funding_control ( 
	ref_administrative_funding_control_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_admin_funding_control PRIMARY KEY ( ref_administrative_funding_control_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_administrative_funding_control IS 'The type of education institution as classified by its funding source. [CEDS Element: Administrative Funding Control, ID:000012]';

COMMENT ON COLUMN ceds6sc_rdx.ref_administrative_funding_control.ref_administrative_funding_control_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_administrative_funding_control.description IS 'The type of education institution as classified by its funding source. [CEDS Element: Administrative Funding Control, ID:000012]';

COMMENT ON COLUMN ceds6sc_rdx.ref_administrative_funding_control.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_administrative_funding_control.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_admission_consideration_type ( 
	ref_admission_consideration_type_id integer  NOT NULL,
	description          varchar(150)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_admission_consideration_type PRIMARY KEY ( ref_admission_consideration_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_admission_consideration_type IS 'The type of admission consideration used at an institution during the selection process.[CEDS Element: Admission Consideration Type, ID:001580]';

COMMENT ON COLUMN ceds6sc_rdx.ref_admission_consideration_type.ref_admission_consideration_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_admission_consideration_type.description IS 'The type of admission consideration used at an institution during the selection process. [CEDS Element: Admission Consideration Type, ID:001580]';

COMMENT ON COLUMN ceds6sc_rdx.ref_admission_consideration_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_admission_consideration_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_advanced_placement_course_code ( 
	ref_advanced_placement_course_code_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_advanced_placement_course_code PRIMARY KEY ( ref_advanced_placement_course_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_advanced_placement_course_code IS 'Course areas for advanced placement or credit. For a list of codes see http://apcentral.collegeboard.com/apc/public/courses/teachers_corner/index.html . [CEDS Element: Advanced Placement Course Code, ID:001278]';

COMMENT ON COLUMN ceds6sc_rdx.ref_advanced_placement_course_code.ref_advanced_placement_course_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_advanced_placement_course_code.description IS 'Course areas for advanced placement or credit. For a list of codes see http://apcentral.collegeboard.com/apc/public/courses/teachers_corner/index.html . [CEDS Element: Advanced Placement Course Code, ID:001278]';

COMMENT ON COLUMN ceds6sc_rdx.ref_advanced_placement_course_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_advanced_placement_course_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ae_functioning_level_at_intake ( 
	ref_ae_functioning_level_at_intake_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ae_functioning_level_at_intake PRIMARY KEY ( ref_ae_functioning_level_at_intake_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ae_functioning_level_at_intake IS 'An individual''s entering skill level, as defined by the National Reporting System for Adult Education and determined by an approved standardized assessment at program intake. [CEDS Element: Adult Educational Functioning Level at Intake, ID:000779]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_functioning_level_at_intake.ref_ae_functioning_level_at_intake_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_functioning_level_at_intake.description IS 'An individual''s entering skill level, as defined by the National Reporting System for Adult Education and determined by an approved standardized assessment at program intake. [CEDS Element: Adult Educational Functioning Level at Intake, ID:000779]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_functioning_level_at_intake.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_functioning_level_at_intake.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ae_instructional_program_type ( 
	ref_ae_instructional_program_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk__ref_ae_instructional_program_type PRIMARY KEY ( ref_ae_instructional_program_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ae_instructional_program_type IS 'The type of instructional program in which an adult is enrolled. [CEDS Element: Adult Education Instructional Program Type, ID:001077]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_instructional_program_type.ref_ae_instructional_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_instructional_program_type.description IS 'The type of instructional program in which an adult is enrolled. [CEDS Element: Adult Education Instructional Program Type, ID:001077]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_instructional_program_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_instructional_program_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ae_special_program_type ( 
	ref_ae_special_program_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ae_special_program_type PRIMARY KEY ( ref_ae_special_program_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ae_special_program_type IS 'The type, by location or delivery mode , of adult education instruction program in which an adult participates. [CEDS Element: Adult Education Special Program Environment, ID:000782]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_special_program_type.ref_ae_special_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_special_program_type.description IS 'The type, by location or delivery mode , of adult education instruction program in which an adult participates. [CEDS Element: Adult Education Special Program Environment, ID:000782]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_special_program_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_special_program_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ae_staff_employment_status ( 
	ref_ae_staff_employment_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ae_staff_employment_status PRIMARY KEY ( ref_ae_staff_employment_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ae_staff_employment_status IS 'The condition under which a person has agreed to serve an employer. [CEDS Element: Adult Education Staff Employment Status, ID:001083]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_staff_employment_status.ref_ae_staff_employment_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_staff_employment_status.description IS 'The condition under which a person has agreed to serve an employer. [CEDS Element: Adult Education Staff Employment Status, ID:001083]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_staff_employment_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_staff_employment_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_allergy_type ( 
	ref_allergy_type_id  integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_allergy_type PRIMARY KEY ( ref_allergy_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_allergy_type IS 'Type of allergy condition attributed to a person as defined by the SNOWMED Clinical Terms(r) vocabulary. [CEDS Element: Allergy Type, ID:001283]';

COMMENT ON COLUMN ceds6sc_rdx.ref_allergy_type.ref_allergy_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_allergy_type.description IS 'Type of allergy condition attributed to a person as defined by the SNOWMED Clinical Terms(r) vocabulary. [CEDS Element: Allergy Type, ID:001283]';

COMMENT ON COLUMN ceds6sc_rdx.ref_allergy_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_allergy_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_alternate_fund_uses ( 
	ref_alternate_fund_uses_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_alternate_fund_uses PRIMARY KEY ( ref_alternate_fund_uses_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_alternate_fund_uses IS 'Purposes that funds available under ESEA section 6111 (Grants for State Assessments and Related Activities) were used during the 2009-10 school year for purposes other than the costs of the development of the State assessments and standards required by section 1111(b). [CEDS Element: Uses of Funds for Purposes other than Standards and Assessment Development, ID:000459]';

COMMENT ON COLUMN ceds6sc_rdx.ref_alternate_fund_uses.ref_alternate_fund_uses_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_alternate_fund_uses.description IS 'Purposes that funds available under ESEA section 6111 (Grants for State Assessments and Related Activities) were used during the 2009-10 school year for purposes other than the costs of the development of the State assessments and standards required by section 1111(b). [CEDS Element: Uses of Funds for Purposes other than Standards and Assessment Development, ID:000459]';

COMMENT ON COLUMN ceds6sc_rdx.ref_alternate_fund_uses.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_alternate_fund_uses.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_amao_attainment_status ( 
	ref_amao_attainment_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk__ref_amao_attainment_status PRIMARY KEY ( ref_amao_attainment_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_amao_attainment_status IS 'An indication whether the organization met the Annual Measurable Achievement Objectives (AMAO) for attaining English proficiency for limited English proficient (LEP) students under Title III of ESEA. [CEDS Elements: Annual Measurable Achievement Objective AYP Progress Attainment Status for LEP Students (000579), Annual Measurable Achievement Objective Proficiency Attainment Status for LEP Students (000544), Annual Measurable Achievement Objective Progress Attainment Status for LEP Students (000554)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_amao_attainment_status.ref_amao_attainment_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_amao_attainment_status.description IS 'An indication whether the organization met the Annual Measurable Achievement Objectives (AMAO) for attaining English proficiency for limited English proficient (LEP) students under Title III of ESEA. [CEDS Elements: Annual Measurable Achievement Objective AYP Progress Attainment Status for LEP Students (000579), Annual Measurable Achievement Objective Proficiency Attainment Status for LEP Students (000544), Annual Measurable Achievement Objective Progress Attainment Status for LEP Students (000554)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_amao_attainment_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_amao_attainment_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_asset_identifier_type ( 
	ref_assessment_asset_identifier_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk__ref_assesment_assest_identifier_type PRIMARY KEY ( ref_assessment_asset_identifier_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_asset_identifier_type IS 'The type of identifier that is provided for this asset. [CEDS Element: Assessment Asset Identifier Type, ID:001199]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_asset_identifier_type.ref_assessment_asset_identifier_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_asset_identifier_type.description IS 'The type of identifier that is provided for this asset. [CEDS Element: Assessment Asset Identifier Type, ID:001199]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_asset_identifier_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_asset_identifier_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_el_developmental_domain ( 
	ref_assessment_el_developmental_domain_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_assessment_el_developmental_domain PRIMARY KEY ( ref_assessment_el_developmental_domain_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_el_developmental_domain IS 'Developmental domains related to early learning and used for assessing a child''s kindergarten readiness.[CEDS Element: Assessment Early Learning Developmental Domain, ID:001000]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_el_developmental_domain.ref_assessment_el_developmental_domain_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_el_developmental_domain.description IS 'Developmental domains related to early learning and used for assessing a child''s kindergarten readiness. [CEDS Element: Assessment Early Learning Developmental Domain, ID:001000]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_el_developmental_domain.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_el_developmental_domain.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_item_characteristic_type ( 
	ref_assessment_item_characteristic_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk__ref_assessment_item_characteristic_type PRIMARY KEY ( ref_assessment_item_characteristic_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_item_characteristic_type IS 'The type of psychometric measure provided for assessment item. [CEDS Element: Assessment Item Characteristic Type, ID:000392]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_characteristic_type.ref_assessment_item_characteristic_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_characteristic_type.description IS 'The type of psychometric measure provided for assessment item. [CEDS Element: Assessment Item Characteristic Type, ID:000392]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_characteristic_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_characteristic_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_item_response_status ( 
	ref_assessment_item_response_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk__ref_assessment_item_response_status PRIMARY KEY ( ref_assessment_item_response_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_item_response_status IS 'The status of the response for a given item. [CEDS Element: Assessment Item Response Status, ID:000405]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_response_status.ref_assessment_item_response_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_response_status.description IS 'The status of the response for a given item. [CEDS Element: Assessment Item Response Status, ID:000405]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_response_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_response_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_need_alternative_representation_type ( 
	ref_assessment_need_alternative_representation_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_alternative_representation_type PRIMARY KEY ( ref_assessment_need_alternative_representation_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_need_alternative_representation_type IS 'Defines as part of an Assessment Personal Needs Profile the default presentation mode of the associated Alternative Representations accessibility. [CEDS Element: Assessment Need Alternative Representation Type, ID:001041]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_alternative_representation_type.ref_assessment_need_alternative_representation_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_alternative_representation_type.description IS 'Defines as part of an Assessment Personal Needs Profile the default presentation mode of the associated Alternative Representations accessibility. [CEDS Element: Assessment Need Alternative Representation Type, ID:001041]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_alternative_representation_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_alternative_representation_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_need_braille_mark_type ( 
	ref_assessment_need_braille_mark_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_braille_mark_type PRIMARY KEY ( ref_assessment_need_braille_mark_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_need_braille_mark_type IS 'Defines as part of an Assessment Personal Needs Profile what textual properties to mark when using a Braille display. [CEDS Element: Assessment Need Braille Mark Type, ID:001035]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_braille_mark_type.ref_assessment_need_braille_mark_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_braille_mark_type.description IS 'Defines as part of an Assessment Personal Needs Profile what textual properties to mark when using a Braille display. [CEDS Element: Assessment Need Braille Mark Type, ID:001035]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_braille_mark_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_braille_mark_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_need_hazard_type ( 
	ref_assessment_need_hazard_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_hazard_type PRIMARY KEY ( ref_assessment_need_hazard_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_need_hazard_type IS 'Defines as part of an Assessment Personal Needs Profile a characteristic of a digital resource that may be specified as being dangerous to a user. [CEDS Element: Assessment Need Hazard Type, ID:001024]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_hazard_type.ref_assessment_need_hazard_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_hazard_type.description IS 'Defines as part of an Assessment Personal Needs Profile a characteristic of a digital resource that may be specified as being dangerous to a user. [CEDS Element: Assessment Need Hazard Type, ID:001024]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_hazard_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_hazard_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_need_language_learner_type ( 
	ref_assessment_need_language_learner_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_needs_profile_content_language_learner_type PRIMARY KEY ( ref_assessment_need_language_learner_type_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_language_learner_type.ref_assessment_need_language_learner_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_language_learner_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_language_learner_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_need_number_of_braille_dots ( 
	ref_assessment_need_number_of_braille_dots_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_number_of_braille_dots PRIMARY KEY ( ref_assessment_need_number_of_braille_dots_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_need_number_of_braille_dots IS 'Defines as part of an Assessment Personal Needs Profile the number of dots in a Braille cell. [CEDS Element: Assessment Need Number of Braille Dots Type, ID:001033]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_number_of_braille_dots.ref_assessment_need_number_of_braille_dots_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_number_of_braille_dots.description IS 'Defines as part of an Assessment Personal Needs Profile the number of dots in a Braille cell. [CEDS Element: Assessment Need Number of Braille Dots Type, ID:001033]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_number_of_braille_dots.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_number_of_braille_dots.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_need_spoken_source_preference_type ( 
	ref_assessment_need_spoken_source_preference_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_spoken_source_preference_type PRIMARY KEY ( ref_assessment_need_spoken_source_preference_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_need_spoken_source_preference_type IS 'Defines as part of an Assessment Personal Needs Profile the preferred spoken audio form. [CEDS Element: Assessment Need Spoken Source Preference Type, ID:001042]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_spoken_source_preference_type.ref_assessment_need_spoken_source_preference_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_spoken_source_preference_type.description IS 'Defines as part of an Assessment Personal Needs Profile the preferred spoken audio form. [CEDS Element: Assessment Need Spoken Source Preference Type, ID:001042]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_spoken_source_preference_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_spoken_source_preference_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_need_usage_type ( 
	ref_assessment_need_usage_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_usage_type PRIMARY KEY ( ref_assessment_need_usage_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_need_usage_type IS 'Defines as part of an Assessment Personal Needs Profile the rating for the collection of Access for All (Af_A) needs and preferences. [CEDS Element: Assessment Need Usage Type, ID:001026]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_usage_type.ref_assessment_need_usage_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_usage_type.description IS 'Defines as part of an Assessment Personal Needs Profile the rating for the collection of Access for All (Af_A) needs and preferences. [CEDS Element: Assessment Need Usage Type, ID:001026]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_usage_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_usage_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_participation_indicator ( 
	ref_assessment_participation_indicator_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_participation_indicator PRIMARY KEY ( ref_assessment_participation_indicator_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_participation_indicator IS 'An indication of whether a student participated in an assessment. [CEDS Element: Assessment Registration Participation Indicator, ID:000025]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_participation_indicator.ref_assessment_participation_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_participation_indicator.description IS 'An indication of whether a student participated in an assessment. [CEDS Element: Assessment Registration Participation Indicator, ID:000025]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_participation_indicator.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_participation_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_pretest_outcome ( 
	ref_assessment_pretest_outcome_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_assessment_pretest_outcome PRIMARY KEY ( ref_assessment_pretest_outcome_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_pretest_outcome IS 'The results of a pre-test in academic subjects. [CEDS Element: Assessment Result Pretest Outcome, ID:000572]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_pretest_outcome.ref_assessment_pretest_outcome_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_pretest_outcome.description IS 'The results of a pre-test in academic subjects. [CEDS Element: Assessment Result Pretest Outcome, ID:000572]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_pretest_outcome.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_pretest_outcome.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_reason_not_completing ( 
	ref_assessment_reason_not_completing_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_reason_not_completing PRIMARY KEY ( ref_assessment_reason_not_completing_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_reason_not_completing IS 'The primary reason a participant did not complete an assessment. [CEDS Element: Assessment Registration Reason Not Completing, ID:000540]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_reason_not_completing.ref_assessment_reason_not_completing_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_reason_not_completing.description IS 'The primary reason a participant did not complete an assessment. [CEDS Element: Assessment Registration Reason Not Completing, ID:000540]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_reason_not_completing.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_reason_not_completing.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_registration_completion_status ( 
	ref_assessment_registration_completion_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_registration_completion_status PRIMARY KEY ( ref_assessment_registration_completion_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_registration_completion_status IS 'The completion and scoring status for an instance of a person taking an assessment.[CEDS Element: Assessment Registration Completion Status, ID:001541]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_registration_completion_status.ref_assessment_registration_completion_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_registration_completion_status.description IS 'The completion and scoring status for an instance of a person taking an assessment. [CEDS Element: Assessment Registration Completion Status, ID:001541]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_registration_completion_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_registration_completion_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_result_data_type ( 
	ref_assessment_result_data_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_result_data_type PRIMARY KEY ( ref_assessment_result_data_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_result_data_type IS ' The data type of the assessment result score value.[CEDS Element: Assessment Result Data Type, ID:001543]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_result_data_type.ref_assessment_result_data_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_result_data_type.description IS ' The data type of the assessment result score value. [CEDS Element: Assessment Result Data Type, ID:001543]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_result_data_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_result_data_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_session_special_circumstance_type ( 
	ref_assessment_session_special_circumstance_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk__ref_assessment_special_circumstance PRIMARY KEY ( ref_assessment_session_special_circumstance_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_session_special_circumstance_type IS 'An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc. [CEDS Element: Assessment Session Special Circumstance Type, ID:000389]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_session_special_circumstance_type.ref_assessment_session_special_circumstance_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_session_special_circumstance_type.description IS 'An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc. [CEDS Element: Assessment Session Special Circumstance Type, ID:000389]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_session_special_circumstance_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_session_special_circumstance_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_session_type ( 
	ref_assessment_session_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_session_type PRIMARY KEY ( ref_assessment_session_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_session_type IS 'The type of session that is scheduled. [CEDS Element: Assessment Session Type, ID:001018]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_session_type.ref_assessment_session_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_session_type.description IS 'The type of session that is scheduled. [CEDS Element: Assessment Session Type, ID:001018]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_session_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_session_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_type ( 
	ref_assessment_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_type PRIMARY KEY ( ref_assessment_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_type IS 'The category of an assessment based on format and content. [CEDS Element: Assessment Type, ID:000029]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_type.ref_assessment_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_type.description IS 'The category of an assessment based on format and content. [CEDS Element: Assessment Type, ID:000029]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_attendance_event_type ( 
	ref_attendance_event_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_attendance_event_type PRIMARY KEY ( ref_attendance_event_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_attendance_event_type IS 'The type of attendance event. [CEDS Element: Attendance Event Type, ID:000601]';

COMMENT ON COLUMN ceds6sc_rdx.ref_attendance_event_type.ref_attendance_event_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_attendance_event_type.description IS 'The type of attendance event. [CEDS Element: Attendance Event Type, ID:000601]';

COMMENT ON COLUMN ceds6sc_rdx.ref_attendance_event_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_attendance_event_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ayp_status ( 
	ref_ayp_status_id    integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ayp_status PRIMARY KEY ( ref_ayp_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ayp_status IS 'An indication of whether the state, district, or school met the Adequate Yearly Progress (AYP) requirements for the school year, as determined by the state-established criteria. [CEDS Element: Adequate Yearly Progress Status, ID:000011]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ayp_status.ref_ayp_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ayp_status.description IS 'An indication of whether the state, district, or school met the Adequate Yearly Progress (AYP) requirements for the school year, as determined by the state-established criteria. [CEDS Element: Adequate Yearly Progress Status, ID:000011]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ayp_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ayp_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_billable_basis_type ( 
	ref_billable_basis_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_billable_basis_type PRIMARY KEY ( ref_billable_basis_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_billable_basis_type IS 'The event/action that results in a billable action.[CEDS Element: Billable Basis Type, ID:001582]';

COMMENT ON COLUMN ceds6sc_rdx.ref_billable_basis_type.ref_billable_basis_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_billable_basis_type.description IS 'The event/action that results in a billable action. [CEDS Element: Billable Basis Type, ID:001582]';

COMMENT ON COLUMN ceds6sc_rdx.ref_billable_basis_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_billable_basis_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_blooms_taxonomy_domain ( 
	ref_blooms_taxonomy_domain_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk__ref_bloom_taxonomy_domain PRIMARY KEY ( ref_blooms_taxonomy_domain_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_blooms_taxonomy_domain IS 'Classification of the Learning Standard Item using Bloom''s Taxonomy Domains.  [CEDS Element: Learning Standard Item Blooms Taxonomy Domain, ID:000875]';

COMMENT ON COLUMN ceds6sc_rdx.ref_blooms_taxonomy_domain.ref_blooms_taxonomy_domain_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_blooms_taxonomy_domain.description IS 'Classification of the Learning Standard Item using Bloom''s Taxonomy Domains.  [CEDS Element: Learning Standard Item Blooms Taxonomy Domain, ID:000875]';

COMMENT ON COLUMN ceds6sc_rdx.ref_blooms_taxonomy_domain.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_blooms_taxonomy_domain.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_calendar_event_type ( 
	ref_calendar_event_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk__ref_calendar_event_type PRIMARY KEY ( ref_calendar_event_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_calendar_event_type IS 'The type of scheduled or unscheduled event that causes interruption in direct instruction. [CEDS Element: Calendar Event Type, ID:000603]';

COMMENT ON COLUMN ceds6sc_rdx.ref_calendar_event_type.ref_calendar_event_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_calendar_event_type.description IS 'The type of scheduled or unscheduled event that causes interruption in direct instruction. [CEDS Element: Calendar Event Type, ID:000603]';

COMMENT ON COLUMN ceds6sc_rdx.ref_calendar_event_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_calendar_event_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_career_cluster ( 
	ref_career_cluster_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_career_cluster PRIMARY KEY ( ref_career_cluster_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_career_cluster IS 'The career cluster that defines the industry or occupational focus which may be associated with a career pathways program, plan of study, or course. [CEDS Element: Career Cluster, ID:001288]';

COMMENT ON COLUMN ceds6sc_rdx.ref_career_cluster.ref_career_cluster_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_career_cluster.description IS 'The career cluster that defines the industry or occupational focus which may be associated with a career pathways program, plan of study, or course. [CEDS Element: Career Cluster, ID:001288]';

COMMENT ON COLUMN ceds6sc_rdx.ref_career_cluster.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_career_cluster.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_carnegie_basic_classification ( 
	ref_carnegie_basic_classification_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_classification PRIMARY KEY ( ref_carnegie_basic_classification_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_carnegie_basic_classification IS 'The Basic Classification is an update of the traditional classification framework developed by the Carnegie Commission on Higher Education in 1970 to support its research program, and later published in 1973 for use by other researchers. [CEDS Element: Carnegie Basic Classification, ID:000038]';

COMMENT ON COLUMN ceds6sc_rdx.ref_carnegie_basic_classification.ref_carnegie_basic_classification_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_carnegie_basic_classification.description IS 'The Basic Classification is an update of the traditional classification framework developed by the Carnegie Commission on Higher Education in 1970 to support its research program, and later published in 1973 for use by other researchers. [CEDS Element: Carnegie Basic Classification, ID:000038]';

COMMENT ON COLUMN ceds6sc_rdx.ref_carnegie_basic_classification.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_carnegie_basic_classification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_charter_school_management_organization_type ( 
	ref_charter_school_management_organization_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_charter_school_management_organization_type PRIMARY KEY ( ref_charter_school_management_organization_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_charter_school_management_organization_type IS 'The type of organization that is a separate legal entity that 1) contracts with one or more charter schools to manage, operate, and oversee the charter schools; or 2) holds a charter, or charters, to operate multiple charter schools.[CEDS Element: Charter School Management Organization Type, ID:001650]';

COMMENT ON COLUMN ceds6sc_rdx.ref_charter_school_management_organization_type.ref_charter_school_management_organization_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_charter_school_management_organization_type.description IS 'The type of organization that is a separate legal entity that 1) contracts with one or more charter schools to manage, operate, and oversee the charter schools; or 2) holds a charter, or charters, to operate multiple charter schools. [CEDS Element: Charter School Management Organization Type, ID:001650]';

COMMENT ON COLUMN ceds6sc_rdx.ref_charter_school_management_organization_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_charter_school_management_organization_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_child_development_associate_type ( 
	ref_child_development_associate_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_child_edevelopment_associate_type PRIMARY KEY ( ref_child_development_associate_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_child_development_associate_type IS 'Type of Child Development Associate credential as defined by options. [CEDS Element: Child Development Associate Type, ID:000806]';

COMMENT ON COLUMN ceds6sc_rdx.ref_child_development_associate_type.ref_child_development_associate_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_child_development_associate_type.description IS 'Type of Child Development Associate credential as defined by options. [CEDS Element: Child Development Associate Type, ID:000806]';

COMMENT ON COLUMN ceds6sc_rdx.ref_child_development_associate_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_child_development_associate_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_child_outcomes_summary_rating ( 
	ref_child_outcomes_summary_rating_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_child_outcomes_summary_rating PRIMARY KEY ( ref_child_outcomes_summary_rating_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_child_outcomes_summary_rating IS 'Codes used to identify a child''s level of functioning. [CEDS Elements: Child Outcomes Summary Rating A (ID:001507), Child Outcomes Summary Rating B (ID:001508), Child Outcomes Summary Rating C (ID:001509)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_child_outcomes_summary_rating.ref_child_outcomes_summary_rating_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_child_outcomes_summary_rating.description IS 'Codes used to identify a child''s level of functioning. [CEDS Elements: Child Outcomes Summary Rating A (ID:001507), Child Outcomes Summary Rating B (ID:001508), Child Outcomes Summary Rating C (ID:001509)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_child_outcomes_summary_rating.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_child_outcomes_summary_rating.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_cip_use ( 
	ref_cip_use_id       integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_cip_use PRIMARY KEY ( ref_cip_use_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_cip_use IS 'An indicator of whether the CIP Code is referencing an enrollment program or an award program. [CEDS Element: Classification of Instructional Program Use, ID:000044]';

COMMENT ON COLUMN ceds6sc_rdx.ref_cip_use.ref_cip_use_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_cip_use.description IS 'An indicator of whether the CIP Code is referencing an enrollment program or an award program. [CEDS Element: Classification of Instructional Program Use, ID:000044]';

COMMENT ON COLUMN ceds6sc_rdx.ref_cip_use.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_cip_use.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_classroom_position_type ( 
	ref_classroom_position_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_classroom_position_type PRIMARY KEY ( ref_classroom_position_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_classroom_position_type IS 'The type of position the staff member holds in the specific class/section. [CEDS Element: Classroom Position Type, ID:000622]';

COMMENT ON COLUMN ceds6sc_rdx.ref_classroom_position_type.ref_classroom_position_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_classroom_position_type.description IS 'The type of position the staff member holds in the specific class/section. [CEDS Element: Classroom Position Type, ID:000622]';

COMMENT ON COLUMN ceds6sc_rdx.ref_classroom_position_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_classroom_position_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_communication_method ( 
	ref_communication_method_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_communication_method PRIMARY KEY ( ref_communication_method_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_communication_method IS 'The types of communication methods with family members. [CEDS Element: Parent Communication Method, ID:000857]';

COMMENT ON COLUMN ceds6sc_rdx.ref_communication_method.ref_communication_method_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_communication_method.description IS 'The types of communication methods with family members. [CEDS Element: Parent Communication Method, ID:000857]';

COMMENT ON COLUMN ceds6sc_rdx.ref_communication_method.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_communication_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_competency_set_completion_criteria ( 
	ref_competency_set_completion_criteria_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_competency_set_completion_criteria PRIMARY KEY ( ref_competency_set_completion_criteria_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_competency_set_completion_criteria IS 'The criteria for the set of competencies that represent completion or partial completion of a unit, course, program, degree, certification, or other achievement/award. Specifies whether completion requires achievement of all items in the set or some number of items.[CEDS Element: Competency Set Completion Criteria, ID:000877]';

COMMENT ON COLUMN ceds6sc_rdx.ref_competency_set_completion_criteria.ref_competency_set_completion_criteria_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_competency_set_completion_criteria.description IS 'The criteria for the set of competencies that represent completion or partial completion of a unit, course, program, degree, certification, or other achievement/award. Specifies whether completion requires achievement of all items in the set or some number of items. [CEDS Element: Competency Set Completion Criteria, ID:000877]';

COMMENT ON COLUMN ceds6sc_rdx.ref_competency_set_completion_criteria.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_competency_set_completion_criteria.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_continuation_of_services ( 
	ref_continuation_of_services_reason_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_continuation_of_services PRIMARY KEY ( ref_continuation_of_services_reason_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_continuation_of_services IS 'Reason why the student is being served under the continuation of services provision of the MEP. [CEDS Element: Continuation of Services Reason, ID:000429]';

COMMENT ON COLUMN ceds6sc_rdx.ref_continuation_of_services.ref_continuation_of_services_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_continuation_of_services.description IS 'Reason why the student is being served under the continuation of services provision of the MEP. [CEDS Element: Continuation of Services Reason, ID:000429]';

COMMENT ON COLUMN ceds6sc_rdx.ref_continuation_of_services.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_continuation_of_services.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_core_knowledge_area ( 
	ref_core_knowledge_area_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_core_knowledge_area PRIMARY KEY ( ref_core_knowledge_area_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_core_knowledge_area IS 'A description of the core knowledge areas addressed by professional development. [CEDS Element: Early Learning Core Knowledge Area, ID:000813]';

COMMENT ON COLUMN ceds6sc_rdx.ref_core_knowledge_area.ref_core_knowledge_area_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_core_knowledge_area.description IS 'A description of the core knowledge areas addressed by professional development. [CEDS Element: Early Learning Core Knowledge Area, ID:000813]';

COMMENT ON COLUMN ceds6sc_rdx.ref_core_knowledge_area.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_core_knowledge_area.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_corrective_action_type ( 
	ref_corrective_action_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_corrective_action PRIMARY KEY ( ref_corrective_action_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_corrective_action_type IS 'The types of corrective actions under ESEA as amended. [CEDS Element: Corrective Action Type, ID:000049]';

COMMENT ON COLUMN ceds6sc_rdx.ref_corrective_action_type.ref_corrective_action_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_corrective_action_type.description IS 'The types of corrective actions under ESEA as amended. [CEDS Element: Corrective Action Type, ID:000049]';

COMMENT ON COLUMN ceds6sc_rdx.ref_corrective_action_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_corrective_action_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_county ( 
	ref_county_id        integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_county PRIMARY KEY ( ref_county_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_county IS 'List of counties.';

COMMENT ON COLUMN ceds6sc_rdx.ref_county.ref_county_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_county.description IS 'Name of the county.';

COMMENT ON COLUMN ceds6sc_rdx.ref_county.code IS 'County code as defined for the Identification of counties and equivalent areas of the United States, Puerto Rico, and the insular areas as established by the American National Standards Institute (ANSI) Inter-National Committee for Information Technology Standards (INCITS) in specification BSR INCITS 31-200x or more current updates.  See http://http://www.census.gov/geo/www/ansi/countylookup.html. [CEDS Element: County ANSI Code, ID:001209]';

COMMENT ON COLUMN ceds6sc_rdx.ref_county.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_applicable_education_level ( 
	ref_course_applicable_education_level_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_applicable_education_level PRIMARY KEY ( ref_course_applicable_education_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_applicable_education_level IS 'The education level, grade level or primary instructional level at which a course is intended. [CEDS Element: Course Applicable Education Level, ID:001301]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_applicable_education_level.ref_course_applicable_education_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_applicable_education_level.description IS 'The education level, grade level or primary instructional level at which a course is intended. [CEDS Element: Course Applicable Education Level, ID:001301]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_applicable_education_level.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_applicable_education_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_credit_level_type ( 
	ref_course_credit_level_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_credit_level_type PRIMARY KEY ( ref_course_credit_level_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_credit_level_type IS 'The level of credit associated with the credit hours earned for the course. [CEDS Element: Course Credit Level Type, ID:001304]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_credit_level_type.ref_course_credit_level_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_credit_level_type.description IS 'The level of credit associated with the credit hours earned for the course. [CEDS Element: Course Credit Level Type, ID:001304]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_credit_level_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_credit_level_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_gpa_applicability ( 
	ref_course_gpaapplicability_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_gpa_applicability PRIMARY KEY ( ref_course_gpaapplicability_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_gpa_applicability IS 'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA). [CEDS Element: Course Grade Point Average Applicability, ID:000060]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_gpa_applicability.ref_course_gpaapplicability_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_gpa_applicability.description IS 'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA). [CEDS Element: Course Grade Point Average Applicability, ID:000060] (Foreign key - Ref_Course_Gpa_Applicability)';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_gpa_applicability.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_gpa_applicability.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_instruction_method ( 
	ref_course_instruction_method_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_instruction_method PRIMARY KEY ( ref_course_instruction_method_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_instruction_method IS 'The primary method of instruction used for the course. [CEDS Element: Course Instruction Method, ID:001308]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_instruction_method.ref_course_instruction_method_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_instruction_method.description IS 'The primary method of instruction used for the course. [CEDS Element: Course Instruction Method, ID:001308]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_instruction_method.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_instruction_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_interaction_mode ( 
	ref_course_interaction_mode_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_interaction_mode PRIMARY KEY ( ref_course_interaction_mode_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_interaction_mode IS 'The primary type of interaction, synchronous or asynchronous, defined for the course. [CEDS Element: Course Interaction Mode, ID:001311]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_interaction_mode.ref_course_interaction_mode_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_interaction_mode.description IS 'The primary type of interaction, synchronous or asynchronous, defined for the course. [CEDS Element: Course Interaction Mode, ID:001311]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_interaction_mode.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_interaction_mode.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_level_type ( 
	ref_course_level_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_level_type PRIMARY KEY ( ref_course_level_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_level_type IS 'The level of work which is reflected in the credits associated with the academic course being described or the level of the typical individual taking the academic course. [CEDS Element: Course Level Type, ID:001312]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_level_type.ref_course_level_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_level_type.description IS 'The level of work which is reflected in the credits associated with the academic course being described or the level of the typical individual taking the academic course. [CEDS Element: Course Level Type, ID:001312]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_level_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_level_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_section_assessment_reporting_method ( 
	ref_course_section_assessment_reporting_method_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_section_assessment_reporting_method PRIMARY KEY ( ref_course_section_assessment_reporting_method_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_section_assessment_reporting_method IS 'The method that the instructor of the course uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. In some cases, more than one type of reporting method may be used. [CEDS Element: Course Section Assessment Reporting Method, ID:000027]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_assessment_reporting_method.ref_course_section_assessment_reporting_method_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_assessment_reporting_method.description IS 'The method that the instructor of the course uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. In some cases, more than one type of reporting method may be used. [CEDS Element: Course Section Assessment Reporting Method, ID:000027]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_assessment_reporting_method.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_assessment_reporting_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_section_enrollment_status_type ( 
	ref_course_section_enrollment_status_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_section_enrollment_status PRIMARY KEY ( ref_course_section_enrollment_status_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_section_enrollment_status_type IS 'The status related to a student enrollment in an instance of a course. [CEDS Element: Course Section Enrollment Status Type, ID:000976]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_enrollment_status_type.ref_course_section_enrollment_status_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_enrollment_status_type.description IS 'The status related to a student enrollment in an instance of a course. [CEDS Element: Course Section Enrollment Status Type, ID:000976]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_enrollment_status_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_enrollment_status_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_section_exit_type ( 
	ref_course_section_exit_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_course_section_exit_type PRIMARY KEY ( ref_course_section_exit_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_section_exit_type IS 'The circumstances under which the student exited from membership in a course section. [CEDS Element: Course Section Exit Type, ID:000652]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_exit_type.ref_course_section_exit_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_exit_type.description IS 'The circumstances under which the student exited from membership in a course section. [CEDS Element: Course Section Exit Type, ID:000652]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_exit_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_exit_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_credit_hours_applied_other_program ( 
	ref_credit_hours_applied_other_program_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_credit_hours_applied_other_program PRIMARY KEY ( ref_credit_hours_applied_other_program_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_credit_hours_applied_other_program IS 'Codes identifying the set of credit hours taken in other programs or degrees that were applied to the individual''s degree. [CEDS Element: Credit Hours Applied Other Program, ID:001317]';

COMMENT ON COLUMN ceds6sc_rdx.ref_credit_hours_applied_other_program.ref_credit_hours_applied_other_program_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_credit_hours_applied_other_program.description IS 'Codes identifying the set of credit hours taken in other programs or degrees that were applied to the individual''s degree. [CEDS Element: Credit Hours Applied Other Program, ID:001317]';

COMMENT ON COLUMN ceds6sc_rdx.ref_credit_hours_applied_other_program.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_credit_hours_applied_other_program.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_critical_teacher_shortage_candidate ( 
	ref_critical_teacher_shortage_candidate_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_critical_teacher_shortage_candidate PRIMARY KEY ( ref_critical_teacher_shortage_candidate_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_critical_teacher_shortage_candidate IS 'An indication of whether a person is pursuing licensure/certification in a field designated as a shortage area as defined by Title II. [CEDS Element: Critical Teacher Shortage Area Candidate, ID:000770]';

COMMENT ON COLUMN ceds6sc_rdx.ref_critical_teacher_shortage_candidate.ref_critical_teacher_shortage_candidate_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_critical_teacher_shortage_candidate.description IS 'An indication of whether a person is pursuing licensure/certification in a field designated as a shortage area as defined by Title II. [CEDS Element: Critical Teacher Shortage Area Candidate, ID:000770]';

COMMENT ON COLUMN ceds6sc_rdx.ref_critical_teacher_shortage_candidate.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_critical_teacher_shortage_candidate.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_cte_non_traditional_gender_status ( 
	ref_cte_non_traditional_gender_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_cte_non_traditional_gender_status_id PRIMARY KEY ( ref_cte_non_traditional_gender_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_cte_non_traditional_gender_status IS 'An indication of whether CTE participants were members of an underrepresented gender group (where one gender comprises less than 25 percent of the persons employed in those occupations or field of work). [CEDS Element: Career Technical Education Nontraditional Gender Status, ID:000588]';

COMMENT ON COLUMN ceds6sc_rdx.ref_cte_non_traditional_gender_status.ref_cte_non_traditional_gender_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_cte_non_traditional_gender_status.description IS 'An indication of whether CTE participants were members of an underrepresented gender group (where one gender comprises less than 25 percent of the persons employed in those occupations or field of work). [CEDS Element: Career Technical Education Nontraditional Gender Status, ID:000588]';

COMMENT ON COLUMN ceds6sc_rdx.ref_cte_non_traditional_gender_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_cte_non_traditional_gender_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_dental_insurance_coverage_type ( 
	ref_dental_insurance_coverage_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_dental_insurance_coverage_type PRIMARY KEY ( ref_dental_insurance_coverage_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_dental_insurance_coverage_type IS 'The source of insurance covering an person''s dental care. [CEDS Element: Dental Insurance Coverage, ID:000336]';

COMMENT ON COLUMN ceds6sc_rdx.ref_dental_insurance_coverage_type.ref_dental_insurance_coverage_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_dental_insurance_coverage_type.description IS 'The source of insurance covering an person''s dental care. [CEDS Element: Dental Insurance Coverage, ID:000336]';

COMMENT ON COLUMN ceds6sc_rdx.ref_dental_insurance_coverage_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_dental_insurance_coverage_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_dependency_status ( 
	ref_dependency_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_dependency_status PRIMARY KEY ( ref_dependency_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_dependency_status IS 'A person''s classification as dependent or independent with regards to eligibility for Title IV Federal Student aid. [CEDS Element: Dependency Status, ID:000079]';

COMMENT ON COLUMN ceds6sc_rdx.ref_dependency_status.ref_dependency_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_dependency_status.description IS 'A person''s classification as dependent or independent with regards to eligibility for Title IV Federal Student aid. [CEDS Element: Dependency Status, ID:000079]';

COMMENT ON COLUMN ceds6sc_rdx.ref_dependency_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_dependency_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_developmental_education_type ( 
	ref_developmental_education_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_developmental_education_type PRIMARY KEY ( ref_developmental_education_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_developmental_education_type IS 'An indicator of the category of developmental education.[CEDS Element: Developmental Education Type, ID:001589]';

COMMENT ON COLUMN ceds6sc_rdx.ref_developmental_education_type.ref_developmental_education_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_developmental_education_type.description IS 'An indicator of the category of developmental education. [CEDS Element: Developmental Education Type, ID:001589]';

COMMENT ON COLUMN ceds6sc_rdx.ref_developmental_education_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_developmental_education_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_directory_information_block_status ( 
	ref_directory_information_block_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_directory_information_block_status PRIMARY KEY ( ref_directory_information_block_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_directory_information_block_status IS 'An indication of whether a individual requested a Family Education Rights and Privacy Act (FERPA) block to withhold the release of the person''s directory information.[CEDS Element: Directory Information Block Status, ID:001590]';

COMMENT ON COLUMN ceds6sc_rdx.ref_directory_information_block_status.ref_directory_information_block_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_directory_information_block_status.description IS 'An indication of whether a individual requested a Family Education Rights and Privacy Act (FERPA) block to withhold the release of the person''s directory information. [CEDS Element: Directory Information Block Status, ID:001590]';

COMMENT ON COLUMN ceds6sc_rdx.ref_directory_information_block_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_directory_information_block_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_disability_condition_type ( 
	ref_disability_condition_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_disability_condition_type PRIMARY KEY ( ref_disability_condition_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_disability_condition_type IS 'Codes identifying the set of disability conditions. [CEDS Element: Disability Condition Type, ID:001320]';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_condition_type.ref_disability_condition_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_condition_type.description IS 'Codes identifying the set of disability conditions. [CEDS Element: Disability Condition Type, ID:001320]';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_condition_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_condition_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_disability_type ( 
	ref_disability_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_disability_type PRIMARY KEY ( ref_disability_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_disability_type IS 'The disability condition that best describes a person''s impairment. [CEDS Element: Primary Disability Type, ID:000218]';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_type.ref_disability_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_type.description IS 'The disability condition that best describes a person''s impairment. [CEDS Element: Primary Disability Type, ID:000218]';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_discipline_length_difference_reason ( 
	ref_discipline_length_difference_reason_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_discipline_length_difference_reason PRIMARY KEY ( ref_discipline_length_difference_reason_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_discipline_length_difference_reason IS 'The reason for the difference, if any, between the official and actual lengths of a student’s disciplinary assignment. [CEDS Element: Discipline Action Length Difference Reason, ID:000609]';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_length_difference_reason.ref_discipline_length_difference_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_length_difference_reason.description IS 'The reason for the difference, if any, between the official and actual lengths of a student’s disciplinary assignment. [CEDS Element: Discipline Action Length Difference Reason, ID:000609]';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_length_difference_reason.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_length_difference_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_discipline_method_of_cwd ( 
	ref_discipline_method_of_cwd_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_discipline_method_of_cwd PRIMARY KEY ( ref_discipline_method_of_cwd_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_discipline_method_of_cwd IS 'The type of suspension or expulsion used for the discipline of children with disabilities. [CEDS Element: Discipline Method of Children with Disabilities, ID:000538]';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_method_of_cwd.ref_discipline_method_of_cwd_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_method_of_cwd.description IS 'The type of suspension or expulsion used for the discipline of children with disabilities. [CEDS Element: Discipline Method of Children with Disabilities, ID:000538]';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_method_of_cwd.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_method_of_cwd.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_distance_education_course_enrollment ( 
	ref_distance_education_course_enrollment_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_distance_education_course_enr PRIMARY KEY ( ref_distance_education_course_enrollment_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_distance_education_course_enrollment IS 'An individual''s enrollment in a course or courses in which the instructional content is delivered exclusively via distance education.  Distance education is education that uses one or more technologies to deliver instruction to students who are separated from the instructor and to support regular and substantive interaction between the students and the instructor synchronously or asynchronously.  Technologies used for instruction may include: Internet; one-way and two-way transmissions through open broadcasts, closed circuit, cable, microwave, broadband lines, fiber optics, satellite or wireless communication devices; audio conferencing; and video cassette, DVDs, and CD-ROMs, if the cassette, DVDs, and CD-ROMs are used in a course in conjunction with the technologies listed above. [CEDS Element: Distance Education Course Enrollment, ID:000728]';

COMMENT ON COLUMN ceds6sc_rdx.ref_distance_education_course_enrollment.ref_distance_education_course_enrollment_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_distance_education_course_enrollment.description IS 'An individual''s enrollment in a course or courses in which the instructional content is delivered exclusively via distance education.  Distance education is education that uses one or more technologies to deliver instruction to students who are separated from the instructor and to support regular and substantive interaction between the students and the instructor synchronously or asynchronously.  Technologies used for instruction may include: Internet; one-way and two-way transmissions through open broadcasts, closed circuit, cable, microwave, broadband lines, fiber optics, satellite or wireless communication devices; audio conferencing; and video cassette, DVDs, and CD-ROMs, if the cassette, DVDs, and CD-ROMs are used in a course in conjunction with the technologies listed above. [CEDS Element: Distance Education Course Enrollment, ID:000728]';

COMMENT ON COLUMN ceds6sc_rdx.ref_distance_education_course_enrollment.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_distance_education_course_enrollment.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_dqpcategories_of_learning ( 
	ref_dqpcategories_of_learning_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_dqpcategories_of_learning PRIMARY KEY ( ref_dqpcategories_of_learning_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_dqpcategories_of_learning IS 'The Lumina Foundation''s Degree Qualifications Profile offers reference points for what students should know and be able to do upon completion of associate, bachelor''s and master''s degrees – in any field of study. The DQP Categories of Learning provide a profile of what degrees mean within which specific proficiencies may be defined.[CEDS Element: DQP Categories of Learning, ID:001641]';

COMMENT ON COLUMN ceds6sc_rdx.ref_dqpcategories_of_learning.ref_dqpcategories_of_learning_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_dqpcategories_of_learning.description IS 'The Lumina Foundation''s Degree Qualifications Profile offers reference points for what students should know and be able to do upon completion of associate, bachelor''s and master''s degrees – in any field of study. The DQP Categories of Learning provide a profile of what degrees mean within which specific proficiencies may be defined. [CEDS Element: DQP Categories of Learning, ID:001641]';

COMMENT ON COLUMN ceds6sc_rdx.ref_dqpcategories_of_learning.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_dqpcategories_of_learning.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_early_childhood_program_enrollment_type ( 
	ref_early_childhood_program_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_early_learning_program_type PRIMARY KEY ( ref_early_childhood_program_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_early_childhood_program_enrollment_type IS 'The system outlining activities and procedures based on a set of required services and standards in which the child is enrolled. [CEDS Element: Early Childhood Program Enrollment Type, ID:000829]';

COMMENT ON COLUMN ceds6sc_rdx.ref_early_childhood_program_enrollment_type.ref_early_childhood_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_early_childhood_program_enrollment_type.description IS 'The system outlining activities and procedures based on a set of required services and standards in which the child is enrolled. [CEDS Element: Early Childhood Program Enrollment Type, ID:000829]';

COMMENT ON COLUMN ceds6sc_rdx.ref_early_childhood_program_enrollment_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_early_childhood_program_enrollment_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_education_level ( 
	ref_education_level_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	ref_education_level_type_id integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_education_level PRIMARY KEY ( ref_education_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_education_level IS 'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). [CEDS Elements: Highest Level of Education Completed (000141),  Learning Resource Education Level (001246)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_education_level.ref_education_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_education_level.description IS 'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). [CEDS Elements: Highest Level of Education Completed (000141),  Learning Resource Education Level (001246), Learning Standard Item Education Level (000725), Paternal Guardian Education (001230), Maternal Guardian Education (001229)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_education_level.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_education_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_education_verification_method ( 
	ref_education_verification_method_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_education_verification_method PRIMARY KEY ( ref_education_verification_method_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_education_verification_method IS 'The method by which the formal education is verified.[CEDS Element: Education Verification Method, ID:001607]';

COMMENT ON COLUMN ceds6sc_rdx.ref_education_verification_method.ref_education_verification_method_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_education_verification_method.description IS 'The method by which the formal education is verified. [CEDS Element: Education Verification Method, ID:001607]';

COMMENT ON COLUMN ceds6sc_rdx.ref_education_verification_method.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_education_verification_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_education_staff_classification ( 
	ref_el_education_staff_classification_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_education_staff_classification PRIMARY KEY ( ref_el_education_staff_classification_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_education_staff_classification IS 'The title/role of employment, official status, or rank of education staff[CEDS Element: Early Learning Education Staff Classification, ID:001602]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_education_staff_classification.ref_el_education_staff_classification_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_education_staff_classification.description IS 'The title/role of employment, official status, or rank of education staff [CEDS Element: Early Learning Education Staff Classification, ID:001602]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_education_staff_classification.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_education_staff_classification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_facility_licensing_status ( 
	ref_el_facility_licensing_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_facility_licensing_status PRIMARY KEY ( ref_el_facility_licensing_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_facility_licensing_status IS 'The status of the facility license. [CEDS Element: Facility Licensing Status, ID:000984]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_facility_licensing_status.ref_el_facility_licensing_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_facility_licensing_status.description IS 'The status of the facility license. [CEDS Element: Facility Licensing Status, ID:000984]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_facility_licensing_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_facility_licensing_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_group_size_standard_met ( 
	ref_el_group_size_standard_met_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_group_size_standard_met PRIMARY KEY ( ref_el_group_size_standard_met_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_group_size_standard_met IS 'An indication of whether a program meets NAEYC or NAFCC standards for infant group sizes. [CEDS Element: Early Learning Group Size Standards Met, ID:000824]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_group_size_standard_met.ref_el_group_size_standard_met_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_group_size_standard_met.description IS 'An indication of whether a program meets NAEYC or NAFCC standards for infant group sizes. [CEDS Element: Early Learning Group Size Standards Met, ID:000824]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_group_size_standard_met.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_group_size_standard_met.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_local_revenue_source ( 
	ref_el_local_revenue_source_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_local_revenue_source PRIMARY KEY ( ref_el_local_revenue_source_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_local_revenue_source IS 'Funds that originate at the local level, and not from the state or federal level, that contribute to EL program.[CEDS Element: Early Learning Local Revenue Source, ID:001603]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_local_revenue_source.ref_el_local_revenue_source_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_local_revenue_source.description IS 'Funds that originate at the local level, and not from the state or federal level, that contribute to EL program. [CEDS Element: Early Learning Local Revenue Source, ID:001603]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_local_revenue_source.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_local_revenue_source.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_outcome_measurement_level ( 
	ref_el_outcome_measurement_level_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_outcome_measurement_level PRIMARY KEY ( ref_el_outcome_measurement_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_outcome_measurement_level IS 'Use for outcome measures in early learning. [CEDS Element: Early Learning Outcome Measurement Level, ID:001336]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_outcome_measurement_level.ref_el_outcome_measurement_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_outcome_measurement_level.description IS 'Use for outcome measures in early learning. [CEDS Element: Early Learning Outcome Measurement Level, ID:001336]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_outcome_measurement_level.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_outcome_measurement_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_program_eligibility ( 
	ref_el_program_eligibility_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_el_program_eligibility PRIMARY KEY ( ref_el_program_eligibility_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_program_eligibility IS 'Category under which the person is eligible for an early childhood program or service. [CEDS Element: Early Learning Program Eligibility Category, ID:000304]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_program_eligibility.ref_el_program_eligibility_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_program_eligibility.description IS 'Category under which the person is eligible for an early childhood program or service. [CEDS Element: Early Learning Program Eligibility Category, ID:000304]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_program_eligibility.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_program_eligibility.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_program_license_status ( 
	ref_el_program_license_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_program_license_status PRIMARY KEY ( ref_el_program_license_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_program_license_status IS 'The current licensing status for an early learning program. [CEDS Element: Early Learning Program Licensing Status, ID:000828]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_program_license_status.ref_el_program_license_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_program_license_status.description IS 'The current licensing status for an early learning program. [CEDS Element: Early Learning Program Licensing Status, ID:000828]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_program_license_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_program_license_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_service_type ( 
	ref_el_service_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_service_type PRIMARY KEY ( ref_el_service_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_service_type IS 'A type of service provided to a child.[CEDS Element: Early Learning Service Type, ID:001604]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_service_type.ref_el_service_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_service_type.description IS 'A type of service provided to a child. [CEDS Element: Early Learning Service Type, ID:001604]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_service_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_service_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_trainer_core_knowledge_area ( 
	ref_el_trainer_core_knowledge_area_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_el_trainer_core_knowledge_area PRIMARY KEY ( ref_el_trainer_core_knowledge_area_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_trainer_core_knowledge_area IS 'A description of the core knowledge expertise of a trainer of a professional development experience.[CEDS Element: Early Learning Trainer Core Knowledge Area, ID:001606]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_trainer_core_knowledge_area.ref_el_trainer_core_knowledge_area_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_trainer_core_knowledge_area.description IS 'A description of the core knowledge expertise of a trainer of a professional development experience. [CEDS Element: Early Learning Trainer Core Knowledge Area, ID:001606]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_trainer_core_knowledge_area.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_trainer_core_knowledge_area.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_email_type ( 
	ref_email_type_id    integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_email_type PRIMARY KEY ( ref_email_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_email_type IS 'The type of electronic mail (e-mail) address listed for a person or organization. [CEDS Element: Electronic Mail Address Type, ID:000089]';

COMMENT ON COLUMN ceds6sc_rdx.ref_email_type.ref_email_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_email_type.description IS 'The type of electronic mail (e-mail) address listed for a person or organization. [CEDS Element: Electronic Mail Address Type, ID:000089]';

COMMENT ON COLUMN ceds6sc_rdx.ref_email_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_email_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_employed_prior_to_enrollment ( 
	ref_employed_prior_to_enrollment_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_employed_prior_to_enrollment PRIMARY KEY ( ref_employed_prior_to_enrollment_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_employed_prior_to_enrollment IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, before enrolling in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed Prior to Enrollment, ID:001342]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employed_prior_to_enrollment.ref_employed_prior_to_enrollment_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_employed_prior_to_enrollment.description IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, before enrolling in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed Prior to Enrollment, ID:001342]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employed_prior_to_enrollment.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_employed_prior_to_enrollment.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_employment_contract_type ( 
	ref_employment_contract_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_employment_contract_type PRIMARY KEY ( ref_employment_contract_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_employment_contract_type IS 'The type of employment contract used by an institution. [CEDS Element: Contract Type, ID:000737]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_contract_type.ref_employment_contract_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_contract_type.description IS 'The type of employment contract used by an institution. [CEDS Element: Contract Type, ID:000737]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_contract_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_contract_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_employment_separation_reason ( 
	ref_employment_separation_reason_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_employment_separation_reason PRIMARY KEY ( ref_employment_separation_reason_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_employment_separation_reason IS 'The primary reason for the termination of the employment relationship. [CEDS Element: Employment Separation Reason, ID:000620]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_separation_reason.ref_employment_separation_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_separation_reason.description IS 'The primary reason for the termination of the employment relationship. [CEDS Element: Employment Separation Reason, ID:000620]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_separation_reason.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_separation_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_employment_status ( 
	ref_employment_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_employment_status PRIMARY KEY ( ref_employment_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_employment_status IS 'The condition under which a person has agreed to serve an employer. [CEDS Element: Employment Status, ID:000347]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_status.ref_employment_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_status.description IS 'The condition under which a person has agreed to serve an employer. [CEDS Element: Employment Status, ID:000347]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_end_of_term_status ( 
	ref_end_of_term_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_end_of_term_status PRIMARY KEY ( ref_end_of_term_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_end_of_term_status IS 'The nature of the student''s progress at the end of a given school term. [CEDS Element: End of Term Status, ID:000093]';

COMMENT ON COLUMN ceds6sc_rdx.ref_end_of_term_status.ref_end_of_term_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_end_of_term_status.description IS 'The nature of the student''s progress at the end of a given school term. [CEDS Element: End of Term Status, ID:000093]';

COMMENT ON COLUMN ceds6sc_rdx.ref_end_of_term_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_end_of_term_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_entity_type ( 
	ref_entity_type_id   integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_associated_entity_type PRIMARY KEY ( ref_entity_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_entity_type IS 'CEDS entities. Used when the relationship of data requires the associated entity to be specified.';

COMMENT ON COLUMN ceds6sc_rdx.ref_entity_type.ref_entity_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_entity_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_entity_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_environment_setting ( 
	ref_environment_setting_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_environment_setting PRIMARY KEY ( ref_environment_setting_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_environment_setting IS 'The site or setting in which  a person receives care, education, and/or services are provided. [CEDS Element: Early Childhood Setting, ID:000356]';

COMMENT ON COLUMN ceds6sc_rdx.ref_environment_setting.ref_environment_setting_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_environment_setting.description IS 'The site or setting in which  a person receives care, education, and/or services are provided. [CEDS Element: Early Childhood Setting, ID:000356]';

COMMENT ON COLUMN ceds6sc_rdx.ref_environment_setting.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_environment_setting.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ers_rural_urban_continuum_code ( 
	ref_ers_rural_urban_continuum_code_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ers_rural_urban_continuum_code PRIMARY KEY ( ref_ers_rural_urban_continuum_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ers_rural_urban_continuum_code IS 'Rural-Urban Continuum Codes form a classification scheme that distinguishes metropolitan (metro) counties by the population size of their metro area, and nonmetropolitan (nonmetro) counties by degree of urbanization and adjacency to a metro area or areas. The metro and nonmetro categories have been subdivided into three metro and six nonmetro groupings, resulting in a nine-part county codification. The codes allow researchers working with county data to break such data into finer residential groups beyond a simple metro-nonmetro dichotomy, particularly for the analysis of trends in nonmetro areas that may be related to degree of rurality and metro proximity. [CEDS Element: Economic Research Service Rural-Urban Continuum Code, ID:000862]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ers_rural_urban_continuum_code.ref_ers_rural_urban_continuum_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ers_rural_urban_continuum_code.description IS 'Rural-Urban Continuum Codes form a classification scheme that distinguishes metropolitan (metro) counties by the population size of their metro area, and nonmetropolitan (nonmetro) counties by degree of urbanization and adjacency to a metro area or areas. The metro and nonmetro categories have been subdivided into three metro and six nonmetro groupings, resulting in a nine-part county codification. The codes allow researchers working with county data to break such data into finer residential groups beyond a simple metro-nonmetro dichotomy, particularly for the analysis of trends in nonmetro areas that may be related to degree of rurality and metro proximity. [CEDS Element: Economic Research Service Rural-Urban Continuum Code, ID:000862]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ers_rural_urban_continuum_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ers_rural_urban_continuum_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_exit_or_withdrawal_type ( 
	ref_exit_or_withdrawal_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_exit_or_withdrawal_type PRIMARY KEY ( ref_exit_or_withdrawal_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_exit_or_withdrawal_type IS 'The circumstances under which the student exited from membership in an educational institution.  [CEDS Element: Exit or Withdrawal Type, ID:000110]';

COMMENT ON COLUMN ceds6sc_rdx.ref_exit_or_withdrawal_type.ref_exit_or_withdrawal_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_exit_or_withdrawal_type.description IS 'The circumstances under which the student exited from membership in an educational institution.  [CEDS Element: Exit or Withdrawal Type, ID:000110]';

COMMENT ON COLUMN ceds6sc_rdx.ref_exit_or_withdrawal_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_exit_or_withdrawal_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_federal_program_funding_allocation_type ( 
	ref_federal_program_funding_allocation_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_federal_program_funding_allocation_type PRIMARY KEY ( ref_federal_program_funding_allocation_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_federal_program_funding_allocation_type IS 'The type of federal program funding allocation or distribution made. [CEDS Element: Federal Programs Funding Allocation Type, ID:000548]';

COMMENT ON COLUMN ceds6sc_rdx.ref_federal_program_funding_allocation_type.ref_federal_program_funding_allocation_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_federal_program_funding_allocation_type.description IS 'The type of federal program funding allocation or distribution made. [CEDS Element: Federal Programs Funding Allocation Type, ID:000548]';

COMMENT ON COLUMN ceds6sc_rdx.ref_federal_program_funding_allocation_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_federal_program_funding_allocation_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_financial_account_category ( 
	ref_financial_account_category_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_account_category PRIMARY KEY ( ref_financial_account_category_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_financial_account_category IS 'A label for a grouping of financial accounts, based on type and purpose. [CEDS Element: Financial Account Category, ID:001345]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_category.ref_financial_account_category_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_category.description IS 'A label for a grouping of financial accounts, based on type and purpose. [CEDS Element: Financial Account Category, ID:001345]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_category.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_financial_account_program_code ( 
	ref_financial_account_program_code_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_account_program_code PRIMARY KEY ( ref_financial_account_program_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_financial_account_program_code IS 'The code associated with the program category used for financial accounting -- a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives. [CEDS Element: Financial Account Program Code, ID:001349]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_program_code.ref_financial_account_program_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_program_code.description IS 'The code associated with the program category used for financial accounting -- a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives. [CEDS Element: Financial Account Program Code, ID:001349]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_program_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_program_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_financial_aid_application_type ( 
	ref_financial_aid_application_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_aid_appl_type PRIMARY KEY ( ref_financial_aid_application_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_financial_aid_application_type IS 'The type of financial application completed by an individual. [CEDS Element: Financial Aid Application Type, ID:001223]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_application_type.ref_financial_aid_application_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_application_type.description IS 'The type of financial application completed by an individual. [CEDS Element: Financial Aid Application Type, ID:001223]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_application_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_application_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_financial_aid_award_type ( 
	ref_financial_aid_award_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_aid_award_type PRIMARY KEY ( ref_financial_aid_award_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_financial_aid_award_type IS 'The classification of financial aid awarded to a person for the academic term/year. [CEDS Element: Financial Aid Award Type, ID:000113]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_award_type.ref_financial_aid_award_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_award_type.description IS 'The classification of financial aid awarded to a person for the academic term/year. [CEDS Element: Financial Aid Award Type, ID:000113]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_award_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_award_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_financial_aid_veterans_benefit_type ( 
	ref_financial_aid_veterans_benefit_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_aid_veterans_benefit_type PRIMARY KEY ( ref_financial_aid_veterans_benefit_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_financial_aid_veterans_benefit_type IS 'The type of Veteran''s benefits a person is receiving.[CEDS Element: Financial Aid Veteran’s Benefit Type, ID:001610]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_veterans_benefit_type.ref_financial_aid_veterans_benefit_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_veterans_benefit_type.description IS 'The type of Veteran''s benefits a person is receiving. [CEDS Element: Financial Aid Veteran’s Benefit Type, ID:001610]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_veterans_benefit_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_veterans_benefit_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_financial_expenditure_level_of_instruction_code ( 
	ref_financial_expenditure_level_of_instruction_code_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_expenditure_level_of_instruction_code PRIMARY KEY ( ref_financial_expenditure_level_of_instruction_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_financial_expenditure_level_of_instruction_code IS 'A classification of the levels of instruction to which an expenditure is applied.[CEDS Element: Financial Expenditure Level of Instruction Code, ID:001555]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_expenditure_level_of_instruction_code.ref_financial_expenditure_level_of_instruction_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_expenditure_level_of_instruction_code.description IS 'A classification of the levels of instruction to which an expenditure is applied. [CEDS Element: Financial Expenditure Level of Instruction Code, ID:001555]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_expenditure_level_of_instruction_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_expenditure_level_of_instruction_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_firearm_type ( 
	ref_firearm_type_id  integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_firearm_type PRIMARY KEY ( ref_firearm_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_firearm_type IS 'The type of firearm. [CEDS Element: Firearm Type, ID:000557]';

COMMENT ON COLUMN ceds6sc_rdx.ref_firearm_type.ref_firearm_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_firearm_type.description IS 'The type of firearm. [CEDS Element: Firearm Type, ID:000557]';

COMMENT ON COLUMN ceds6sc_rdx.ref_firearm_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_firearm_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_food_service_participation ( 
	ref_food_service_participation_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_food_service_participation PRIMARY KEY ( ref_food_service_participation_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_food_service_participation IS 'An indication of a student''s participation in free, reduced price, full price breakfast, lunch, snack, supper, and milk programs. [CEDS Element: Participation in School Food Service Programs, ID:000325]';

COMMENT ON COLUMN ceds6sc_rdx.ref_food_service_participation.ref_food_service_participation_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_food_service_participation.description IS 'An indication of a student''s participation in free, reduced price, full price breakfast, lunch, snack, supper, and milk programs. [CEDS Element: Participation in School Food Service Programs, ID:000325]';

COMMENT ON COLUMN ceds6sc_rdx.ref_food_service_participation.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_food_service_participation.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_full_time_status ( 
	ref_full_time_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_full_time_status PRIMARY KEY ( ref_full_time_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_full_time_status IS 'An indication of whether an individual is employed for a standard number of hours (as determined by civil or organizational policies) in a week, month, or other period of time. [CEDS Element: Full-time Status, ID:000736]';

COMMENT ON COLUMN ceds6sc_rdx.ref_full_time_status.ref_full_time_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_full_time_status.description IS 'An indication of whether an individual is employed for a standard number of hours (as determined by civil or organizational policies) in a week, month, or other period of time. [CEDS Element: Full-time Status, ID:000736]';

COMMENT ON COLUMN ceds6sc_rdx.ref_full_time_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_full_time_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_gpa_weighted_indicator ( 
	ref_gpa_weighted_indicator_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_gpa_weighted_indicator PRIMARY KEY ( ref_gpa_weighted_indicator_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_gpa_weighted_indicator IS 'An indication of whether the reported GPA is weighted or unweighted. [CEDS Element: Grade Point Average Weighted Indicator, ID:000123]';

COMMENT ON COLUMN ceds6sc_rdx.ref_gpa_weighted_indicator.ref_gpa_weighted_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_gpa_weighted_indicator.description IS 'An indication of whether the reported GPA is weighted or unweighted. [CEDS Element: Grade Point Average Weighted Indicator, ID:000123]';

COMMENT ON COLUMN ceds6sc_rdx.ref_gpa_weighted_indicator.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_gpa_weighted_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_grade_level_type ( 
	ref_grade_level_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_grade_level_type PRIMARY KEY ( ref_grade_level_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_grade_level_type IS 'List of identification system types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_grade_level_type.ref_grade_level_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_grade_level_type.description IS 'List of grade level types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_grade_level_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_grade_level_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_graduate_assistant_ipeds_category ( 
	ref_graduate_assistant_ipeds_category_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_graduate_assist_ipeds_category PRIMARY KEY ( ref_graduate_assistant_ipeds_category_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_graduate_assistant_ipeds_category IS 'The Integrated Postsecondary Education Data System (IPEDS) occupational categories used to report graduate assistants. [CEDS Element: Graduate Assistant IPEDS Occupation Category, ID:000743]';

COMMENT ON COLUMN ceds6sc_rdx.ref_graduate_assistant_ipeds_category.ref_graduate_assistant_ipeds_category_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_graduate_assistant_ipeds_category.description IS 'The Integrated Postsecondary Education Data System (IPEDS) occupational categories used to report graduate assistants. [CEDS Element: Graduate Assistant IPEDS Occupation Category, ID:000743]';

COMMENT ON COLUMN ceds6sc_rdx.ref_graduate_assistant_ipeds_category.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_graduate_assistant_ipeds_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_gun_free_schools_act_reporting_status ( 
	ref_gun_free_schools_act_status_reporting_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_gun_free_schools_act_status_reporting PRIMARY KEY ( ref_gun_free_schools_act_status_reporting_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_gun_free_schools_act_reporting_status IS 'An indication of whether the school or local education agency (LEA) submitted a Gun-Free Schools Act (GFSA) of 1994 report to the state, as defined by Title 18, Section 921. [CEDS Element: Gun Free Schools Act Reporting Status, ID:000134]';

COMMENT ON COLUMN ceds6sc_rdx.ref_gun_free_schools_act_reporting_status.ref_gun_free_schools_act_status_reporting_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_gun_free_schools_act_reporting_status.description IS 'An indication of whether the school or local education agency (LEA) submitted a Gun-Free Schools Act (GFSA) of 1994 report to the state, as defined by Title 18, Section 921. [CEDS Element: Gun Free Schools Act Reporting Status, ID:000134]';

COMMENT ON COLUMN ceds6sc_rdx.ref_gun_free_schools_act_reporting_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_gun_free_schools_act_reporting_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_hearing_screening_status ( 
	ref_hearing_screening_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_hearing_screen PRIMARY KEY ( ref_hearing_screening_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_hearing_screening_status IS 'Status of an examination used to measure a person''s ability to perceive sounds. [CEDS Element: Hearing Screening Status, ID:000309]';

COMMENT ON COLUMN ceds6sc_rdx.ref_hearing_screening_status.ref_hearing_screening_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_hearing_screening_status.description IS 'Status of an examination used to measure a person''s ability to perceive sounds. [CEDS Element: Hearing Screening Status, ID:000309]';

COMMENT ON COLUMN ceds6sc_rdx.ref_hearing_screening_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_hearing_screening_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_high_school_diploma_type ( 
	ref_high_school_diploma_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_high_school_diploma_type PRIMARY KEY ( ref_high_school_diploma_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_high_school_diploma_type IS 'The type of diploma/credential that is awarded to a person in recognition of his/her completion of the curricular requirements. [CEDS Element: High School Diploma Type, ID:000138]';

COMMENT ON COLUMN ceds6sc_rdx.ref_high_school_diploma_type.ref_high_school_diploma_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_high_school_diploma_type.description IS 'The type of diploma/credential that is awarded to a person in recognition of his/her completion of the curricular requirements. [CEDS Element: High School Diploma Type, ID:000138]';

COMMENT ON COLUMN ceds6sc_rdx.ref_high_school_diploma_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_high_school_diploma_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_higher_education_institution_accreditation_status ( 
	ref_higher_education_institution_accreditation_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_higher_education_institution_accreditation_status PRIMARY KEY ( ref_higher_education_institution_accreditation_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_higher_education_institution_accreditation_status IS 'An indication of the accreditation status of a higher education institution. [CEDS Element: Higher Education Institution Accreditation Status, ID:000818]';

COMMENT ON COLUMN ceds6sc_rdx.ref_higher_education_institution_accreditation_status.ref_higher_education_institution_accreditation_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_higher_education_institution_accreditation_status.description IS 'An indication of the accreditation status of a higher education institution. [CEDS Element: Higher Education Institution Accreditation Status, ID:000818]';

COMMENT ON COLUMN ceds6sc_rdx.ref_higher_education_institution_accreditation_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_higher_education_institution_accreditation_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_idea_discipline_method_firearm ( 
	ref_idea_discipline_method_firearm_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_idea_discipline_method_firearm PRIMARY KEY ( ref_idea_discipline_method_firearm_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_idea_discipline_method_firearm IS 'The methods used to discipline students who are children with disabilities (IDEA) involved in firearms and other outcomes of firearms incidents. [CEDS Element: IDEA Discipline Method for Firearms Incidents, ID:000556]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_discipline_method_firearm.ref_idea_discipline_method_firearm_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_discipline_method_firearm.description IS 'The methods used to discipline students who are children with disabilities (IDEA) involved in firearms and other outcomes of firearms incidents. [CEDS Element: IDEA Discipline Method for Firearms Incidents, ID:000556]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_discipline_method_firearm.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_discipline_method_firearm.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_idea_educational_environment_school_age ( 
	ref_ideseducational_environment_school_age integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_idea_educational_environment_school_age PRIMARY KEY ( ref_ideseducational_environment_school_age )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_idea_educational_environment_school_age IS 'The setting in which children ages 6 through 21, receive special education and related services. [CEDS Element: IDEA Educational Environment for School Age, ID:000535]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_educational_environment_school_age.ref_ideseducational_environment_school_age IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_educational_environment_school_age.description IS 'The setting in which children ages 6 through 21, receive special education and related services. [CEDS Element: IDEA Educational Environment for School Age, ID:000535]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_educational_environment_school_age.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_educational_environment_school_age.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_idea_iep_status ( 
	ref_idea_iep_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_idea_iep_status PRIMARY KEY ( ref_idea_iep_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_idea_iep_status IS 'The status of an individualized services plan for a specified reporting period or on a specified date. [CEDS Element: IDEA IEP Status, ID:001501]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_iep_status.ref_idea_iep_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_iep_status.description IS 'The status of an individualized services plan for a specified reporting period or on a specified date. [CEDS Element: IDEA IEP Status, ID:001501]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_iep_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_iep_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_idea_interim_removal_reason ( 
	ref_idea_interim_removal_reason_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_idea_interim_removal_reason PRIMARY KEY ( ref_idea_interim_removal_reason_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_idea_interim_removal_reason IS 'The reasons why children with disabilities were unilaterally removed from their current educational placement to an interim alternative educational setting. [CEDS Element: IDEA Interim Removal Reason, ID:000539]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_interim_removal_reason.ref_idea_interim_removal_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_interim_removal_reason.description IS 'The reasons why children with disabilities were unilaterally removed from their current educational placement to an interim alternative educational setting. [CEDS Element: IDEA Interim Removal Reason, ID:000539]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_interim_removal_reason.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_interim_removal_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_incident_behavior ( 
	ref_incident_behavior_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_incident_behavior PRIMARY KEY ( ref_incident_behavior_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_incident_behavior IS 'Categories of behavior coded for use in describing an incident. [CEDS Element: Incident Behavior, ID:000509]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_behavior.ref_incident_behavior_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_behavior.description IS 'Categories of behavior coded for use in describing an incident. [CEDS Element: Incident Behavior, ID:000509]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_behavior.code IS 'A code or abbeviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_behavior.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_incident_injury_type ( 
	ref_incident_injury_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_incident_injury_type PRIMARY KEY ( ref_incident_injury_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_incident_injury_type IS 'An indication of the occurrence of physical injury to participants involved in the incident and, if so, the level of injury sustained. [CEDS Element: Incident Injury Type, ID:000510]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_injury_type.ref_incident_injury_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_injury_type.description IS 'An indication of the occurrence of physical injury to participants involved in the incident and, if so, the level of injury sustained. [CEDS Element: Incident Injury Type, ID:000510]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_injury_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_injury_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_incident_multiple_offense_type ( 
	ref_incident_multiple_offense_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_incident_multiple_offense_type PRIMARY KEY ( ref_incident_multiple_offense_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_incident_multiple_offense_type IS 'An indication of whether the offense was primary or secondary in nature when a single incident included more than one type of offense. [CEDS Element: Incident Multiple Offense Type, ID:001369]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_multiple_offense_type.ref_incident_multiple_offense_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_multiple_offense_type.description IS 'An indication of whether the offense was primary or secondary in nature when a single incident included more than one type of offense. [CEDS Element: Incident Multiple Offense Type, ID:001369]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_multiple_offense_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_multiple_offense_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_incident_person_role_type ( 
	ref_incident_person_role_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_incident_person_role_type PRIMARY KEY ( ref_incident_person_role_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_incident_person_role_type IS 'The role or type of participation of a person in a discipline incident. [CEDS Element: Incident Person Role Type, ID:001373]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_person_role_type.ref_incident_person_role_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_person_role_type.description IS 'The role or type of participation of a person in a discipline incident. [CEDS Element: Incident Person Role Type, ID:001373]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_person_role_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_person_role_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_incident_reporter_type ( 
	ref_incident_reporter_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_incident_reporter_type PRIMARY KEY ( ref_incident_reporter_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_incident_reporter_type IS 'Information on the type of person who reported the incident. When known and/or if useful, use a more specific option code (e.g., counselor rather than professional staff). [CEDS Element: Incident Reporter Type, ID:000506]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_reporter_type.ref_incident_reporter_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_reporter_type.description IS 'Information on the type of person who reported the incident. When known and/or if useful, use a more specific option code (e.g., counselor rather than professional staff). [CEDS Element: Incident Reporter Type, ID:000506]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_reporter_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_reporter_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_income_calculation_method ( 
	ref_income_calculation_method_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_income_calculation PRIMARY KEY ( ref_income_calculation_method_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_income_calculation_method IS 'The calculation method used by a program to determine total family income. [CEDS Element: Income Calculation Method, ID:000334]';

COMMENT ON COLUMN ceds6sc_rdx.ref_income_calculation_method.ref_income_calculation_method_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_income_calculation_method.description IS 'The calculation method used by a program to determine total family income. [CEDS Element: Income Calculation Method, ID:000334]';

COMMENT ON COLUMN ceds6sc_rdx.ref_income_calculation_method.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_income_calculation_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_individualized_program_date_type ( 
	ref_individualized_program_date_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_individualized_program_date_type PRIMARY KEY ( ref_individualized_program_date_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_individualized_program_date_type IS 'An indication of the significance of a date to an individualized program. [CEDS Element: Individualized Program Date Type, ID:001231]';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_date_type.ref_individualized_program_date_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_date_type.description IS 'An indication of the significance of a date to an individualized program. [CEDS Element: Individualized Program Date Type, ID:001231]';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_date_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_date_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_individualized_program_planned_service_type ( 
	ref_individualized_program_planned_service_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_individualized_program_planned_service_type PRIMARY KEY ( ref_individualized_program_planned_service_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_individualized_program_planned_service_type IS 'The types of service that adapts the curriculum, materials, or instruction for students identified as needing special education because of a delay or disability. [CEDS Element: Individualized Program Planned Service Type, ID:001383]';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_planned_service_type.ref_individualized_program_planned_service_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_planned_service_type.description IS 'The types of service that adapts the curriculum, materials, or instruction for students identified as needing special education because of a delay or disability. [CEDS Element: Individualized Program Planned Service Type, ID:001383]';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_planned_service_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_planned_service_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_individualized_program_type ( 
	ref_individualized_program_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_individualized_program_type PRIMARY KEY ( ref_individualized_program_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_individualized_program_type IS 'A designation of the type of program developed for a student. [CEDS Element: Individualized Program Type, ID:000320]';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_type.ref_individualized_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_type.description IS 'A designation of the type of program developed for a student. [CEDS Element: Individualized Program Type, ID:000320]';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_instruction_credit_type ( 
	ref_instruction_credit_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_instruction_credit_type PRIMARY KEY ( ref_instruction_credit_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_instruction_credit_type IS 'A designation of the type(s) of instruction being delivered by staff whose primary responsibility is instruction.  Instruction that is for credit can be applied toward the requirements for a postsecondary degree, diploma, certificate or other formal award. [CEDS Element: Instruction Credit Type, ID:000741]';

COMMENT ON COLUMN ceds6sc_rdx.ref_instruction_credit_type.ref_instruction_credit_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_instruction_credit_type.description IS 'A designation of the type(s) of instruction being delivered by staff whose primary responsibility is instruction.  Instruction that is for credit can be applied toward the requirements for a postsecondary degree, diploma, certificate or other formal award. [CEDS Element: Instruction Credit Type, ID:000741]';

COMMENT ON COLUMN ceds6sc_rdx.ref_instruction_credit_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_instruction_credit_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_instructional_activity_hours ( 
	ref_instructional_activity_hours_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_instructional_activity_hours PRIMARY KEY ( ref_instructional_activity_hours_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_instructional_activity_hours IS 'The unit of measure of student instructional activity. [CEDS Element: Instructional Activity Hours Type, ID:000169]';

COMMENT ON COLUMN ceds6sc_rdx.ref_instructional_activity_hours.ref_instructional_activity_hours_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_instructional_activity_hours.description IS 'The unit of measure of student instructional activity. [CEDS Element: Instructional Activity Hours Type, ID:000169]';

COMMENT ON COLUMN ceds6sc_rdx.ref_instructional_activity_hours.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_instructional_activity_hours.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_instructional_staff_faculty_tenure ( 
	ref_instructional_staff_faculty_tenure_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_instruct_staff_faculty_tenure PRIMARY KEY ( ref_instructional_staff_faculty_tenure_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_instructional_staff_faculty_tenure IS 'An indicator of the type of faculty status a person has if, by institutional definition, a staff member has faculty status. [CEDS Element: Instructional Staff Faculty Tenure Status, ID:000739]';

COMMENT ON COLUMN ceds6sc_rdx.ref_instructional_staff_faculty_tenure.ref_instructional_staff_faculty_tenure_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_instructional_staff_faculty_tenure.description IS 'An indicator of the type of faculty status a person has if, by institutional definition, a staff member has faculty status. [CEDS Element: Instructional Staff Faculty Tenure Status, ID:000739]';

COMMENT ON COLUMN ceds6sc_rdx.ref_instructional_staff_faculty_tenure.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_instructional_staff_faculty_tenure.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_internet_access ( 
	ref_internet_access_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_internet_access PRIMARY KEY ( ref_internet_access_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_internet_access IS 'The type of internet access available. [CEDS Element: Internet Access, ID:000587]';

COMMENT ON COLUMN ceds6sc_rdx.ref_internet_access.ref_internet_access_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_internet_access.description IS 'The type of internet access available. [CEDS Element: Internet Access, ID:000587]';

COMMENT ON COLUMN ceds6sc_rdx.ref_internet_access.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_internet_access.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_iso6392_language ( 
	ref_iso6392_language_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_iso6392_language PRIMARY KEY ( ref_iso6392_language_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_iso6392_language IS 'The code for the specific language or dialect that a person uses to communicate.[CEDS Element: ISO 639-2 Language Code, ID:000317]';

COMMENT ON COLUMN ceds6sc_rdx.ref_iso6392_language.ref_iso6392_language_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_iso6392_language.description IS 'The code for the specific language or dialect that a person uses to communicate. [CEDS Element: ISO 639-2 Language Code, ID:000317]';

COMMENT ON COLUMN ceds6sc_rdx.ref_iso6392_language.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_iso6392_language.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_iso6395_language_family ( 
	ref_iso6395_language_family_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_iso6395_language_family PRIMARY KEY ( ref_iso6395_language_family_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_iso6395_language_family IS 'A code for a specific language family, which supplements the language groups and families in the ISO 639-2 Language Code.[CEDS Element: ISO 639-5 Language Family, ID:001638]';

COMMENT ON COLUMN ceds6sc_rdx.ref_iso6395_language_family.ref_iso6395_language_family_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_iso6395_language_family.description IS 'A code for a specific language family, which supplements the language groups and families in the ISO 639-2 Language Code. [CEDS Element: ISO 639-5 Language Family, ID:001638]';

COMMENT ON COLUMN ceds6sc_rdx.ref_iso6395_language_family.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_iso6395_language_family.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_item_response_theory_difficulty_category ( 
	ref_item_response_theory_difficulty_category_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_item_responsse_theory_difficulty_category PRIMARY KEY ( ref_item_response_theory_difficulty_category_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_item_response_theory_difficulty_category IS 'A category for the difficulty of the item based on the Item Response Theory value. [CEDS Element: Assessment Item Response Theory Parameter Difficulty Category, ID:001253]';

COMMENT ON COLUMN ceds6sc_rdx.ref_item_response_theory_difficulty_category.ref_item_response_theory_difficulty_category_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_item_response_theory_difficulty_category.description IS 'A category for the difficulty of the item based on the Item Response Theory value. [CEDS Element: Assessment Item Response Theory Parameter Difficulty Category, ID:001253]';

COMMENT ON COLUMN ceds6sc_rdx.ref_item_response_theory_difficulty_category.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_item_response_theory_difficulty_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_k12_end_of_course_requirement ( 
	ref_k12_end_of_course_requirement_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_k12_end_of_course_requirement PRIMARY KEY ( ref_k12_end_of_course_requirement_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_k12_end_of_course_requirement IS 'An indication that this course has an end of course examination required by the SEA or LEA. [CEDS Element: K12 End of Course Requirement, ID:001386]';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_end_of_course_requirement.ref_k12_end_of_course_requirement_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_end_of_course_requirement.description IS 'An indication that this course has an end of course examination required by the SEA or LEA. [CEDS Element: K12 End of Course Requirement, ID:001386]';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_end_of_course_requirement.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_end_of_course_requirement.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_k12_responsibility_type ( 
	ref_k12_responsibility_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_k12_responsibility_type PRIMARY KEY ( ref_k12_responsibility_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_k12_responsibility_type IS 'The type of services/instruction the organization is responsible for the student. [CEDS Elements: Responsible School Type (000595), Responsible School Identifier (000638), Responsible District Type (000594), Responsible District Identifier (000637), Responsible Organization Type (001467)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_responsibility_type.ref_k12_responsibility_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_responsibility_type.description IS 'The type of services/instruction the organization is responsible for the student. [CEDS Elements: Responsible School Type (000595), Responsible School Identifier (000638), Responsible District Type (000594), Responsible District Identifier (000637), Responsible Organization Type (001467)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_responsibility_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_responsibility_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_language ( 
	ref_language_id      integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           text  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_language PRIMARY KEY ( ref_language_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_language IS 'The specific language or dialect that a person uses to communicate. [CEDS Element: Language Code (000317), Learning Resource Language (000919), Language of Session (001388)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_language.ref_language_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_language.description IS 'The specific language or dialect that a person uses to communicate. [CEDS Element: Language Code (000317), Learning Resource Language (000919)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_language.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_language.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_lea_funds_transfer_type ( 
	ref_lea_funds_transfer_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_lea_funds_transfer_type PRIMARY KEY ( ref_lea_funds_transfer_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_lea_funds_transfer_type IS 'An indication of the type of transfer for an LEAs that transferred funds from an eligible program to another eligible program. [CEDS Element: Local Education Agency Funds Transfer Type, ID:000451]';

COMMENT ON COLUMN ceds6sc_rdx.ref_lea_funds_transfer_type.ref_lea_funds_transfer_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_lea_funds_transfer_type.description IS 'An indication of the type of transfer for an LEAs that transferred funds from an eligible program to another eligible program. [CEDS Element: Local Education Agency Funds Transfer Type, ID:000451]';

COMMENT ON COLUMN ceds6sc_rdx.ref_lea_funds_transfer_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_lea_funds_transfer_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_lea_type ( 
	ref_lea_type_id      integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_lea_type PRIMARY KEY ( ref_lea_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_lea_type IS 'The classification of education agencies within the geographic boundaries of a state according to the level of administrative and operational control. [CEDS Element: Local Education Agency Type, ID:000537]';

COMMENT ON COLUMN ceds6sc_rdx.ref_lea_type.ref_lea_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_lea_type.description IS 'The classification of education agencies within the geographic boundaries of a state according to the level of administrative and operational control. [CEDS Element: Local Education Agency Type, ID:000537]';

COMMENT ON COLUMN ceds6sc_rdx.ref_lea_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_lea_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learner_activity_maximum_time_allowed_units ( 
	ref_learner_activity_maximum_time_allowed_units_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learner_activity_maximum_time_allowed_units PRIMARY KEY ( ref_learner_activity_maximum_time_allowed_units_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learner_activity_maximum_time_allowed_units IS 'The unit of time of the Maximum Time Allowed value. [CEDS Element: Learner Activity Maximum Time Allowed Unit, ID:000945]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learner_activity_maximum_time_allowed_units.ref_learner_activity_maximum_time_allowed_units_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learner_activity_maximum_time_allowed_units.description IS 'The unit of time of the Maximum Time Allowed value. [CEDS Element: Learner Activity Maximum Time Allowed Unit, ID:000945]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learner_activity_maximum_time_allowed_units.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learner_activity_maximum_time_allowed_units.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_access_api_type ( 
	ref_learning_resource_access_api_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_access_api_type PRIMARY KEY ( ref_learning_resource_access_api_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_access_api_type IS 'Indicates that the learning resource is compatible with the referenced accessibility application programming interface (API). [CEDS Element: Learning Resource Access API Type, ID:001389]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_api_type.ref_learning_resource_access_api_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_api_type.description IS 'Indicates that the learning resource is compatible with the referenced accessibility application programming interface (API). [CEDS Element: Learning Resource Access API Type, ID:001389]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_api_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_api_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_access_mode_type ( 
	ref_learning_resource_access_mode_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_access_mode_type PRIMARY KEY ( ref_learning_resource_access_mode_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_access_mode_type IS 'An access mode through which the intellectual content of a described learning resource or adaptation is communicated; if adaptations for the resource are known, the access modes of those adaptations are not included. [CEDS Element: Learning Resource Access Mode Type, ID:001391]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_mode_type.ref_learning_resource_access_mode_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_mode_type.description IS 'An access mode through which the intellectual content of a described learning resource or adaptation is communicated; if adaptations for the resource are known, the access modes of those adaptations are not included. [CEDS Element: Learning Resource Access Mode Type, ID:001391]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_mode_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_mode_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_author_type ( 
	ref_learning_resource_author_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_author_type PRIMARY KEY ( ref_learning_resource_author_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_author_type IS 'The type of entity, organization or person, that authored the learning resource.[CEDS Element: Learning Resource Author Type, ID:001562]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_author_type.ref_learning_resource_author_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_author_type.description IS 'The type of entity, organization or person, that authored the learning resource. [CEDS Element: Learning Resource Author Type, ID:001562]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_author_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_author_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_competency_alignment_type ( 
	ref_learning_resource_competency_alignment_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_competency_alignment_type PRIMARY KEY ( ref_learning_resource_competency_alignment_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_competency_alignment_type IS 'The alignment relationship between the resource and the competency. [CEDS Element: Learning Resource Competency Alignment Type, ID: 00879]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_competency_alignment_type.ref_learning_resource_competency_alignment_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_competency_alignment_type.description IS 'The alignment relationship between the resource and the competency. [CEDS Element: Learning Resource Competency Alignment Type, ID: 00879]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_competency_alignment_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_competency_alignment_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_digital_media_sub_type ( 
	ref_learning_resource_digital_media_sub_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_digital_media_sub_type PRIMARY KEY ( ref_learning_resource_digital_media_sub_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_digital_media_sub_type IS 'The media or file subtype of the digital resource being based on the Media Types and Subtypes, formerly known as MIME types, defined by the Internet Assigned Numbers Authority (IANA). [CEDS Element: Learning Resource Digital Media Sub Type, ID:001396]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_digital_media_sub_type.ref_learning_resource_digital_media_sub_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_digital_media_sub_type.description IS 'The media or file subtype of the digital resource being based on the Media Types and Subtypes, formerly known as MIME types, defined by the Internet Assigned Numbers Authority (IANA). [CEDS Element: Learning Resource Digital Media Sub Type, ID:001396]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_digital_media_sub_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_digital_media_sub_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_educational_use ( 
	ref_learning_resource_educational_use_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_educational_use PRIMARY KEY ( ref_learning_resource_educational_use_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_educational_use IS 'The purpose of the work in the context of education. [CEDS Element: Learning Resource Educational Use, ID:001002]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_educational_use.ref_learning_resource_educational_use_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_educational_use.description IS 'The purpose of the work in the context of education. [CEDS Element: Learning Resource Educational Use, ID:001002]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_educational_use.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_educational_use.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_interaction_mode ( 
	ref_learning_resource_interaction_mode_id integer  NOT NULL,
	description          varchar(150)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_interaction_mode PRIMARY KEY ( ref_learning_resource_interaction_mode_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_interaction_mode IS 'The primary type of interaction, synchronous or asynchronous, defined for the learning resource.[CEDS Element: Learning Resource Interaction Mode, ID:001565]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_interaction_mode.ref_learning_resource_interaction_mode_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_interaction_mode.description IS 'The primary type of interaction, synchronous or asynchronous, defined for the learning resource. [CEDS Element: Learning Resource Interaction Mode, ID:001565]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_interaction_mode.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_interaction_mode.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_media_feature_type ( 
	ref_learning_resource_media_feature_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_media_feature_type PRIMARY KEY ( ref_learning_resource_media_feature_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_media_feature_type IS 'Accessible content features included with the learning resource. [CEDS Element: Learning Resource Media Feature Type, ID:001399]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_media_feature_type.ref_learning_resource_media_feature_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_media_feature_type.description IS 'Accessible content features included with the learning resource. [CEDS Element: Learning Resource Media Feature Type, ID:001399]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_media_feature_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_media_feature_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_type ( 
	ref_learning_resource_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_type PRIMARY KEY ( ref_learning_resource_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_type IS 'The predominate type or kind characterizing the learning resource. [CEDS Element: Learning Resource Type, ID:000928]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_type.ref_learning_resource_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_type.description IS 'The predominate type or kind characterizing the learning resource. [CEDS Element: Learning Resource Type, ID:000928]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_standard_item_association_type ( 
	ref_learning_standard_item_association_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_standard_item_association_type PRIMARY KEY ( ref_learning_standard_item_association_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_standard_item_association_type IS 'Defines the nature of the association between a Learning Standard Item and an associated  data object  such as a Learning Resource, an Assessment Item, or even another Learning Standard Item. [CEDS Elements: Learning Standard Item Association Type (000869), Learning Resource Competency Alignment Type (000879)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_item_association_type.ref_learning_standard_item_association_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_item_association_type.description IS 'Defines the nature of the association between a Learning Standard Item and an associated  data object  such as a Learning Resource, an Assessment Item, or even another Learning Standard Item. [CEDS Elements: Learning Standard Item Association Type (000869), Learning Resource Competency Alignment Type (000879)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_item_association_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_item_association_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_standard_item_testability_type ( 
	ref_learning_standard_item_testability_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_standard_item_testability_type PRIMARY KEY ( ref_learning_standard_item_testability_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_standard_item_testability_type IS 'Indicates if the competency described in the Learning Standard Item Statement can be tested using one or more assessment items. [CEDS Element: Learning Standard Item Testability Type, ID:001411]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_item_testability_type.ref_learning_standard_item_testability_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_item_testability_type.description IS 'Indicates if the competency described in the Learning Standard Item Statement can be tested using one or more assessment items. [CEDS Element: Learning Standard Item Testability Type, ID:001411]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_item_testability_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_item_testability_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_level_of_institution ( 
	ref_level_of_institution_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_level_of_institution PRIMARY KEY ( ref_level_of_institution_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_level_of_institution IS 'A classification of whether a postsecondary institution''s highest level of offering is a program of 4-years or higher (4 year), 2-but-less-than 4-years (2 year), or less than 2-years. [CEDS Element: Level of Institution, ID:000178]';

COMMENT ON COLUMN ceds6sc_rdx.ref_level_of_institution.ref_level_of_institution_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.ref_level_of_institution.description IS 'A classification of whether a postsecondary institution''s highest level of offering is a program of 4-years or higher (4 year), 2-but-less-than 4-years (2 year), or less than 2-years. [CEDS Element: Level of Institution, ID:000178]';

COMMENT ON COLUMN ceds6sc_rdx.ref_level_of_institution.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_level_of_institution.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_literacy_assessment ( 
	ref_literacy_assessment_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_literacy_assessment PRIMARY KEY ( ref_literacy_assessment_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_literacy_assessment IS 'The type of literacy test administered. [CEDS Element: Literacy Assessment Administered Type, ID:000466]';

COMMENT ON COLUMN ceds6sc_rdx.ref_literacy_assessment.ref_literacy_assessment_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_literacy_assessment.description IS 'The type of literacy test administered. [CEDS Element: Literacy Assessment Administered Type, ID:000466]';

COMMENT ON COLUMN ceds6sc_rdx.ref_literacy_assessment.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_literacy_assessment.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_medical_alert_indicator ( 
	ref_medical_alert_indicator_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_med_alert PRIMARY KEY ( ref_medical_alert_indicator_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_medical_alert_indicator IS 'Medical/health condition alert indicators.';

COMMENT ON COLUMN ceds6sc_rdx.ref_medical_alert_indicator.ref_medical_alert_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_medical_alert_indicator.description IS 'Alert indicator for a medical/health condition. [CEDS Element: Medical Alert Indicator, ID:000439]';

COMMENT ON COLUMN ceds6sc_rdx.ref_medical_alert_indicator.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_medical_alert_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_mep_project_based ( 
	ref_mep_project_based_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_mep_project_based PRIMARY KEY ( ref_mep_project_based_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_mep_project_based IS 'Indicates the type of MEP project based on the location where the MEP services are held. [CEDS Element: Migrant Education Program Project Based, ID:000440]';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_project_based.ref_mep_project_based_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_project_based.description IS 'Indicates the type of MEP project based on the location where the MEP services are held. [CEDS Element: Migrant Education Program Project Based, ID:000440]';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_project_based.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_project_based.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_mep_service_type ( 
	ref_mep_service_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_mep_service_type PRIMARY KEY ( ref_mep_service_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_mep_service_type IS 'The type of services received by participating migrant students in the migrant education program (MEP). [CEDS Element: Migrant Education Program Services Type, ID:000186]';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_service_type.ref_mep_service_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_service_type.description IS 'The type of services received by participating migrant students in the migrant education program (MEP). [CEDS Element: Migrant Education Program Services Type, ID:000186]';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_service_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_service_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_mep_staff_category ( 
	ref_mep_staff_category_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_mep_staff_category PRIMARY KEY ( ref_mep_staff_category_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_mep_staff_category IS 'Titles of employment, official status, or rank of staff working in the Migrant Education Program (MEP). [CEDS Element: Migrant Education Program Staff Category, ID:000188]';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_staff_category.ref_mep_staff_category_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_staff_category.description IS 'Titles of employment, official status, or rank of staff working in the Migrant Education Program (MEP). [CEDS Element: Migrant Education Program Staff Category, ID:000188]';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_staff_category.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_staff_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_military_active_student_indicator ( 
	ref_military_active_student_indicator_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_military_active_student_indicator PRIMARY KEY ( ref_military_active_student_indicator_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_military_active_student_indicator IS 'An indication that the student is currently serving on Active Duty, in the National Guard, or in the Reserve components of the United States military services[CEDS Element: Military Active Student Indicator, ID:001577]';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_active_student_indicator.ref_military_active_student_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_active_student_indicator.description IS 'An indication that the student is currently serving on Active Duty, in the National Guard, or in the Reserve components of the United States military services [CEDS Element: Military Active Student Indicator, ID:001577]';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_active_student_indicator.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_active_student_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_military_connected_student_indicator ( 
	ref_military_connected_student_indicator_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_military_connected_student_indicator PRIMARY KEY ( ref_military_connected_student_indicator_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_military_connected_student_indicator IS 'An indication that the student<U+0092>s parent or guardian is on Active Duty, in the National Guard, or in the Reserve components of the United States military services[CEDS Element: Military Connected Student Indicator, ID:001576]';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_connected_student_indicator.ref_military_connected_student_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_connected_student_indicator.description IS 'An indication that the student<U+0092>s parent or guardian is on Active Duty, in the National Guard, or in the Reserve components of the United States military services [CEDS Element: Military Connected Student Indicator, ID:001576]';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_connected_student_indicator.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_connected_student_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_multiple_intelligence_type ( 
	ref_multiple_intelligence_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_multiple_intelligence_type PRIMARY KEY ( ref_multiple_intelligence_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_multiple_intelligence_type IS 'Classification of the Learning Standard Item using intelligences defined for Howard Earl Gardner''s Theory of Multiple Intelligences. [CEDS Element: Learning Standard Item Multiple Intelligence, ID:000876]';

COMMENT ON COLUMN ceds6sc_rdx.ref_multiple_intelligence_type.ref_multiple_intelligence_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_multiple_intelligence_type.description IS 'Classification of the Learning Standard Item using intelligences defined for Howard Earl Gardner''s Theory of Multiple Intelligences. [CEDS Element: Learning Standard Item Multiple Intelligence, ID:000876]';

COMMENT ON COLUMN ceds6sc_rdx.ref_multiple_intelligence_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_multiple_intelligence_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_naep_aspects_of_reading ( 
	ref_naep_aspects_of_reading_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk__ref_naep_aspecs_of_reading PRIMARY KEY ( ref_naep_aspects_of_reading_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_naep_aspects_of_reading IS 'Aspects of reading defined by the National Assessment of Educational Progress (NAEP 2005b Framework). [CEDS Element: NAEP Aspects of Reading, ID:001122]';

COMMENT ON COLUMN ceds6sc_rdx.ref_naep_aspects_of_reading.ref_naep_aspects_of_reading_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_naep_aspects_of_reading.description IS 'Aspects of reading defined by the National Assessment of Educational Progress (NAEP 2005b Framework). [CEDS Element: NAEP Aspects of Reading, ID:001122]';

COMMENT ON COLUMN ceds6sc_rdx.ref_naep_aspects_of_reading.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_naep_aspects_of_reading.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_need_determination_method ( 
	ref_need_determination_method_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_need_determination_method PRIMARY KEY ( ref_need_determination_method_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_need_determination_method IS 'The methodology used to determine an individual''s financial need. [CEDS Element: Financial Need Determination Methodology, ID:001224]';

COMMENT ON COLUMN ceds6sc_rdx.ref_need_determination_method.ref_need_determination_method_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_need_determination_method.description IS 'The methodology used to determine an individual''s financial need. [CEDS Element: Financial Need Determination Methodology, ID:001224]';

COMMENT ON COLUMN ceds6sc_rdx.ref_need_determination_method.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_need_determination_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_non_promotion_reason ( 
	ref_non_promotion_reason_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_non_promotion_reason PRIMARY KEY ( ref_non_promotion_reason_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_non_promotion_reason IS 'The primary reason as to why a staff member determined that a student should not be promoted (or be demoted). [CEDS Element: Nonpromotion Reason, ID:000531]';

COMMENT ON COLUMN ceds6sc_rdx.ref_non_promotion_reason.ref_non_promotion_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_non_promotion_reason.description IS 'The primary reason as to why a staff member determined that a student should not be promoted (or be demoted). [CEDS Element: Nonpromotion Reason, ID:000531]';

COMMENT ON COLUMN ceds6sc_rdx.ref_non_promotion_reason.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_non_promotion_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_operational_status ( 
	ref_operational_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	ref_operational_status_type_id integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_operational_status PRIMARY KEY ( ref_operational_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_operational_status IS 'Organization operating status values.  [CEDS Elements: School Operational Status (000533), Local Education Agency Operational Status (000174), Organization Operational Status (001418)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_operational_status.ref_operational_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_operational_status.description IS 'Organization operating status values.  [CEDS Elements: School Operational Status (000533), Local Education Agency Operational Status (000174), Organization Operational Status (001418)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_operational_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_operational_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_organization_element_type ( 
	ref_organization_element_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_organization_element_type PRIMARY KEY ( ref_organization_element_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_organization_element_type IS 'List of identification system types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_element_type.ref_organization_element_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_element_type.description IS 'List of organization type element types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_element_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_element_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_organization_identifier_type ( 
	ref_organization_identifier_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_organization_identifier_type PRIMARY KEY ( ref_organization_identifier_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_organization_identifier_type IS 'List of identification system types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_identifier_type.ref_organization_identifier_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_identifier_type.description IS 'List of identification system types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_identifier_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_identifier_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_organization_location_type ( 
	ref_organization_location_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_organization_location PRIMARY KEY ( ref_organization_location_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_organization_location_type IS 'The types of addresses for a organization. ';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_location_type.ref_organization_location_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_location_type.description IS 'The type of address listed for an organization. [CEDS Element: Address Type for Organization, ID:001066]';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_location_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_location_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_organization_relationship ( 
	ref_organization_relationship_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_organization_relationship PRIMARY KEY ( ref_organization_relationship_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_organization_relationship IS 'The type of relationship of one organization to another.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_relationship.ref_organization_relationship_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_relationship.description IS 'The type of relationship of one organization to another.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_relationship.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_relationship.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_other_name_type ( 
	ref_other_name_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_other_name_type PRIMARY KEY ( ref_other_name_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_other_name_type IS 'The types of previous, alternate or other names for a person. [CEDS Element: Other Name Type, ID:000634]';

COMMENT ON COLUMN ceds6sc_rdx.ref_other_name_type.ref_other_name_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_other_name_type.description IS 'The types of previous, alternate or other names for a person. [CEDS Element: Other Name Type, ID:000634]';

COMMENT ON COLUMN ceds6sc_rdx.ref_other_name_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_other_name_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_paraprofessional_qualification ( 
	ref_paraprofessional_qualification_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_parapaprofessional_qualification PRIMARY KEY ( ref_paraprofessional_qualification_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_paraprofessional_qualification IS 'An indication of whether paraprofessionals are classified as qualified for their assignment according to state definition. [CEDS Element: Paraprofessional Qualification Status, ID:000207]';

COMMENT ON COLUMN ceds6sc_rdx.ref_paraprofessional_qualification.ref_paraprofessional_qualification_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_paraprofessional_qualification.description IS 'An indication of whether paraprofessionals are classified as qualified for their assignment according to state definition. [CEDS Element: Paraprofessional Qualification Status, ID:000207]';

COMMENT ON COLUMN ceds6sc_rdx.ref_paraprofessional_qualification.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_paraprofessional_qualification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_participation_type ( 
	ref_participation_type_id integer  NOT NULL,
	organization_id      integer  ,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_participation_type PRIMARY KEY ( ref_participation_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_participation_type IS 'Status types for a person''s participation in the program where the possible condition is either Yes (True) or No (False). [CEDS Elements: GED Preparation Program Participation Status (000120), Homeless Serviced Indicator (000147), Migrant Education Program Participation Status (000185), Section 504 Status (000249), Title III Immigrant Participation Status (000290), Title I Schoolwide Program Participation (000550), Title I Targeted Assistance Participation (000551), Title III Limited English Proficient Participation Status (000565), Kindergarten Program Participation Type (000714), Career Pathways Program Participation Indicator (001291), Correctional Education Reentry Services Participation Indicator (001297)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_participation_type.ref_participation_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_participation_type.organization_id IS 'Surrogate Key to Organization identifying the Program.';

COMMENT ON COLUMN ceds6sc_rdx.ref_participation_type.description IS 'Status types for a person''s participation in the program where the possible condition is either Yes (True) or No (False). [CEDS Elements: GED Preparation Program Participation Status (000120), Homeless Serviced Indicator (000147), Migrant Education Program Participation Status (000185), Section 504 Status (000249), Title III Immigrant Participation Status (000290), Title I Schoolwide Program Participation (000550), Title I Targeted Assistance Participation (000551), Title III Limited English Proficient Participation Status (000565), Kindergarten Program Participation Type (000714), Career Pathways Program Participation Indicator (001291), Correctional Education Reentry Services Participation Indicator (001297)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_participation_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_participation_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_pd_activity_approved_purpose ( 
	ref_pd_activity_approved_for_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_activity_approved_for PRIMARY KEY ( ref_pd_activity_approved_for_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_pd_activity_approved_purpose IS 'The purposes for which an activity is approved. [CEDS Element: Professional Development Activity Approved Purpose, ID:001433]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_approved_purpose.ref_pd_activity_approved_for_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_approved_purpose.description IS 'The purposes for which an activity is approved. [CEDS Element: Professional Development Activity Approved Purpose, ID:001433]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_approved_purpose.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_approved_purpose.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_pd_activity_education_levels_addressed ( 
	ref_pd_activity_education_levels_addressed_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_activity_education_levels_addressed PRIMARY KEY ( ref_pd_activity_education_levels_addressed_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_pd_activity_education_levels_addressed IS 'An age group or education level to which the professional development Activity''s content pertains. [CEDS Element: Professional Development Activity Education Levels Addressed, ID:001279]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_education_levels_addressed.ref_pd_activity_education_levels_addressed_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_education_levels_addressed.description IS 'An age group or education level to which the professional development Activity''s content pertains. [CEDS Element: Professional Development Activity Education Levels Addressed, ID:001279]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_education_levels_addressed.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_education_levels_addressed.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_pd_activity_target_audience ( 
	ref_pd_activity_target_audience_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_activity_target_audience PRIMARY KEY ( ref_pd_activity_target_audience_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_pd_activity_target_audience IS 'A categorization of the audience for which the professional development activity is intended. [CEDS Element: Professional Development Activity Target Audience, ID:001492]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_target_audience.ref_pd_activity_target_audience_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_target_audience.description IS 'A categorization of the audience for which the professional development activity is intended. [CEDS Element: Professional Development Activity Target Audience, ID:001492]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_target_audience.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_target_audience.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_pd_audience_type ( 
	ref_pd_audience_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_audience_type PRIMARY KEY ( ref_pd_audience_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_pd_audience_type IS 'The type of audience for the professional development activity. [CEDS Element: Professional Development Audience Type, ID:001430]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_audience_type.ref_pd_audience_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_audience_type.description IS 'The type of audience for the professional development activity. [CEDS Element: Professional Development Audience Type, ID:001430]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_audience_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_audience_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_pd_instructional_delivery_mode ( 
	ref_pd_instructional_delivery_mode_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_instructional_delivery_mode PRIMARY KEY ( ref_pd_instructional_delivery_mode_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_pd_instructional_delivery_mode IS 'The primary setting or medium of professional development delivery. [CEDS Element: Professional Development Instructional Delivery Mode, ID:001458]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_instructional_delivery_mode.ref_pd_instructional_delivery_mode_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_instructional_delivery_mode.description IS 'The primary setting or medium of professional development delivery. [CEDS Element: Professional Development Instructional Delivery Mode, ID:001458]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_instructional_delivery_mode.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_instructional_delivery_mode.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_person_identifier_type ( 
	ref_person_identifier_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_person_identifier_type PRIMARY KEY ( ref_person_identifier_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_person_identifier_type IS 'List of identification system types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_identifier_type.ref_person_identifier_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_identifier_type.description IS 'List of identification system types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_identifier_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_identifier_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_person_relationship ( 
	ref_person_relationship_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_relationship PRIMARY KEY ( ref_person_relationship_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_person_relationship IS 'The nature of a person''s relationship to another person.  ';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_relationship.ref_person_relationship_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_relationship.description IS 'The nature of the person''s relationship to another person.  [CEDS Element: Person Relationship to Learner Type, ID:000425]';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_relationship.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_relationship.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_person_telephone_number_type ( 
	ref_person_telephone_number_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_person_telephone_type PRIMARY KEY ( ref_person_telephone_number_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_person_telephone_number_type IS 'Types of telephone numbers for a person.';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_telephone_number_type.ref_person_telephone_number_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_telephone_number_type.description IS 'The type of communication number listed for a person. [CEDS Element: Telephone Number Type, ID:000280]';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_telephone_number_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_telephone_number_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_population_served ( 
	ref_population_served_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_population_served PRIMARY KEY ( ref_population_served_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_population_served IS 'The population served by the program, class, organization, etc. [CEDS Element: Special Circumstances Population Served, ID:000852]';

COMMENT ON COLUMN ceds6sc_rdx.ref_population_served.ref_population_served_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_population_served.description IS 'The population served by the program, class, organization, etc. [CEDS Element: Special Circumstances Population Served, ID:000852]';

COMMENT ON COLUMN ceds6sc_rdx.ref_population_served.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_population_served.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_pre_k_eligible_ages_non_idea ( 
	ref_pre_k_eligible_ages_non_idea_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_pre_k_eligible_ages_non_idea PRIMARY KEY ( ref_pre_k_eligible_ages_non_idea_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_pre_k_eligible_ages_non_idea IS 'The ages of children not served under IDEA to whom the LEA''s pre-kindergarten services are available.   [CEDS Element: Pre-kindergarten Eligible Ages for Non-IDEA Students, ID:000217]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pre_k_eligible_ages_non_idea.ref_pre_k_eligible_ages_non_idea_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_pre_k_eligible_ages_non_idea.description IS 'The ages of children not served under IDEA to whom the LEA''s pre-kindergarten services are available.   [CEDS Element: Pre-kindergarten Eligible Ages for Non-IDEA Students, ID:000217]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pre_k_eligible_ages_non_idea.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_pre_k_eligible_ages_non_idea.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_predominant_calendar_system ( 
	ref_predominant_calendar_system_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_predominant_calendar_system PRIMARY KEY ( ref_predominant_calendar_system_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_predominant_calendar_system IS 'The method by which an institution structures most of its courses for the academic year. [CEDS Element: Predominant Calendar System, ID:000729]';

COMMENT ON COLUMN ceds6sc_rdx.ref_predominant_calendar_system.ref_predominant_calendar_system_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_predominant_calendar_system.description IS 'The method by which an institution structures most of its courses for the academic year. [CEDS Element: Predominant Calendar System, ID:000729]';

COMMENT ON COLUMN ceds6sc_rdx.ref_predominant_calendar_system.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_predominant_calendar_system.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_professional_development_financial_support ( 
	ref_professional_development_financial_support_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_professional_development_financial_support PRIMARY KEY ( ref_professional_development_financial_support_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_professional_development_financial_support IS 'The type of financial assistance received in support of non-credit professional development activities. [CEDS Element: Professional Development Financial Support Type, ID:000812]';

COMMENT ON COLUMN ceds6sc_rdx.ref_professional_development_financial_support.ref_professional_development_financial_support_id IS 'Surrogate key.';

COMMENT ON COLUMN ceds6sc_rdx.ref_professional_development_financial_support.description IS 'The type of financial assistance received in support of non-credit professional development activities. [CEDS Element: Professional Development Financial Support Type, ID:000812]';

COMMENT ON COLUMN ceds6sc_rdx.ref_professional_development_financial_support.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_professional_development_financial_support.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_professional_technical_credential_type ( 
	ref_professional_technical_credential_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_prof_tech_credential_type PRIMARY KEY ( ref_professional_technical_credential_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_professional_technical_credential_type IS 'An indicator of the category of credential conferred by a state occupational licensing entity or industry organization for competency in a specific area measured by a set of pre-established standards. [CEDS Element: Professional or Technical Credential Conferred, ID:000783]';

COMMENT ON COLUMN ceds6sc_rdx.ref_professional_technical_credential_type.ref_professional_technical_credential_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_professional_technical_credential_type.description IS 'An indicator of the category of credential conferred by a state occupational licensing entity or industry organization for competency in a specific area measured by a set of pre-established standards. [CEDS Element: Professional or Technical Credential Conferred, ID:000783]';

COMMENT ON COLUMN ceds6sc_rdx.ref_professional_technical_credential_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_professional_technical_credential_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_proficiency_target_ayp ( 
	ref_proficiency_target_ayp_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_proficiency_target_ayp PRIMARY KEY ( ref_proficiency_target_ayp_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_proficiency_target_ayp IS 'An indication of whether the school or district met the proficiency target in accordance with state definition for the purposes of determining AYP. [CEDS Elements: Proficiency Target Status for Math (000221), Proficiency Target Status for Reading and Language Arts (000553)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_proficiency_target_ayp.ref_proficiency_target_ayp_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_proficiency_target_ayp.description IS 'An indication of whether the school or district met the proficiency target in accordance with state definition for the purposes of determining AYP. [CEDS Elements: Proficiency Target Status for Math (000221), Proficiency Target Status for Reading and Language Arts (000553)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_proficiency_target_ayp.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_proficiency_target_ayp.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_program_exit_reason ( 
	ref_program_exit_reason_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_program_exit_reason PRIMARY KEY ( ref_program_exit_reason_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_program_exit_reason IS 'The documented or assumed reason a student is no longer being served by a special program. [CEDS Element: Exit Reason, ID:000222]';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_exit_reason.ref_program_exit_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_exit_reason.description IS 'The documented or assumed reason a student is no longer being served by a special program. [CEDS Element: Exit Reason, ID:000222]';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_exit_reason.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_exit_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_program_length_hours_type ( 
	ref_program_length_hours_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_program_length PRIMARY KEY ( ref_program_length_hours_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_program_length_hours_type IS 'The type of hours (credit or contact) by which the normal length of a program of study is measured. [CEDS Element: Program Length Hours Type, ID:000224]';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_length_hours_type.ref_program_length_hours_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_length_hours_type.description IS 'The type of hours (credit or contact) by which the normal length of a program of study is measured. [CEDS Element: Program Length Hours Type, ID:000224]';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_length_hours_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_length_hours_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_program_type ( 
	ref_program_type_id  integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_program_type PRIMARY KEY ( ref_program_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_program_type IS 'The system outlining instructional or non-instructional activities and procedures designed to accomplish a predetermined educational objective or set of objectives or to provide support services to a person and/or the community. [CEDS Elements: Program Type (000225)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_type.ref_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_type.description IS 'The system outlining instructional or non-instructional activities and procedures designed to accomplish a predetermined educational objective or set of objectives or to provide support services to a person and/or the community. [CEDS Elements: Program Type (000225)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.
';

CREATE TABLE ceds6sc_rdx.ref_promotion_reason ( 
	ref_promotion_reason_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_promotion_reason PRIMARY KEY ( ref_promotion_reason_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_promotion_reason IS 'The nature of the student''s promotion or progress at the end of a given school term. [CEDS Element: Promotion Reason, ID:000530]';

COMMENT ON COLUMN ceds6sc_rdx.ref_promotion_reason.ref_promotion_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_promotion_reason.description IS 'The nature of the student''s promotion or progress at the end of a given school term. [CEDS Element: Promotion Reason, ID:000530]';

COMMENT ON COLUMN ceds6sc_rdx.ref_promotion_reason.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_promotion_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ps_enrollment_action ( 
	ref_ps_enrollment_action_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction     integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_enrollment_action PRIMARY KEY ( ref_ps_enrollment_action_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ps_enrollment_action IS 'The action taken with respect to postsecondary enrollment by the student who graduated from the school, LEA or state in the past two years. [CEDS Element: Postsecondary Enrollment Action, ID:000586]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_action.ref_ps_enrollment_action_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_action.description IS 'The action taken with respect to postsecondary enrollment by the student who graduated from the school, LEA or state in the past two years. [CEDS Element: Postsecondary Enrollment Action, ID:000586]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_action.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_action.ref_jurisdiction IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ps_enrollment_status ( 
	ref_ps_enrollment_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_enrollment_status_1 PRIMARY KEY ( ref_ps_enrollment_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ps_enrollment_status IS 'An indication of the student''s enrollment status for a particular term as defined by the institution [CEDS Element: Postsecondary Enrollment Status, ID:000096]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_status.ref_ps_enrollment_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_status.description IS 'An indication of the student''s enrollment status for a particular term as defined by the institution [CEDS Element: Postsecondary Enrollment Status, ID:000096]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ps_exit_or_withdrawal_type ( 
	ref_ps_exit_or_withdrawal_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_exit_or_withdrawal_type PRIMARY KEY ( ref_ps_exit_or_withdrawal_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ps_exit_or_withdrawal_type IS ' The circumstances under which the student exited from enrollment in a postsecondary institution.[CEDS Element: Postsecondary Exit or Withdrawal Type, ID:001617]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_exit_or_withdrawal_type.ref_ps_exit_or_withdrawal_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_exit_or_withdrawal_type.description IS ' The circumstances under which the student exited from enrollment in a postsecondary institution. [CEDS Element: Postsecondary Exit or Withdrawal Type, ID:001617]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_exit_or_withdrawal_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_exit_or_withdrawal_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ps_lep_type ( 
	ref_ps_lep_type_id   integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_lep_type PRIMARY KEY ( ref_ps_lep_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ps_lep_type IS 'The term individual with limited english proficiency means a secondary school student, an adult, or an out-of-school youth, who has limited ability in speaking, reading, writing, or understanding the English language AND whose native language is a language other than English; OR who lives in a family or community environment in which a language other than English is the dominant language.  [CEDS Element: Limited English Proficiency - Postsecondary, ID:000179]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_lep_type.ref_ps_lep_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_lep_type.description IS 'The term individual with limited english proficiency means a secondary school student, an adult, or an out-of-school youth, who has limited ability in speaking, reading, writing, or understanding the English language AND whose native language is a language other than English; OR who lives in a family or community environment in which a language other than English is the dominant language.  [CEDS Element: Limited English Proficiency - Postsecondary, ID:000179]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_lep_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_lep_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_public_school_choice_status ( 
	ref_public_school_choice_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_public_school_choice_status PRIMARY KEY ( ref_public_school_choice_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_public_school_choice_status IS 'An indication of whether the LEA was able to implement the provisions for public school choice under Title I, Part A, Section 1116 of ESEA as amended. [CEDS Element: Public School Choice Implementation Status, ID:000227]';

COMMENT ON COLUMN ceds6sc_rdx.ref_public_school_choice_status.ref_public_school_choice_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_public_school_choice_status.description IS 'An indication of whether the LEA was able to implement the provisions for public school choice under Title I, Part A, Section 1116 of ESEA as amended. [CEDS Element: Public School Choice Implementation Status, ID:000227]';

COMMENT ON COLUMN ceds6sc_rdx.ref_public_school_choice_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_public_school_choice_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_purpose_of_monitoring_visit ( 
	ref_purpose_of_monitoring_visit_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_purpose_of_monitoring_visit PRIMARY KEY ( ref_purpose_of_monitoring_visit_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_purpose_of_monitoring_visit IS 'The purpose for the monitoring visit. [CEDS Element: Purpose of Monitoring Visit, ID:001333]';

COMMENT ON COLUMN ceds6sc_rdx.ref_purpose_of_monitoring_visit.ref_purpose_of_monitoring_visit_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_purpose_of_monitoring_visit.description IS 'The purpose for the monitoring visit. [CEDS Element: Purpose of Monitoring Visit, ID:001333]';

COMMENT ON COLUMN ceds6sc_rdx.ref_purpose_of_monitoring_visit.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_purpose_of_monitoring_visit.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_race ( 
	ref_race_id          integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_race PRIMARY KEY ( ref_race_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_race IS 'The name used to describe a group of persons related by common descent or heredity';

COMMENT ON COLUMN ceds6sc_rdx.ref_race.ref_race_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_race.description IS 'The name used to describe a group of persons related by common descent or heredity. [CEDS Elements: Asian (000020), American Indian or Alaska Native (000016), Black or African American (000034), Native Hawaiian or Other Pacific Islander (000192), White (000301), Demographic Race Two or More Races (000973)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_race.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_race.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_reason_delay_transition_conf ( 
	ref_reason_delay_transition_conf_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_reason_delay_transition_conf PRIMARY KEY ( ref_reason_delay_transition_conf_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_reason_delay_transition_conf IS 'The reasons for the delay of a transition conference. [CEDS Element: Reason for Delay of Transition Conference, ID:001521]';

COMMENT ON COLUMN ceds6sc_rdx.ref_reason_delay_transition_conf.ref_reason_delay_transition_conf_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_reason_delay_transition_conf.description IS 'The reasons for the delay of a transition conference. [CEDS Element: Reason for Delay of Transition Conference, ID:001521]';

COMMENT ON COLUMN ceds6sc_rdx.ref_reason_delay_transition_conf.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_reason_delay_transition_conf.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_referral_outcome ( 
	ref_referral_outcome_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_referral_outcome PRIMARY KEY ( ref_referral_outcome_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_referral_outcome IS 'The outcome of the referral. [CEDS Element: Referral Outcome, ID:001482]';

COMMENT ON COLUMN ceds6sc_rdx.ref_referral_outcome.ref_referral_outcome_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_referral_outcome.description IS 'The outcome of the referral. [CEDS Element: Referral Outcome, ID:001482]';

COMMENT ON COLUMN ceds6sc_rdx.ref_referral_outcome.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_referral_outcome.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_restructuring_action ( 
	ref_restructuring_action_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_restructuring_action PRIMARY KEY ( ref_restructuring_action_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_restructuring_action IS 'The types of actions being implemented in Title I schools as a result of the school being in an improvement status of restructuring <U+0096> year 2 (implementation year). [CEDS Element: Restructuring Action, ID:000232]';

COMMENT ON COLUMN ceds6sc_rdx.ref_restructuring_action.ref_restructuring_action_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_restructuring_action.description IS 'The types of actions being implemented in Title I schools as a result of the school being in an improvement status of restructuring <U+0096> year 2 (implementation year). [CEDS Element: Restructuring Action, ID:000232]';

COMMENT ON COLUMN ceds6sc_rdx.ref_restructuring_action.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_restructuring_action.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_role_status ( 
	ref_role_status_id   integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	ref_role_status_type_id integer  ,
	CONSTRAINT pk_ref_role_status PRIMARY KEY ( ref_role_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_role_status IS 'The types of status values for a person''s role with an organization.';

COMMENT ON COLUMN ceds6sc_rdx.ref_role_status.ref_role_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_role_status.description IS 'The status for the person''s association to the role.  [CEDS Elements: Class Section Enrollment Status Type (000976), Employment Status (000347), Enrollment Status (000094), Postsecondary Enrollment Status (000096), Teacher Preparation Program Enrollment Status (000767)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_role_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_role_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN ceds6sc_rdx.ref_role_status.ref_role_status_type_id IS 'List of role status types.';

CREATE TABLE ceds6sc_rdx.ref_sced_course_level ( 
	ref_sced_course_level_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_sced_course_level PRIMARY KEY ( ref_sced_course_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_sced_course_level IS 'The course''s level of rigor. [CEDS Element: School Courses for the Exchange of Data Course Level, ID:001516]';

COMMENT ON COLUMN ceds6sc_rdx.ref_sced_course_level.ref_sced_course_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_sced_course_level.description IS 'The course''s level of rigor. [CEDS Element: School Courses for the Exchange of Data Course Level, ID:001516]';

COMMENT ON COLUMN ceds6sc_rdx.ref_sced_course_level.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_sced_course_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_scheduled_well_child_screening ( 
	ref_scheduled_well_child_screening_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_scheduled_well_child_screening PRIMARY KEY ( ref_scheduled_well_child_screening_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_scheduled_well_child_screening IS 'The individual well child visit scheduled according to the AAP recommended periodicity schedule.[CEDS Element: Scheduled Well Child Screening, ID:001623]';

COMMENT ON COLUMN ceds6sc_rdx.ref_scheduled_well_child_screening.ref_scheduled_well_child_screening_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_scheduled_well_child_screening.description IS 'The individual well child visit scheduled according to the AAP recommended periodicity schedule. [CEDS Element: Scheduled Well Child Screening, ID:001623]';

COMMENT ON COLUMN ceds6sc_rdx.ref_scheduled_well_child_screening.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_scheduled_well_child_screening.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_school_improvement_funds ( 
	ref_school_improvement_funds_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_school_improvement_funds PRIMARY KEY ( ref_school_improvement_funds_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_school_improvement_funds IS 'An indication of whether the school received funds under Section 1003 of ESEA, as amended. [CEDS Element: School Improvement Funds Status, ID:000238]';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_improvement_funds.ref_school_improvement_funds_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_improvement_funds.description IS 'An indication of whether the school received funds under Section 1003 of ESEA, as amended. [CEDS Element: School Improvement Funds Status, ID:000238]';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_improvement_funds.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_improvement_funds.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_school_level ( 
	ref_school_level_id  integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_school_level PRIMARY KEY ( ref_school_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_school_level IS 'An indication of the level of the education institution. [CEDS Element: School Level, ID:000241]';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_level.ref_school_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_level.description IS 'An indication of the level of the education institution. [CEDS Element: School Level, ID:000241]';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_level.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_score_metric_type ( 
	ref_score_metric_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_score_metric_type PRIMARY KEY ( ref_score_metric_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_score_metric_type IS 'The specific method used to report the performance and achievement of the assessment. This is the metric that is being used to derive the scores. [CEDS Element: Assessment Score Metric Type, ID:000369]';

COMMENT ON COLUMN ceds6sc_rdx.ref_score_metric_type.ref_score_metric_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_score_metric_type.description IS 'The specific method used to report the performance and achievement of the assessment. This is the metric that is being used to derive the scores. [CEDS Element: Assessment Score Metric Type, ID:000369]';

COMMENT ON COLUMN ceds6sc_rdx.ref_score_metric_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_score_metric_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_service_option ( 
	ref_service_option_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_service_option PRIMARY KEY ( ref_service_option_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_service_option IS 'Nature of program, class or group in which a person is enrolled. [CEDS Element: Service Option Variation, ID:000353]';

COMMENT ON COLUMN ceds6sc_rdx.ref_service_option.ref_service_option_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_service_option.description IS 'Nature of program, class or group in which a person is enrolled. [CEDS Element: Service Option Variation, ID:000353]';

COMMENT ON COLUMN ceds6sc_rdx.ref_service_option.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_service_option.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_session_type ( 
	ref_session_type_id  integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_session_type PRIMARY KEY ( ref_session_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_session_type IS 'A prescribed span of time when an education institution is open, instruction is provided, and students are under the direction and guidance of teachers and/or education institution administration. A session may be interrupted by one or more vacations. [CEDS Element: Session Type, ID:000254]';

COMMENT ON COLUMN ceds6sc_rdx.ref_session_type.ref_session_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_session_type.description IS 'A prescribed span of time when an education institution is open, instruction is provided, and students are under the direction and guidance of teachers and/or education institution administration. A session may be interrupted by one or more vacations. [CEDS Element: Session Type, ID:000254]';

COMMENT ON COLUMN ceds6sc_rdx.ref_session_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_session_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_sig_intervention_type ( 
	ref_sig_intervention_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_sig_intervention_type PRIMARY KEY ( ref_sig_intervention_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_sig_intervention_type IS 'The type of intervention used by the school under the School Improvement Grant (SIG). [CEDS Element: School Improvement Grant Intervention Type, ID:000239]';

COMMENT ON COLUMN ceds6sc_rdx.ref_sig_intervention_type.ref_sig_intervention_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_sig_intervention_type.description IS 'The type of intervention used by the school under the School Improvement Grant (SIG). [CEDS Element: School Improvement Grant Intervention Type, ID:000239]';

COMMENT ON COLUMN ceds6sc_rdx.ref_sig_intervention_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_sig_intervention_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_space_use_type ( 
	ref_space_use_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_space_use_type PRIMARY KEY ( ref_space_use_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_space_use_type IS 'The primary use of a space, as determined by its physical layout and built-in systems and equipment, regardless of its original design. [CEDS Element: Facility Space Use Type, ID:001208]';

COMMENT ON COLUMN ceds6sc_rdx.ref_space_use_type.ref_space_use_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_space_use_type.description IS 'The primary use of a space, as determined by its physical layout and built-in systems and equipment, regardless of its original design. [CEDS Element: Facility Space Use Type, ID:001208]';

COMMENT ON COLUMN ceds6sc_rdx.ref_space_use_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_space_use_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_special_education_exit_reason ( 
	ref_special_education_exit_reason_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_special_education_exit_reason PRIMARY KEY ( ref_special_education_exit_reason_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_special_education_exit_reason IS 'The reason children who were in special education at the start of the reporting period were not in special education at the end of the reporting period. [CEDS Element: Special Education Exit Reason, ID:000260]';

COMMENT ON COLUMN ceds6sc_rdx.ref_special_education_exit_reason.ref_special_education_exit_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_special_education_exit_reason.description IS 'The reason children who were in special education at the start of the reporting period were not in special education at the end of the reporting period. [CEDS Element: Special Education Exit Reason, ID:000260]';

COMMENT ON COLUMN ceds6sc_rdx.ref_special_education_exit_reason.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_special_education_exit_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_staff_performance_level ( 
	ref_staff_performance_level_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_staff_performance_level PRIMARY KEY ( ref_staff_performance_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_staff_performance_level IS 'The levels used in district evaluation systems for assigning teacher or principal performance ratings. [CEDS Element: Faculty and Administration Performance Level, ID:000589]';

COMMENT ON COLUMN ceds6sc_rdx.ref_staff_performance_level.ref_staff_performance_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_staff_performance_level.description IS 'The levels used in district evaluation systems for assigning teacher or principal performance ratings. [CEDS Element: Faculty and Administration Performance Level, ID:000589]';

COMMENT ON COLUMN ceds6sc_rdx.ref_staff_performance_level.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_staff_performance_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_state ( 
	ref_state_id         integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_state PRIMARY KEY ( ref_state_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_state IS 'A state or outlying region where an address is located.';

COMMENT ON COLUMN ceds6sc_rdx.ref_state.ref_state_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_state.description IS 'The State Name.';

COMMENT ON COLUMN ceds6sc_rdx.ref_state.code IS 'The abbreviation for the state (within the United States) or outlying area in which an address is located. [CEDS Element: State Abbreviation, ID:000267]';

COMMENT ON COLUMN ceds6sc_rdx.ref_state.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_state_poverty_designation ( 
	ref_state_poverty_designation_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_state_poverty_designation PRIMARY KEY ( ref_state_poverty_designation_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_state_poverty_designation IS 'The designation of a school<U+0092>s poverty quartile for purposes of determining classes taught by highly qualified teachers in high and low poverty schools, according to state<U+0092>s indicator of poverty. [CEDS Element: State Poverty Designation, ID:000585]';

COMMENT ON COLUMN ceds6sc_rdx.ref_state_poverty_designation.ref_state_poverty_designation_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_state_poverty_designation.description IS 'The designation of a school<U+0092>s poverty quartile for purposes of determining classes taught by highly qualified teachers in high and low poverty schools, according to state<U+0092>s indicator of poverty. [CEDS Element: State Poverty Designation, ID:000585]';

COMMENT ON COLUMN ceds6sc_rdx.ref_state_poverty_designation.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_state_poverty_designation.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_supervised_clinical_experience ( 
	ref_supervised_clinical_experience_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_supervised_clinical_experience PRIMARY KEY ( ref_supervised_clinical_experience_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_supervised_clinical_experience IS 'An indication of whether a person is enrolled in a supervised clinical experience (including student teaching) as part of a teacher preparation program. [CEDS Element: Supervised Clinical Experience, ID:000771]';

COMMENT ON COLUMN ceds6sc_rdx.ref_supervised_clinical_experience.ref_supervised_clinical_experience_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_supervised_clinical_experience.description IS 'An indication of whether a person is enrolled in a supervised clinical experience (including student teaching) as part of a teacher preparation program. [CEDS Element: Supervised Clinical Experience, ID:000771]';

COMMENT ON COLUMN ceds6sc_rdx.ref_supervised_clinical_experience.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_supervised_clinical_experience.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_teacher_education_exam_score_type ( 
	ref_teacher_education_exam_score_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_teacher_education_exam_score_type PRIMARY KEY ( ref_teacher_education_exam_score_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_teacher_education_exam_score_type IS 'An indication of the type of credential exam associated with a given exam score. [CEDS Element: Teacher Education Credential Exam Score Type, ID:000774]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_education_exam_score_type.ref_teacher_education_exam_score_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_education_exam_score_type.description IS 'An indication of the type of credential exam associated with a given exam score. [CEDS Element: Teacher Education Credential Exam Score Type, ID:000774]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_education_exam_score_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_education_exam_score_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_teacher_prep_completer_status ( 
	ref_teacher_prep_completer_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_teacher_prep_completer_status PRIMARY KEY ( ref_teacher_prep_completer_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_teacher_prep_completer_status IS 'An indication of whether a person completed a state-approved teacher preparation program.  The fact that a person has or has not been recommended to the state for initial certification or licensure may not be used as a criterion for determining who is a program completer. [CEDS Element: Teacher Preparation Program Completer Status, ID:000768]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_prep_completer_status.ref_teacher_prep_completer_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_prep_completer_status.description IS 'An indication of whether a person completed a state-approved teacher preparation program.  The fact that a person has or has not been recommended to the state for initial certification or licensure may not be used as a criterion for determining who is a program completer. [CEDS Element: Teacher Preparation Program Completer Status, ID:000768]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_prep_completer_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_prep_completer_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_teaching_assignment_role ( 
	ref_teaching_assignment_role_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_teaching_assignment_role PRIMARY KEY ( ref_teaching_assignment_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_teaching_assignment_role IS 'The role that the Staff Member has been assigned for a Class Section.  (A teacher may have the lead responsibility for one section and serve a supporting role for another section of the same course.) [CEDS Element: Teaching Assignment Role, ID:000648]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teaching_assignment_role.ref_teaching_assignment_role_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_teaching_assignment_role.description IS 'The role that the Staff Member has been assigned for a Class Section.  (A teacher may have the lead responsibility for one section and serve a supporting role for another section of the same course.) [CEDS Element: Teaching Assignment Role, ID:000648]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teaching_assignment_role.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_teaching_assignment_role.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_teaching_credential_type ( 
	ref_teaching_credential_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_teaching_credential_type PRIMARY KEY ( ref_teaching_credential_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_teaching_credential_type IS 'An indication of the category of a legal document giving authorization to perform teaching assignment services. [CEDS Element: Teaching Credential Type, ID:000278]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teaching_credential_type.ref_teaching_credential_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_teaching_credential_type.description IS 'An indication of the category of a legal document giving authorization to perform teaching assignment services. [CEDS Element: Teaching Credential Type, ID:000278]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teaching_credential_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_teaching_credential_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_technical_assistance_type ( 
	ref_technical_assistance_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_technical_assistance_type PRIMARY KEY ( ref_technical_assistance_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_technical_assistance_type IS 'They type of technical assistance provided [CEDS Element: Technical Assistance Type, ID:001495]';

COMMENT ON COLUMN ceds6sc_rdx.ref_technical_assistance_type.ref_technical_assistance_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_technical_assistance_type.description IS 'They type of technical assistance provided [CEDS Element: Technical Assistance Type, ID:001495]';

COMMENT ON COLUMN ceds6sc_rdx.ref_technical_assistance_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_technical_assistance_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_telephone_number_type ( 
	ref_telephone_number_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_telephone_number_type PRIMARY KEY ( ref_telephone_number_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_telephone_number_type IS 'The type of communication number listed for a person. [CEDS Element: Telephone Number Type, ID:000280]';

COMMENT ON COLUMN ceds6sc_rdx.ref_telephone_number_type.ref_telephone_number_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_telephone_number_type.description IS 'The type of communication number listed for a person. [CEDS Element: Telephone Number Type, ID:000280]';

COMMENT ON COLUMN ceds6sc_rdx.ref_telephone_number_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_telephone_number_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_text_complexity_system ( 
	ref_text_complexity_system_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk__ref_text_complexity_system PRIMARY KEY ( ref_text_complexity_system_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_text_complexity_system IS 'The scaling system used to specify the text complexity of an assessment item. [CEDS Element: Assessment Item Text Complexity System, ID:000907]';

COMMENT ON COLUMN ceds6sc_rdx.ref_text_complexity_system.ref_text_complexity_system_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_text_complexity_system.description IS 'The scaling system used to specify the text complexity of an assessment item. [CEDS Element: Assessment Item Text Complexity System, ID:000907]';

COMMENT ON COLUMN ceds6sc_rdx.ref_text_complexity_system.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_text_complexity_system.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_title_i_instructional_services ( 
	ref_title_i_instructional_services_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_title_i_instructional_services PRIMARY KEY ( ref_title_i_instructional_services_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_title_i_instructional_services IS 'The type of instructional services provided to students in ESEA Title I programs. [CEDS Element: Title I Instructional Services, ID:000282]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_instructional_services.ref_title_i_instructional_services_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_instructional_services.description IS 'The type of instructional services provided to students in ESEA Title I programs. [CEDS Element: Title I Instructional Services, ID:000282]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_instructional_services.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_instructional_services.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_title_i_program_type ( 
	ref_title_i_program_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_title_i_program_type PRIMARY KEY ( ref_title_i_program_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_title_i_program_type IS 'The type of Title I program offered in the school or district. [CEDS Element: Title I Program Type, ID:000284]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_program_type.ref_title_i_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_program_type.description IS 'The type of Title I program offered in the school or district. [CEDS Element: Title I Program Type, ID:000284]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_program_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_program_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_title_iii_accountability ( 
	ref_title_iii_accountability_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_title_iii_accountability PRIMARY KEY ( ref_title_iii_accountability_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_title_iii_accountability IS 'An indication of the progress made by a student toward English proficiency. [CEDS Element: Title III Accountability Progress Status, ID:000536]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_iii_accountability.ref_title_iii_accountability_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_iii_accountability.description IS 'An indication of the progress made by a student toward English proficiency. [CEDS Element: Title III Accountability Progress Status, ID:000536]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_iii_accountability.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_iii_accountability.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_title_iii_professional_development_type ( 
	ref_title_iii_professional_development_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_title_iii_professional_dev_type PRIMARY KEY ( ref_title_iii_professional_development_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_title_iii_professional_development_type IS 'The type of Title III professional development utilized. [CEDS Element: Title III Professional Development Type, ID:000487]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_iii_professional_development_type.ref_title_iii_professional_development_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_iii_professional_development_type.description IS 'The type of Title III professional development utilized. [CEDS Element: Title III Professional Development Type, ID:000487]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_iii_professional_development_type.code IS 'An abbreviated code for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_iii_professional_development_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_transfer_out_indicator ( 
	ref_transfer_out_indicator_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_transfer_out_indicator PRIMARY KEY ( ref_transfer_out_indicator_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_transfer_out_indicator IS 'An indicator of whether the student has transferred to another institution.[CEDS Element: Transfer-out Indicator, ID:001629]';

COMMENT ON COLUMN ceds6sc_rdx.ref_transfer_out_indicator.ref_transfer_out_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_transfer_out_indicator.description IS 'An indicator of whether the student has transferred to another institution. [CEDS Element: Transfer-out Indicator, ID:001629]';

COMMENT ON COLUMN ceds6sc_rdx.ref_transfer_out_indicator.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_transfer_out_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_tribal_affiliation ( 
	ref_tribal_affiliation_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(60)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(6,2)  ,
	CONSTRAINT pk_ref_tribal_affiliation PRIMARY KEY ( ref_tribal_affiliation_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_tribal_affiliation IS 'The Native American tribal entity recognized and eligible to receive services from the United States Bureau of Indian Affairs to which a person is affiliated.[CEDS Element: Tribal Affiliation, ID:001657]';

COMMENT ON COLUMN ceds6sc_rdx.ref_tribal_affiliation.ref_tribal_affiliation_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_tribal_affiliation.description IS 'The Native American tribal entity recognized and eligible to receive services from the United States Bureau of Indian Affairs to which a person is affiliated. [CEDS Element: Tribal Affiliation, ID:001657]';

COMMENT ON COLUMN ceds6sc_rdx.ref_tribal_affiliation.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_tribal_affiliation.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_tuition_residency_type ( 
	ref_tuition_residency_type_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_tuition_residency_type PRIMARY KEY ( ref_tuition_residency_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_tuition_residency_type IS 'A person''s residency status for tuition purposes. [CEDS Element: Tuition Residency Type, ID:000297]';

COMMENT ON COLUMN ceds6sc_rdx.ref_tuition_residency_type.ref_tuition_residency_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_tuition_residency_type.description IS 'A person''s residency status for tuition purposes. [CEDS Element: Tuition Residency Type, ID:000297]';

COMMENT ON COLUMN ceds6sc_rdx.ref_tuition_residency_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_tuition_residency_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_us_citizenship_status ( 
	ref_us_citizenship_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_uscitizen_status PRIMARY KEY ( ref_us_citizenship_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_us_citizenship_status IS 'An indicator of whether or not the person is a US citizen. [CEDS Element: United States Citizenship Status, ID:000299]';

COMMENT ON COLUMN ceds6sc_rdx.ref_us_citizenship_status.ref_us_citizenship_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_us_citizenship_status.description IS 'An indicator of whether or not the person is a US citizen. [CEDS Element: United States Citizenship Status, ID:000299]';

COMMENT ON COLUMN ceds6sc_rdx.ref_us_citizenship_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_us_citizenship_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_vision_screening_status ( 
	ref_vision_screening_status_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT xpk_ref_vision_screen PRIMARY KEY ( ref_vision_screening_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_vision_screening_status IS 'Status of an examination used to measure a person''s ability to see. [CEDS Element: Vision Screening Status, ID:000308]';

COMMENT ON COLUMN ceds6sc_rdx.ref_vision_screening_status.ref_vision_screening_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_vision_screening_status.description IS 'Status of an examination used to measure a person''s ability to see. [CEDS Element: Vision Screening Status, ID:000308]';

COMMENT ON COLUMN ceds6sc_rdx.ref_vision_screening_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_vision_screening_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_wage_verification ( 
	ref_wage_verification_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_wage_verification PRIMARY KEY ( ref_wage_verification_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_wage_verification IS 'An indication of whether the wage information has been verified. [CEDS Element: Wage Verification Code, ID:000819]';

COMMENT ON COLUMN ceds6sc_rdx.ref_wage_verification.ref_wage_verification_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_wage_verification.description IS 'An indication of whether the wage information has been verified. [CEDS Element: Wage Verification Code, ID:000819]';

COMMENT ON COLUMN ceds6sc_rdx.ref_wage_verification.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_wage_verification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_wf_program_participation ( 
	ref_wf_program_participation_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_wf_program_participation PRIMARY KEY ( ref_wf_program_participation_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_wf_program_participation IS 'The type of workforce and employment development program that an individual is participating in.  [CEDS Element: Workforce Program Participation, ID:000997]';

COMMENT ON COLUMN ceds6sc_rdx.ref_wf_program_participation.ref_wf_program_participation_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_wf_program_participation.description IS 'The type of workforce and employment development program that an individual is participating in.  [CEDS Element: Workforce Program Participation, ID:000997]';

COMMENT ON COLUMN ceds6sc_rdx.ref_wf_program_participation.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_wf_program_participation.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.required_immunization ( 
	required_immunization_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_immunization_type_id integer  NOT NULL,
	CONSTRAINT pk_required_immunization PRIMARY KEY ( required_immunization_id ),
	CONSTRAINT ix_required_immunization UNIQUE ( organization_id, ref_immunization_type_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.required_immunization IS 'Immunizations required by an organization or governing body.';

COMMENT ON COLUMN ceds6sc_rdx.required_immunization.required_immunization_id IS 'Surrogate key.';

COMMENT ON COLUMN ceds6sc_rdx.required_immunization.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.required_immunization.ref_immunization_type_id IS 'Surrogate key from Ref_Immunization.  An indication that an immunization is specifically required by an organization or governing body. [CEDS Element: Required Immunization, ID:000307]  (Foreign key - Ref_Immunization)';

CREATE TABLE ceds6sc_rdx.role_attendance ( 
	role_attendance_id   integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	number_of_days_in_attendance decimal(9,2)  ,
	number_of_days_absent decimal(9,2)  ,
	attendance_rate      decimal(5,4)  ,
	CONSTRAINT pk_role_attendance PRIMARY KEY ( role_attendance_id )
 );

COMMENT ON TABLE ceds6sc_rdx.role_attendance IS 'Aggregated attendance counts.';

COMMENT ON COLUMN ceds6sc_rdx.role_attendance.role_attendance_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.role_attendance.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.role_attendance.number_of_days_in_attendance IS 'The number of days a person is present when school or program is in session during a given reporting period. [CEDS Element: Number of Days in Attendance, ID:000202]';

COMMENT ON COLUMN ceds6sc_rdx.role_attendance.number_of_days_absent IS 'The number of days a person is absent when school or program is in session during a given reporting period. [CEDS Element: Number of Days Absent, ID:000201]';

COMMENT ON COLUMN ceds6sc_rdx.role_attendance.attendance_rate IS 'The number days a person is in attendance divided by the toltal number of days the school/program was in session. [CEDS Element: Student Attendance Rate, ID:000271]';

CREATE TABLE ceds6sc_rdx.role_status ( 
	role_status_id       integer  NOT NULL,
	status_start_date    date  NOT NULL,
	status_end_date      date  ,
	ref_role_status_id   integer  ,
	organization_person_role_id integer  NOT NULL,
	CONSTRAINT pk_role_status PRIMARY KEY ( role_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.role_status IS 'Identifies changes to the status of a role.';

COMMENT ON COLUMN ceds6sc_rdx.role_status.role_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.role_status.status_start_date IS 'The date that a status became applicable to an individual. [CEDS Elements: Enrollment Status Start Date (000974), Status Start Date (001227), Employment Start Date (000346)]';

COMMENT ON COLUMN ceds6sc_rdx.role_status.status_end_date IS 'The last date when a status applied to an individual. [CEDS Elements: Enrollment Status End Date (000975), Status End Date (001228), Employment End Date (000795)]';

COMMENT ON COLUMN ceds6sc_rdx.role_status.ref_role_status_id IS 'The status for the person''s association to the role.  [CEDS Elements: Class Section Enrollment Status Type (000976), Employment Status (000347), Enrollment Status (000094), Postsecondary Enrollment Status (000096), Teacher Preparation Program Enrollment Status (000767)]';

COMMENT ON COLUMN ceds6sc_rdx.role_status.organization_person_role_id IS 'Foreign key - Organization_Person_Role.';

CREATE TABLE ceds6sc_rdx.services_received ( 
	services_received_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_services_id      integer  NOT NULL,
	full_time_equivalency decimal(3,2)  ,
	CONSTRAINT pk_services_received PRIMARY KEY ( services_received_id )
 );

COMMENT ON TABLE ceds6sc_rdx.services_received IS 'A service provided to a person in any of the P-20, adult education and workforce domains.';

COMMENT ON COLUMN ceds6sc_rdx.services_received.services_received_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.services_received.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.services_received.ref_services_id IS 'A service provided to a person in any of the P-20, adult education and workforce domains. [CEDS Elements: Early Intervention or Special Education Services Received (ID 000321)]  (Foreign key - Ref_Services)';

COMMENT ON COLUMN ceds6sc_rdx.services_received.full_time_equivalency IS 'Calculated ratio of time the person is in a services setting. Values range from 0.00 to 1.00. If the person is in a education setting 25% of the time, the value is .25; if 100% of the time, the value is 1.00. [CEDS Elements: Special Education Full Time Equivalency (ID 001242)]';

CREATE TABLE ceds6sc_rdx.staff_employment ( 
	staff_employment_id  integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	hire_date            date  ,
	position_title       varchar(45)  ,
	ref_employment_separation_type_id integer  ,
	ref_employment_separation_reason_id integer  ,
	union_membership_name varchar(200)  ,
	weeks_employed_per_year integer  ,
	CONSTRAINT pk_staff_employment PRIMARY KEY ( staff_employment_id )
 );

COMMENT ON TABLE ceds6sc_rdx.staff_employment IS 'Information on employment of a person by an organization.';

COMMENT ON COLUMN ceds6sc_rdx.staff_employment.staff_employment_id IS 'Surrogate key.';

COMMENT ON COLUMN ceds6sc_rdx.staff_employment.organization_person_role_id IS 'Foreign key - Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.staff_employment.hire_date IS 'The date on which a person was hired for a position, or consecutive positions within the same organization and job classification. [CEDS Element: Hire Date, ID:000143]';

COMMENT ON COLUMN ceds6sc_rdx.staff_employment.position_title IS 'The descriptive name of a person''s position. [CEDS Element: Position Title, ID:000213]';

COMMENT ON COLUMN ceds6sc_rdx.staff_employment.ref_employment_separation_type_id IS 'A designation of the type of separation occurring between a person and the organization. [CEDS Element: Employment Separation Type, ID:000621]  (Foreign key - Ref_Employment_Separation_Type)';

COMMENT ON COLUMN ceds6sc_rdx.staff_employment.ref_employment_separation_reason_id IS 'The primary reason for the termination of the employment relationship. [CEDS Element: Employment Separation Reason, ID:000620]  (Foreign key - Ref_Employment_Separation_Reason)';

COMMENT ON COLUMN ceds6sc_rdx.staff_employment.union_membership_name IS 'The name of the labor organization of which the person is a member. [CEDS Element: Union Membership Name, ID:001497]';

COMMENT ON COLUMN ceds6sc_rdx.staff_employment.weeks_employed_per_year IS 'The number of weeks employed by year. [CEDS Element: Weeks Employed Per Year, ID: 001498]';

CREATE TABLE ceds6sc_rdx.staff_experience ( 
	person_id            integer  NOT NULL,
	years_of_prior_teaching_experience decimal(9,2)  ,
	years_of_prior_ae_teaching_experience decimal(9,2)  ,
	CONSTRAINT pk_staff_experience PRIMARY KEY ( person_id )
 );

COMMENT ON TABLE ceds6sc_rdx.staff_experience IS 'Number of years of experience for a staff member.';

COMMENT ON COLUMN ceds6sc_rdx.staff_experience.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.staff_experience.years_of_prior_teaching_experience IS 'The total number of years that a person has previously held a teaching position in one or more education institutions. [CEDS Element: Years of Prior Teaching Experience, ID:000302]';

COMMENT ON COLUMN ceds6sc_rdx.staff_experience.years_of_prior_ae_teaching_experience IS 'The total number of years that a person has previously held a teaching position in one or more adult education programs. [CEDS Element: Years of Prior Adult Education Teaching Experience, ID:000788]';

CREATE TABLE ceds6sc_rdx.staff_technical_assistance ( 
	staff_technical_assistance_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_technical_assistance_type_id integer  ,
	ref_technical_assistance_delivery_type_id integer  ,
	technical_assistance_approved_ind bool  ,
	CONSTRAINT pk_staff_technical_assistance PRIMARY KEY ( staff_technical_assistance_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.staff_technical_assistance.staff_technical_assistance_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.staff_technical_assistance.organization_person_role_id IS 'Surrogate key from Organization Person Role';

COMMENT ON COLUMN ceds6sc_rdx.staff_technical_assistance.ref_technical_assistance_type_id IS 'They type of technical assistance provided [CEDS Element: Technical Assistance Type, ID:001495]';

COMMENT ON COLUMN ceds6sc_rdx.staff_technical_assistance.ref_technical_assistance_delivery_type_id IS 'The method of delivery of technical assistance received/provided [CEDS Element: Technical Assistance Delivery Type, ID:001494]';

COMMENT ON COLUMN ceds6sc_rdx.staff_technical_assistance.technical_assistance_approved_ind IS 'Indicates whether or not the technical assistance was approved. [CEDS Element: Technical Assistance Approved Indicator, ID: 001493]';

CREATE TABLE ceds6sc_rdx.teacher_student_data_link_exclusion ( 
	teacher_student_data_link_exclusion_id integer  NOT NULL,
	student_organization_person_role_id integer  NOT NULL,
	teacher_organization_person_role_id integer  NOT NULL,
	CONSTRAINT pk_teacher_student_data_link_exclusion PRIMARY KEY ( teacher_student_data_link_exclusion_id )
 );

COMMENT ON TABLE ceds6sc_rdx.teacher_student_data_link_exclusion IS 'List of exclusions to the teacher-student data link to support state and locally defined policies, includes relationship to a teacher-class-section assignment and a student class-section enrollment.';

COMMENT ON COLUMN ceds6sc_rdx.teacher_student_data_link_exclusion.teacher_student_data_link_exclusion_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.teacher_student_data_link_exclusion.student_organization_person_role_id IS 'Foreign key - K12Student_Course_Section.  Identifies the Student enrolled in a Course Section.';

COMMENT ON COLUMN ceds6sc_rdx.teacher_student_data_link_exclusion.teacher_organization_person_role_id IS 'Foreign key - K12Staff_Assignment.  Identifies the staff member assigned to a class/section.';

CREATE TABLE ceds6sc_rdx.workforce_program_participation ( 
	organization_person_role_id integer  NOT NULL,
	ref_wf_program_participation_id integer  ,
	ref_professional_technical_credential_type_id integer  ,
	diploma_or_credential_award_date char(7)  ,
	CONSTRAINT pk_workforce_program_participation PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.workforce_program_participation IS 'Information on a person''s participation in a workforce program.';

COMMENT ON COLUMN ceds6sc_rdx.workforce_program_participation.organization_person_role_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.workforce_program_participation.ref_wf_program_participation_id IS 'The type of workforce and employment development program that an individual is participating in.  [CEDS Element: Workforce Program Participation, ID:000997]';

COMMENT ON COLUMN ceds6sc_rdx.workforce_program_participation.ref_professional_technical_credential_type_id IS 'An indicator of the category of credential conferred by a state occupational licensing entity or industry organization for competency in a specific area measured by a set of pre-established standards. [CEDS Element: Professional or Technical Credential Conferred, ID:000783]';

COMMENT ON COLUMN ceds6sc_rdx.workforce_program_participation.diploma_or_credential_award_date IS 'The month and year on which the diploma/credential is awarded to a student in recognition of his/her completion of the curricular requirements. [CEDS Element: Diploma or Credential Award Date, ID:000081]';

ALTER TABLE ceds6sc_rdx.achievement_evidence ADD CONSTRAINT fk_achievement_evidence_achievement FOREIGN KEY ( achievement_id ) REFERENCES ceds6sc_rdx.achievement( achievement_id );

COMMENT ON CONSTRAINT FK_Achievement_Evidence_Achievement ON ceds6sc_rdx.achievement_evidence IS '';

ALTER TABLE ceds6sc_rdx.achievement_evidence ADD CONSTRAINT fk_achievement_evidence_assessment_subtest_result FOREIGN KEY ( assessment_subtest_result_id ) REFERENCES ceds6sc_rdx.assessment_result( assessment_result_id );

COMMENT ON CONSTRAINT FK_Achievement_Evidence_Assessment_Subtest_Result ON ceds6sc_rdx.achievement_evidence IS '';

ALTER TABLE ceds6sc_rdx.activity_recognition ADD CONSTRAINT fk_activity_recognition_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Activity_Recognition_Organization_Person_Role ON ceds6sc_rdx.activity_recognition IS '';

ALTER TABLE ceds6sc_rdx.activity_recognition ADD CONSTRAINT fk_activity_recognition_ref_activity_recognition_type FOREIGN KEY ( ref_activity_recognition_type_id ) REFERENCES ceds6sc_rdx.ref_activity_recognition_type( ref_activity_recognition_type_id );

COMMENT ON CONSTRAINT FK_Activity_Recognition_Ref_Activity_Recognition_Type ON ceds6sc_rdx.activity_recognition IS '';

ALTER TABLE ceds6sc_rdx.ae_provider ADD CONSTRAINT fk_ae_provider_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ae_Provider_Organization ON ceds6sc_rdx.ae_provider IS '';

ALTER TABLE ceds6sc_rdx.ae_provider ADD CONSTRAINT fk_ae_provider_ref_level_of_institution FOREIGN KEY ( ref_level_of_institution_id ) REFERENCES ceds6sc_rdx.ref_level_of_institution( ref_level_of_institution_id );

COMMENT ON CONSTRAINT FK_Ae_Provider_Ref_Level_Of_Institution ON ceds6sc_rdx.ae_provider IS '';

ALTER TABLE ceds6sc_rdx.ae_student_academic_record ADD CONSTRAINT fk_ae_student_academic_record_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Ae_Student_Academic_Record_Organization_Person_Role ON ceds6sc_rdx.ae_student_academic_record IS '';

ALTER TABLE ceds6sc_rdx.ae_student_academic_record ADD CONSTRAINT fk_ae_student_academic_record_ref_high_school_diploma_type FOREIGN KEY ( ref_high_school_diploma_type_id ) REFERENCES ceds6sc_rdx.ref_high_school_diploma_type( ref_high_school_diploma_type_id );

COMMENT ON CONSTRAINT FK_Ae_Student_Academic_Record_Ref_High_School_Diploma_Type ON ceds6sc_rdx.ae_student_academic_record IS '';

ALTER TABLE ceds6sc_rdx.ae_student_academic_record ADD CONSTRAINT fk_ae_student_academic_record_ref_prof_technical_credential_type FOREIGN KEY ( ref_professional_technical_credential_type_id ) REFERENCES ceds6sc_rdx.ref_professional_technical_credential_type( ref_professional_technical_credential_type_id );

COMMENT ON CONSTRAINT FK_Ae_Student_Academic_Record_Ref_Prof_Technical_Credential_Type ON ceds6sc_rdx.ae_student_academic_record IS '';

ALTER TABLE ceds6sc_rdx.apip_interaction ADD CONSTRAINT fk_apip_interaction_assessment_item_apip FOREIGN KEY ( assessment_item_id ) REFERENCES ceds6sc_rdx.assessment_item_apip( assessment_item_id );

COMMENT ON CONSTRAINT FK_Apip_Interaction_Assessment_Item_Apip ON ceds6sc_rdx.apip_interaction IS '';

ALTER TABLE ceds6sc_rdx.apip_interaction ADD CONSTRAINT fk_apip_interaction_ref_apip_interaction_type FOREIGN KEY ( ref_apip_interaction_type_id ) REFERENCES ceds6sc_rdx.ref_apip_interaction_type( ref_apip_interaction_type_id );

COMMENT ON CONSTRAINT FK_Apip_Interaction_Ref_APIP_Interaction_Type ON ceds6sc_rdx.apip_interaction IS '';

ALTER TABLE ceds6sc_rdx.assessment ADD CONSTRAINT fk_assessment_ref_ref_academic_subject FOREIGN KEY ( ref_academic_subject_id ) REFERENCES ceds6sc_rdx.ref_academic_subject( ref_academic_subject_id );

COMMENT ON CONSTRAINT FK_Assessment_Ref_Ref_Academic_Subject ON ceds6sc_rdx.assessment IS '';

ALTER TABLE ceds6sc_rdx.assessment ADD CONSTRAINT fk_assessment_ref_assessment_purpose FOREIGN KEY ( ref_assessment_purpose_id ) REFERENCES ceds6sc_rdx.ref_assessment_purpose( ref_assessment_purpose_id );

COMMENT ON CONSTRAINT FK_Assessment_Ref_Assessment_Purpose ON ceds6sc_rdx.assessment IS '';

ALTER TABLE ceds6sc_rdx.assessment ADD CONSTRAINT fk_assessment_ref_assessment_type FOREIGN KEY ( ref_assessment_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_type( ref_assessment_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Ref_Assessment_Type ON ceds6sc_rdx.assessment IS '';

ALTER TABLE ceds6sc_rdx.assessment ADD CONSTRAINT fk_assessment_ref_assessment_type_children_with_disabilities FOREIGN KEY ( ref_assessment_type_children_with_disabilities_id ) REFERENCES ceds6sc_rdx.ref_assessment_type_children_with_disabilities( ref_assessment_type_children_with_disabilities_id );

COMMENT ON CONSTRAINT FK_Assessment_Ref_Assessment_Type_Children_With_Disabilities ON ceds6sc_rdx.assessment IS '';

ALTER TABLE ceds6sc_rdx.assessment_administration_organization ADD CONSTRAINT fk_assessment_administration_organization_assessment_admin FOREIGN KEY ( assessment_administration_id ) REFERENCES ceds6sc_rdx.assessment_administration( assessment_administration_id );

COMMENT ON CONSTRAINT FK_Assessment_Administration_Organization_Assessment_Admin ON ceds6sc_rdx.assessment_administration_organization IS '';

ALTER TABLE ceds6sc_rdx.assessment_administration_organization ADD CONSTRAINT fk_assessment_administration_organization_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Assessment_Administration_Organization_Organization ON ceds6sc_rdx.assessment_administration_organization IS '';

ALTER TABLE ceds6sc_rdx.assessment_asset ADD CONSTRAINT fk_assessment_asset_learning_resource FOREIGN KEY ( learning_resource_id ) REFERENCES ceds6sc_rdx.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT FK_Assessment_Asset_Learning_Resource ON ceds6sc_rdx.assessment_asset IS '';

ALTER TABLE ceds6sc_rdx.assessment_asset ADD CONSTRAINT fk_assessment_asset_ref_assess_asset_idtype FOREIGN KEY ( ref_assessment_assest_identifier_type ) REFERENCES ceds6sc_rdx.ref_assessment_asset_identifier_type( ref_assessment_asset_identifier_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Asset_Ref_Assess_Asset_IDType ON ceds6sc_rdx.assessment_asset IS '';

ALTER TABLE ceds6sc_rdx.assessment_asset ADD CONSTRAINT fk_assessment_asset_ref_assessment_asset_type FOREIGN KEY ( ref_assessment_asset_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_asset_type( ref_assessment_asset_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Asset_Ref_Assessment_Asset_Type ON ceds6sc_rdx.assessment_asset IS '';

ALTER TABLE ceds6sc_rdx.assessment_asset ADD CONSTRAINT fk_assessment_asset_ref_language FOREIGN KEY ( ref_assessment_language_id ) REFERENCES ceds6sc_rdx.ref_language( ref_language_id );

COMMENT ON CONSTRAINT FK_Assessment_Asset_Ref_Language ON ceds6sc_rdx.assessment_asset IS '';

ALTER TABLE ceds6sc_rdx.assessment_form ADD CONSTRAINT fk_assessment_form_assessment FOREIGN KEY ( assessment_id ) REFERENCES ceds6sc_rdx.assessment( assessment_id );

COMMENT ON CONSTRAINT FK_Assessment_Form_Assessment ON ceds6sc_rdx.assessment_form IS '';

ALTER TABLE ceds6sc_rdx.assessment_form ADD CONSTRAINT fk_assessment_form_learning_resource FOREIGN KEY ( learning_resource_id ) REFERENCES ceds6sc_rdx.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT FK_Assessment_Form_Learning_Resource ON ceds6sc_rdx.assessment_form IS '';

ALTER TABLE ceds6sc_rdx.assessment_form ADD CONSTRAINT fk_assessment_form_ref_language FOREIGN KEY ( ref_assessment_language_id ) REFERENCES ceds6sc_rdx.ref_language( ref_language_id );

COMMENT ON CONSTRAINT FK_Assessment_Form_Ref_Language ON ceds6sc_rdx.assessment_form IS '';

ALTER TABLE ceds6sc_rdx.assessment_form_assessment_form_section ADD CONSTRAINT fk_assessment_form_assessment_form_section_assessment_form FOREIGN KEY ( assessment_form_id ) REFERENCES ceds6sc_rdx.assessment_form( assessment_form_id );

COMMENT ON CONSTRAINT FK_Assessment_Form_Assessment_Form_Section_Assessment_Form ON ceds6sc_rdx.assessment_form_assessment_form_section IS '';

ALTER TABLE ceds6sc_rdx.assessment_form_assessment_form_section ADD CONSTRAINT fk_assessment_form_assessment_form_section_form_section FOREIGN KEY ( assessment_form_section_id ) REFERENCES ceds6sc_rdx.assessment_form_section( assessment_form_section_id );

COMMENT ON CONSTRAINT FK_Assessment_Form_Assessment_Form_Section_Form_Section ON ceds6sc_rdx.assessment_form_assessment_form_section IS '';

ALTER TABLE ceds6sc_rdx.assessment_form_section_assessment_asset ADD CONSTRAINT fk_assessment_form_section_assessment_asset_assessment_asset FOREIGN KEY ( assessment_asset_id ) REFERENCES ceds6sc_rdx.assessment_asset( assessment_asset_id );

COMMENT ON CONSTRAINT FK_Assessment_Form_Section_Assessment_Asset_Assessment_Asset ON ceds6sc_rdx.assessment_form_section_assessment_asset IS '';

ALTER TABLE ceds6sc_rdx.assessment_form_section_assessment_asset ADD CONSTRAINT fk_assessment_form_section_assessment_asset_assessment_form_section FOREIGN KEY ( assessment_form_section_id ) REFERENCES ceds6sc_rdx.assessment_form_section( assessment_form_section_id );

COMMENT ON CONSTRAINT FK_Assessment_Form_Section_Assessment_Asset_Assessment_Form_Section ON ceds6sc_rdx.assessment_form_section_assessment_asset IS '';

ALTER TABLE ceds6sc_rdx.assessment_item ADD CONSTRAINT fk_assessment_item_learning_resource FOREIGN KEY ( learning_resource_id ) REFERENCES ceds6sc_rdx.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Learning_Resource ON ceds6sc_rdx.assessment_item IS '';

ALTER TABLE ceds6sc_rdx.assessment_item ADD CONSTRAINT fk_assessment_item_ref_assessment_item_type FOREIGN KEY ( ref_assessment_item_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_item_type( ref_assessment_item_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Ref_Assessment_Item_Type ON ceds6sc_rdx.assessment_item IS '';

ALTER TABLE ceds6sc_rdx.assessment_item ADD CONSTRAINT fk_assessment_item_ref_naepaspects_of_reading FOREIGN KEY ( ref_naep_aspects_of_reading_id ) REFERENCES ceds6sc_rdx.ref_naep_aspects_of_reading( ref_naep_aspects_of_reading_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Ref_NAEPAspects_Of_Reading ON ceds6sc_rdx.assessment_item IS '';

ALTER TABLE ceds6sc_rdx.assessment_item ADD CONSTRAINT fk_assessment_item_ref_naepmath_complexity_level FOREIGN KEY ( ref_naep_math_complexity_level_id ) REFERENCES ceds6sc_rdx.ref_naep_math_complexity_level( ref_naep_math_complexity_level_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Ref_NAEPMath_Complexity_Level ON ceds6sc_rdx.assessment_item IS '';

ALTER TABLE ceds6sc_rdx.assessment_item ADD CONSTRAINT fk_assessment_item_ref_text_complexity_system FOREIGN KEY ( ref_text_complexity_system_id ) REFERENCES ceds6sc_rdx.ref_text_complexity_system( ref_text_complexity_system_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Ref_Text_Complexity_System ON ceds6sc_rdx.assessment_item IS '';

ALTER TABLE ceds6sc_rdx.assessment_item ADD CONSTRAINT fk_assessment_item_rubric FOREIGN KEY ( rubric_id ) REFERENCES ceds6sc_rdx.rubric( rubric_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Rubric ON ceds6sc_rdx.assessment_item IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_apip_description ADD CONSTRAINT fk_assessment_item_apip_description_assessment_item_apip FOREIGN KEY ( assessment_item_id ) REFERENCES ceds6sc_rdx.assessment_item_apip( assessment_item_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Apip_Description_Assessment_Item_Apip ON ceds6sc_rdx.assessment_item_apip_description IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_apip_description ADD CONSTRAINT fk_assessment_item_apip_description_ref_language FOREIGN KEY ( ref_keyword_translation_language_id ) REFERENCES ceds6sc_rdx.ref_language( ref_language_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Apip_Description_Ref_Language ON ceds6sc_rdx.assessment_item_apip_description IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_possible_response ADD CONSTRAINT fk_assessment_item_possible_response_assessment_item FOREIGN KEY ( assessment_item_id ) REFERENCES ceds6sc_rdx.assessment_item( assessment_item_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Possible_Response_Assessment_Item ON ceds6sc_rdx.assessment_item_possible_response IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_response_theory ADD CONSTRAINT fk_assessment_item_response_theory_assessment_item FOREIGN KEY ( assessment_item_id ) REFERENCES ceds6sc_rdx.assessment_item( assessment_item_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Response_Theory_Assessment_Item ON ceds6sc_rdx.assessment_item_response_theory IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_response_theory ADD CONSTRAINT fk_assessment_item_response_theory_ref_irt_difficulty_category FOREIGN KEY ( ref_item_response_theory_difficulty_category_id ) REFERENCES ceds6sc_rdx.ref_item_response_theory_difficulty_category( ref_item_response_theory_difficulty_category_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Response_Theory_Ref_IRT_Difficulty_Category ON ceds6sc_rdx.assessment_item_response_theory IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_response_theory ADD CONSTRAINT fk_assessment_item_response_theory_ref_irt_kappa_algorithm FOREIGN KEY ( ref_item_response_theory_kappa_algorithm_id ) REFERENCES ceds6sc_rdx.ref_item_response_theory_kappa_algorithm( ref_item_response_theory_kappa_algorithm_id );

COMMENT ON CONSTRAINT FK_Assessment_Item_Response_Theory_Ref_IRT_Kappa_Algorithm ON ceds6sc_rdx.assessment_item_response_theory IS '';

ALTER TABLE ceds6sc_rdx.assessment_language ADD CONSTRAINT fk_assessment_language_assessment FOREIGN KEY ( assessment_id ) REFERENCES ceds6sc_rdx.assessment( assessment_id );

COMMENT ON CONSTRAINT FK_Assessment_Language_Assessment ON ceds6sc_rdx.assessment_language IS '';

ALTER TABLE ceds6sc_rdx.assessment_language ADD CONSTRAINT fk_assessment_language_ref_language FOREIGN KEY ( ref_language_id ) REFERENCES ceds6sc_rdx.ref_language( ref_language_id );

COMMENT ON CONSTRAINT FK_Assessment_Language_Ref_Language ON ceds6sc_rdx.assessment_language IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_apip_content ADD CONSTRAINT fk_assess_need_apip_content_assessment_personal_needs_profile_content FOREIGN KEY ( assessment_personal_needs_profile_content_id ) REFERENCES ceds6sc_rdx.assessment_personal_needs_profile_content( assessment_personal_needs_profile_content_id );

COMMENT ON CONSTRAINT FK_Assess_Need_Apip_Content_Assessment_Personal_Needs_Profile_Content ON ceds6sc_rdx.assessment_need_apip_content IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_apip_content ADD CONSTRAINT fk_assess_need_apip_content_ref_assessment_need_alternative_represent FOREIGN KEY ( ref_assessment_need_alternative_representation_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_alternative_representation_type( ref_assessment_need_alternative_representation_type_id );

COMMENT ON CONSTRAINT FK_Assess_Need_Apip_Content_Ref_Assessment_Need_Alternative_Represent ON ceds6sc_rdx.assessment_need_apip_content IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_apip_content ADD CONSTRAINT fk_assessment_need_apip_content_ref_assessment_need_signing_type FOREIGN KEY ( ref_assessment_need_signing_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_signing_type( ref_assessment_need_signing_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Need_Apip_Content_Ref_Assessment_Need_Signing_Type ON ceds6sc_rdx.assessment_need_apip_content IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_apip_content ADD CONSTRAINT fk_assess_need_apip_content_ref_assessment_need_spoken_source_pref FOREIGN KEY ( ref_assessment_need_spoken_source_preference_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_spoken_source_preference_type( ref_assessment_need_spoken_source_preference_type_id );

COMMENT ON CONSTRAINT FK_Assess_Need_Apip_Content_Ref_Assessment_Need_Spoken_Source_Pref ON ceds6sc_rdx.assessment_need_apip_content IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_apip_content ADD CONSTRAINT fk_assess_need_apip_content_ref_assessment_need_user_spoken_preference FOREIGN KEY ( ref_assessment_need_user_spoken_preference_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_user_spoken_preference_type( ref_assessment_need_user_spoken_preference_type_id );

COMMENT ON CONSTRAINT FK_Assess_Need_Apip_Content_Ref_Assessment_Need_User_Spoken_Preference ON ceds6sc_rdx.assessment_need_apip_content IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_apip_content ADD CONSTRAINT fk_assessment_need_apip_content_ref_language FOREIGN KEY ( item_translation_display_language_type_id ) REFERENCES ceds6sc_rdx.ref_language( ref_language_id );

COMMENT ON CONSTRAINT FK_Assessment_Need_Apip_Content_Ref_Language ON ceds6sc_rdx.assessment_need_apip_content IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_apip_content ADD CONSTRAINT fk_assessment_need_apip_content_ref_language1 FOREIGN KEY ( keyword_translation_language_type_id ) REFERENCES ceds6sc_rdx.ref_language( ref_language_id );

COMMENT ON CONSTRAINT FK_Assessment_Need_Apip_Content_Ref_Language1 ON ceds6sc_rdx.assessment_need_apip_content IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_apip_display ADD CONSTRAINT fk_assess_need_apip_display_assessment_personal_needs_profile_display FOREIGN KEY ( assessment_personal_needs_profile_display_id ) REFERENCES ceds6sc_rdx.assessment_personal_needs_profile_display( assessment_personal_needs_profile_display_id );

COMMENT ON CONSTRAINT FK_Assess_Need_Apip_Display_Assessment_Personal_Needs_Profile_Display ON ceds6sc_rdx.assessment_need_apip_display IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_apip_display ADD CONSTRAINT fk_assessment_need_apip_display_ref_assessment_need_masking_type FOREIGN KEY ( ref_assessment_need_masking_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_masking_type( ref_assessment_need_masking_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Need_Apip_Display_Ref_Assessment_Need_Masking_Type ON ceds6sc_rdx.assessment_need_apip_display IS '';

ALTER TABLE ceds6sc_rdx.assessment_participant_session_accommodation ADD CONSTRAINT fk_assess_partic_session_accomodation_assess_participant_session FOREIGN KEY ( assessment_participant_session_id ) REFERENCES ceds6sc_rdx.assessment_participant_session( assessment_participant_session_id );

COMMENT ON CONSTRAINT FK_Assess_Partic_Session_Accomodation_Assess_Participant_Session ON ceds6sc_rdx.assessment_participant_session_accommodation IS '';

ALTER TABLE ceds6sc_rdx.assessment_participant_session_accommodation ADD CONSTRAINT fk_assess_part_session_accommodation_ref_assessment_accommodation_category FOREIGN KEY ( ref_assessment_accommodation_category_id ) REFERENCES ceds6sc_rdx.ref_assessment_accommodation_category( ref_assessment_accommodation_category_id );

COMMENT ON CONSTRAINT FK_Assess_Part_Session_accommodation_ref_assessment_Accommodation_Category ON ceds6sc_rdx.assessment_participant_session_accommodation IS '';

ALTER TABLE ceds6sc_rdx.assessment_participant_session_accommodation ADD CONSTRAINT fk_assess_participant_session_accomodation_ref_assessment_accommod FOREIGN KEY ( ref_assessment_accommodation_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_accommodation_type( ref_assessment_accommodation_type_id );

COMMENT ON CONSTRAINT FK_Assess_Participant_Session_Accomodation_Ref_Assessment_Accommod ON ceds6sc_rdx.assessment_participant_session_accommodation IS '';

ALTER TABLE ceds6sc_rdx.assessment_personal_need_language_learner ADD CONSTRAINT fk_anpcontent_language_learner_assessment_needs_profile_content FOREIGN KEY ( assessment_needs_profile_content_id ) REFERENCES ceds6sc_rdx.assessment_personal_needs_profile_content( assessment_personal_needs_profile_content_id );

COMMENT ON CONSTRAINT FK_ANPContent_Language_Learner_Assessment_Needs_Profile_Content ON ceds6sc_rdx.assessment_personal_need_language_learner IS '';

ALTER TABLE ceds6sc_rdx.assessment_personal_need_language_learner ADD CONSTRAINT fk_anpcontent_language_learner_ref_assess_needs_profile_content_lang FOREIGN KEY ( ref_assessment_needs_profile_content_language_learner_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_language_learner_type( ref_assessment_need_language_learner_type_id );

COMMENT ON CONSTRAINT FK_ANPContent_Language_Learner_Ref_Assess_Needs_Profile_Content_Lang ON ceds6sc_rdx.assessment_personal_need_language_learner IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration_accommodation ADD CONSTRAINT fk_assessment_registration_registration FOREIGN KEY ( assessment_registration_id ) REFERENCES ceds6sc_rdx.assessment_registration( assessment_registration_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Registration ON ceds6sc_rdx.assessment_registration_accommodation IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration_accommodation ADD CONSTRAINT fk_assess_reg_accommodation_ref_assessment_accommodation_category FOREIGN KEY ( ref_assessment_accommodation_category_id ) REFERENCES ceds6sc_rdx.ref_assessment_accommodation_category( ref_assessment_accommodation_category_id );

COMMENT ON CONSTRAINT FK_Assess_Reg_accommodation_ref_assessment_Accommodation_Category ON ceds6sc_rdx.assessment_registration_accommodation IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration_accommodation ADD CONSTRAINT fk_assessment_registration_ref_ref_assessment_accommodation FOREIGN KEY ( ref_assessment_accommodation_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_accommodation_type( ref_assessment_accommodation_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Registration_Ref_Ref_Assessment_Accommodation ON ceds6sc_rdx.assessment_registration_accommodation IS '';

ALTER TABLE ceds6sc_rdx.assessment_result_performance_level ADD CONSTRAINT fk_assessment_result_performance_level_assessment_performance_level FOREIGN KEY ( assessment_performance_level_id ) REFERENCES ceds6sc_rdx.assessment_performance_level( assessment_performance_level_id );

COMMENT ON CONSTRAINT FK_Assessment_Result_Performance_Level_Assessment_Performance_Level ON ceds6sc_rdx.assessment_result_performance_level IS '';

ALTER TABLE ceds6sc_rdx.assessment_result_performance_level ADD CONSTRAINT fk_assessment_result_performance_level_assessment_result FOREIGN KEY ( assessment_result_id ) REFERENCES ceds6sc_rdx.assessment_result( assessment_result_id );

COMMENT ON CONSTRAINT FK_Assessment_Result_Performance_Level_Assessment_Result ON ceds6sc_rdx.assessment_result_performance_level IS '';

ALTER TABLE ceds6sc_rdx.assessment_session ADD CONSTRAINT fk_assessment_session_assessment_administration FOREIGN KEY ( assessment_administration_id ) REFERENCES ceds6sc_rdx.assessment_administration( assessment_administration_id );

COMMENT ON CONSTRAINT FK_Assessment_Session_Assessment_Administration ON ceds6sc_rdx.assessment_session IS '';

ALTER TABLE ceds6sc_rdx.assessment_session ADD CONSTRAINT fk_assessment_session_organization FOREIGN KEY ( lea_organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Assessment_Session_Organization ON ceds6sc_rdx.assessment_session IS '';

ALTER TABLE ceds6sc_rdx.assessment_session ADD CONSTRAINT fk_assessment_session_organization1 FOREIGN KEY ( school_organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Assessment_Session_Organization1 ON ceds6sc_rdx.assessment_session IS '';

ALTER TABLE ceds6sc_rdx.assessment_session ADD CONSTRAINT fk_assessment_session_organization2 FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Assessment_Session_Organization2 ON ceds6sc_rdx.assessment_session IS '';

ALTER TABLE ceds6sc_rdx.assessment_session ADD CONSTRAINT fk_assessment_session_ref_assessment_session_special_circumstance FOREIGN KEY ( ref_assessment_session_special_circumstance_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_session_special_circumstance_type( ref_assessment_session_special_circumstance_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Session_Ref_Assessment_Session_Special_Circumstance ON ceds6sc_rdx.assessment_session IS '';

ALTER TABLE ceds6sc_rdx.assessment_session ADD CONSTRAINT fk_assessment_session_ref_assessment_session_type FOREIGN KEY ( ref_assessment_session_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_session_type( ref_assessment_session_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Session_Ref_Assessment_Session_Type ON ceds6sc_rdx.assessment_session IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest ADD CONSTRAINT fk_assessment_sub_test_assessment_form FOREIGN KEY ( assessment_form_id ) REFERENCES ceds6sc_rdx.assessment_form( assessment_form_id );

COMMENT ON CONSTRAINT FK_Assessment_Sub_Test_Assessment_Form ON ceds6sc_rdx.assessment_subtest IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest ADD CONSTRAINT fk_assessment_subtest_assessment_sub_test FOREIGN KEY ( child_of_assessment_subtest_id ) REFERENCES ceds6sc_rdx.assessment_subtest( assessment_subtest_id );

COMMENT ON CONSTRAINT FK_Assessment_Subtest_Assessment_Sub_Test ON ceds6sc_rdx.assessment_subtest IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest ADD CONSTRAINT fk_form_sub_test_ref_academic_subject FOREIGN KEY ( ref_academic_subject_id ) REFERENCES ceds6sc_rdx.ref_academic_subject( ref_academic_subject_id );

COMMENT ON CONSTRAINT FK_Form_Sub_Test_Ref_Academic_Subject ON ceds6sc_rdx.assessment_subtest IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest ADD CONSTRAINT fk_assessment_subtest_ref_assessment_purpose FOREIGN KEY ( ref_assessment_purpose_id ) REFERENCES ceds6sc_rdx.ref_assessment_purpose( ref_assessment_purpose_id );

COMMENT ON CONSTRAINT FK_Assessment_Subtest_Ref_Assessment_Purpose ON ceds6sc_rdx.assessment_subtest IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest ADD CONSTRAINT fk_assessment_subtest_ref_assess_subtest_identifier_type FOREIGN KEY ( ref_assessment_subtest_identifier_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_subtest_identifier_type( ref_assessment_subtest_identifier_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Subtest_Ref_Assess_Subtest_Identifier_Type ON ceds6sc_rdx.assessment_subtest IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest ADD CONSTRAINT fk_assessment_subtest_ref_content_standard_type FOREIGN KEY ( ref_content_standard_type_id ) REFERENCES ceds6sc_rdx.ref_content_standard_type( ref_content_standard_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Subtest_Ref_Content_Standard_Type ON ceds6sc_rdx.assessment_subtest IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest ADD CONSTRAINT fk_assessment_subtest_ref_score_metric_type FOREIGN KEY ( ref_score_metric_type_id ) REFERENCES ceds6sc_rdx.ref_score_metric_type( ref_score_metric_type_id );

COMMENT ON CONSTRAINT FK_Assessment_Subtest_Ref_Score_Metric_Type ON ceds6sc_rdx.assessment_subtest IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest_el_developmental_domain ADD CONSTRAINT fk_assessment_subtest_assessment_el_developmental_domain_assessment_subtest FOREIGN KEY ( assessment_subtest_id ) REFERENCES ceds6sc_rdx.assessment_subtest( assessment_subtest_id );

COMMENT ON CONSTRAINT FK_Assessment_Subtest_Assessment_EL_Developmental_Domain_Assessment_Subtest ON ceds6sc_rdx.assessment_subtest_el_developmental_domain IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest_el_developmental_domain ADD CONSTRAINT fk_assessment_subtest_assessment_el_developmental_domain_ref_assessment_el_developmental_domain FOREIGN KEY ( ref_assessment_el_developmental_domain_id ) REFERENCES ceds6sc_rdx.ref_assessment_el_developmental_domain( ref_assessment_el_developmental_domain_id );

COMMENT ON CONSTRAINT FK_Assessment_Subtest_Assessment_EL_Developmental_Domain_Ref_Assessment_EL_Developmental_Domain ON ceds6sc_rdx.assessment_subtest_el_developmental_domain IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest_levels_for_which_designed ADD CONSTRAINT fk_assessment_subtest_levels_for_which_designed_assessment_subtest FOREIGN KEY ( assessment_sub_test_id ) REFERENCES ceds6sc_rdx.assessment_subtest( assessment_subtest_id );

COMMENT ON CONSTRAINT FK_Assessment_Subtest_Levels_For_Which_Designed_Assessment_Subtest ON ceds6sc_rdx.assessment_subtest_levels_for_which_designed IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest_levels_for_which_designed ADD CONSTRAINT fk_assessment_subtest_levels_for_which_designed_ref_grade FOREIGN KEY ( ref_grade_id ) REFERENCES ceds6sc_rdx.ref_grade_level( ref_grade_level_id );

COMMENT ON CONSTRAINT FK_Assessment_Subtest_Levels_For_Which_Designed_Ref_Grade ON ceds6sc_rdx.assessment_subtest_levels_for_which_designed IS '';

ALTER TABLE ceds6sc_rdx.authorization ADD CONSTRAINT fk_authorization_application FOREIGN KEY ( application_id ) REFERENCES ceds6sc_rdx.application( application_id );

COMMENT ON CONSTRAINT FK_Authorization_Application ON ceds6sc_rdx.authorization IS '';

ALTER TABLE ceds6sc_rdx.authorization ADD CONSTRAINT fk_authorization_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Authorization_Organization_Person_Role ON ceds6sc_rdx.authorization IS '';

ALTER TABLE ceds6sc_rdx.competency_item_competency_set ADD CONSTRAINT fk_competency_item_competency_set_competency_set FOREIGN KEY ( competency_set_id ) REFERENCES ceds6sc_rdx.competency_set( competency_set_id );

COMMENT ON CONSTRAINT FK_Competency_Item_Competency_Set_Competency_Set ON ceds6sc_rdx.competency_item_competency_set IS '';

ALTER TABLE ceds6sc_rdx.competency_item_competency_set ADD CONSTRAINT fk_competency_item_competency_set_learning_standard_item FOREIGN KEY ( learning_standard_item_id ) REFERENCES ceds6sc_rdx.learning_standard_item( learning_standard_item_id );

COMMENT ON CONSTRAINT FK_Competency_Item_Competency_Set_Learning_Standard_Item ON ceds6sc_rdx.competency_item_competency_set IS '';

ALTER TABLE ceds6sc_rdx.core_knowledge_area ADD CONSTRAINT fk_core_knowledge_area_ref_core_knowledge_area FOREIGN KEY ( ref_core_knowledge_area_id ) REFERENCES ceds6sc_rdx.ref_core_knowledge_area( ref_core_knowledge_area_id );

COMMENT ON CONSTRAINT FK_Core_Knowledge_Area_Ref_Core_Knowledge_Area ON ceds6sc_rdx.core_knowledge_area IS '';

ALTER TABLE ceds6sc_rdx.core_knowledge_area ADD CONSTRAINT fk_core_knowledge_area_professional_development_activity FOREIGN KEY ( professional_development_activity_id ) REFERENCES ceds6sc_rdx.staff_professional_development_activity( staff_professional_development_activity_id );

COMMENT ON CONSTRAINT FK_Core_Knowledge_Area_Professional_Development_Activity ON ceds6sc_rdx.core_knowledge_area IS '';

ALTER TABLE ceds6sc_rdx.course_section ADD CONSTRAINT fk_course_section_course FOREIGN KEY ( course_id ) REFERENCES ceds6sc_rdx.course( organization_id );

COMMENT ON CONSTRAINT FK_Course_Section_Course ON ceds6sc_rdx.course_section IS '';

ALTER TABLE ceds6sc_rdx.course_section ADD CONSTRAINT fk_course_section_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT FK_Course_Section_Organization ON ceds6sc_rdx.course_section IS '';

ALTER TABLE ceds6sc_rdx.course_section ADD CONSTRAINT fk_course_section_organization_calendar_session FOREIGN KEY ( organization_calendar_session_id ) REFERENCES ceds6sc_rdx.organization_calendar_session( organization_calendar_session_id );

COMMENT ON CONSTRAINT FK_Course_Section_Organization_Calendar_Session ON ceds6sc_rdx.course_section IS '';

ALTER TABLE ceds6sc_rdx.course_section ADD CONSTRAINT fk_course_section_ref_advanced_placement_course_code_id FOREIGN KEY ( ref_advanced_placement_course_code_id ) REFERENCES ceds6sc_rdx.ref_advanced_placement_course_code( ref_advanced_placement_course_code_id );

COMMENT ON CONSTRAINT FK_Course_Section_Ref_Advanced_Placement_Course_Code_Id ON ceds6sc_rdx.course_section IS '';

ALTER TABLE ceds6sc_rdx.course_section ADD CONSTRAINT fk_course_section_ref_course_section_delivery_mode FOREIGN KEY ( ref_course_section_delivery_mode_id ) REFERENCES ceds6sc_rdx.ref_course_section_delivery_mode( ref_course_section_delivery_mode_id );

COMMENT ON CONSTRAINT FK_Course_Section_Ref_Course_Section_Delivery_Mode ON ceds6sc_rdx.course_section IS '';

ALTER TABLE ceds6sc_rdx.course_section ADD CONSTRAINT fk_course_section_ref_credit_type_earned FOREIGN KEY ( ref_credit_type_earned_id ) REFERENCES ceds6sc_rdx.ref_credit_type_earned( ref_credit_type_earned_id );

COMMENT ON CONSTRAINT FK_Course_Section_Ref_Credit_Type_Earned ON ceds6sc_rdx.course_section IS '';

ALTER TABLE ceds6sc_rdx.course_section ADD CONSTRAINT fk_course_section_ref_language FOREIGN KEY ( ref_instruction_language_id ) REFERENCES ceds6sc_rdx.ref_language( ref_language_id );

COMMENT ON CONSTRAINT FK_Course_Section_Ref_Language ON ceds6sc_rdx.course_section IS '';

ALTER TABLE ceds6sc_rdx.course_section ADD CONSTRAINT fk_course_section_ref_course_section_single_sex_class_status FOREIGN KEY ( ref_single_sex_class_status_id ) REFERENCES ceds6sc_rdx.ref_single_sex_class_status( ref_single_sex_class_status_id );

COMMENT ON CONSTRAINT FK_Course_Section_Ref_Course_Section_Single_Sex_Class_Status ON ceds6sc_rdx.course_section IS '';

ALTER TABLE ceds6sc_rdx.course_section_location ADD CONSTRAINT fk_course_section_location_classroom FOREIGN KEY ( location_id ) REFERENCES ceds6sc_rdx.classroom( location_id );

COMMENT ON CONSTRAINT FK_Course_Section_Location_Classroom ON ceds6sc_rdx.course_section_location IS '';

ALTER TABLE ceds6sc_rdx.course_section_location ADD CONSTRAINT fk_course_section_location_course_section FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.course_section( organization_id );

COMMENT ON CONSTRAINT FK_Course_Section_Location_Course_Section ON ceds6sc_rdx.course_section_location IS '';

ALTER TABLE ceds6sc_rdx.course_section_location ADD CONSTRAINT fk_course_section_location_ref_instruction_location_type FOREIGN KEY ( ref_instruction_location_type_id ) REFERENCES ceds6sc_rdx.ref_instruction_location_type( ref_instruction_location_type_id );

COMMENT ON CONSTRAINT FK_Course_Section_Location_Ref_Instruction_Location_Type ON ceds6sc_rdx.course_section_location IS '';

ALTER TABLE ceds6sc_rdx.cte_course ADD CONSTRAINT fk_cte_course_course FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.course( organization_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Course ON ceds6sc_rdx.cte_course IS '';

ALTER TABLE ceds6sc_rdx.cte_course ADD CONSTRAINT fk_cte_course_ref_additional_credit_type FOREIGN KEY ( ref_additional_credit_type_id ) REFERENCES ceds6sc_rdx.ref_additional_credit_type( ref_additional_credit_type_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Ref_Additional_Credit_Type ON ceds6sc_rdx.cte_course IS '';

ALTER TABLE ceds6sc_rdx.cte_course ADD CONSTRAINT fk_cte_course_ref_career_cluster FOREIGN KEY ( ref_career_cluster_id ) REFERENCES ceds6sc_rdx.ref_career_cluster( ref_career_cluster_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Ref_Career_Cluster ON ceds6sc_rdx.cte_course IS '';

ALTER TABLE ceds6sc_rdx.cte_course ADD CONSTRAINT fk_cte_course_ref_course_gpa_applicability FOREIGN KEY ( ref_course_gpa_applicability_id ) REFERENCES ceds6sc_rdx.ref_course_gpa_applicability( ref_course_gpaapplicability_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Ref_Course_Gpa_Applicability ON ceds6sc_rdx.cte_course IS '';

ALTER TABLE ceds6sc_rdx.cte_course ADD CONSTRAINT fk_cte_course_ref_credit_type_earned FOREIGN KEY ( ref_credit_type_earned_id ) REFERENCES ceds6sc_rdx.ref_credit_type_earned( ref_credit_type_earned_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Ref_Credit_Type_Earned ON ceds6sc_rdx.cte_course IS '';

ALTER TABLE ceds6sc_rdx.cte_course ADD CONSTRAINT fk_cte_course_ref_curriculum_framework_type FOREIGN KEY ( ref_curriculum_framework_type_id ) REFERENCES ceds6sc_rdx.ref_curriculum_framework_type( ref_curriculum_framework_type_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Ref_Curriculum_Framework_Type ON ceds6sc_rdx.cte_course IS '';

ALTER TABLE ceds6sc_rdx.cte_course ADD CONSTRAINT fk_cte_course_ref_sced_course_level FOREIGN KEY ( ref_sced_course_level_id ) REFERENCES ceds6sc_rdx.ref_sced_course_level( ref_sced_course_level_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Ref_SCED_Course_Level ON ceds6sc_rdx.cte_course IS '';

ALTER TABLE ceds6sc_rdx.cte_course ADD CONSTRAINT fk_cte_course_ref_sced_course_subject_area FOREIGN KEY ( ref_sced_course_subject_area_id ) REFERENCES ceds6sc_rdx.ref_sced_course_subject_area( ref_sced_course_subject_area_id );

COMMENT ON CONSTRAINT FK_Cte_Course_Ref_SCED_Course_Subject_Area ON ceds6sc_rdx.cte_course IS '';

ALTER TABLE ceds6sc_rdx.el_child_demographic ADD CONSTRAINT fk_el_child_demographic_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_EL_Child_Demographic_Person ON ceds6sc_rdx.el_child_demographic IS '';

ALTER TABLE ceds6sc_rdx.el_child_health ADD CONSTRAINT fk_el_child_health_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_EL_Child_Health_Person ON ceds6sc_rdx.el_child_health IS '';

ALTER TABLE ceds6sc_rdx.el_child_health ADD CONSTRAINT fk_el_child_health_ref_scheduled_well_child_screening FOREIGN KEY ( ref_scheduled_well_child_screening_id ) REFERENCES ceds6sc_rdx.ref_scheduled_well_child_screening( ref_scheduled_well_child_screening_id );

COMMENT ON CONSTRAINT FK_EL_Child_Health_Ref_Scheduled_Well_Child_Screening ON ceds6sc_rdx.el_child_health IS '';

ALTER TABLE ceds6sc_rdx.el_child_outcome_summary ADD CONSTRAINT fk_el_child_outcome_summary_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_EL_Child_Outcome_Summary_Person ON ceds6sc_rdx.el_child_outcome_summary IS '';

ALTER TABLE ceds6sc_rdx.el_child_outcome_summary ADD CONSTRAINT fk_el_child_outcome_summary_cos_rating_a FOREIGN KEY ( cos_rating_a_id ) REFERENCES ceds6sc_rdx.ref_child_outcomes_summary_rating( ref_child_outcomes_summary_rating_id );

COMMENT ON CONSTRAINT FK_EL_Child_Outcome_Summary_COS_Rating_A ON ceds6sc_rdx.el_child_outcome_summary IS '';

ALTER TABLE ceds6sc_rdx.el_child_outcome_summary ADD CONSTRAINT fk_el_child_outcome_summary_cos_rating_b FOREIGN KEY ( cos_rating_b_id ) REFERENCES ceds6sc_rdx.ref_child_outcomes_summary_rating( ref_child_outcomes_summary_rating_id );

COMMENT ON CONSTRAINT FK_EL_Child_Outcome_Summary_COS_Rating_B ON ceds6sc_rdx.el_child_outcome_summary IS '';

ALTER TABLE ceds6sc_rdx.el_child_outcome_summary ADD CONSTRAINT fk_el_child_outcome_summary_cos_rating_c FOREIGN KEY ( cos_rating_c_id ) REFERENCES ceds6sc_rdx.ref_child_outcomes_summary_rating( ref_child_outcomes_summary_rating_id );

COMMENT ON CONSTRAINT FK_EL_Child_Outcome_Summary_COS_Rating_C ON ceds6sc_rdx.el_child_outcome_summary IS '';

ALTER TABLE ceds6sc_rdx.el_child_service ADD CONSTRAINT fk_el_child_service_org_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_EL_Child_Service_Org_Person_Role ON ceds6sc_rdx.el_child_service IS '';

ALTER TABLE ceds6sc_rdx.el_child_service ADD CONSTRAINT fk_el_child_service_ref_el_service_type FOREIGN KEY ( ref_el_service_type_id ) REFERENCES ceds6sc_rdx.ref_el_service_type( ref_el_service_type_id );

COMMENT ON CONSTRAINT FK_EL_Child_Service_Ref_EL_Service_Type ON ceds6sc_rdx.el_child_service IS '';

ALTER TABLE ceds6sc_rdx.el_child_service ADD CONSTRAINT fk_el_child_service_ref_early_childhood_services_offered FOREIGN KEY ( ref_early_childhood_services_offered_id ) REFERENCES ceds6sc_rdx.ref_early_childhood_services( ref_early_childhood_services_id );

COMMENT ON CONSTRAINT FK_EL_Child_Service_Ref_Early_Childhood_Services_Offered ON ceds6sc_rdx.el_child_service IS '';

ALTER TABLE ceds6sc_rdx.el_child_service ADD CONSTRAINT fk_el_child_service_ref_early_childhood_services_received FOREIGN KEY ( ref_early_childhood_services_received_id ) REFERENCES ceds6sc_rdx.ref_early_childhood_services( ref_early_childhood_services_id );

COMMENT ON CONSTRAINT FK_EL_Child_Service_Ref_Early_Childhood_Services_Received ON ceds6sc_rdx.el_child_service IS '';

ALTER TABLE ceds6sc_rdx.el_child_transition_plan ADD CONSTRAINT fk_el_child_idea_individualized_program FOREIGN KEY ( individualized_program_id ) REFERENCES ceds6sc_rdx.individualized_program( individualized_program_id );

COMMENT ON CONSTRAINT FK_EL_Child_IDEA_Individualized_Program ON ceds6sc_rdx.el_child_transition_plan IS '';

ALTER TABLE ceds6sc_rdx.el_child_transition_plan ADD CONSTRAINT fk_el_child_idea_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_EL_Child_IDEA_Person ON ceds6sc_rdx.el_child_transition_plan IS '';

ALTER TABLE ceds6sc_rdx.el_child_transition_plan ADD CONSTRAINT fk_el_child_idea_ref_reason_delay_transition_conf FOREIGN KEY ( ref_reason_delay_transition_conf_id ) REFERENCES ceds6sc_rdx.ref_reason_delay_transition_conf( ref_reason_delay_transition_conf_id );

COMMENT ON CONSTRAINT FK_EL_Child_IDEA_Ref_Reason_Delay_Transition_Conf ON ceds6sc_rdx.el_child_transition_plan IS '';

ALTER TABLE ceds6sc_rdx.el_class_section_service ADD CONSTRAINT fk_el_class_section_service_el_class_section FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.el_class_section( organization_id );

COMMENT ON CONSTRAINT FK_EL_Class_Section_Service_EL_Class_Section ON ceds6sc_rdx.el_class_section_service IS '';

ALTER TABLE ceds6sc_rdx.el_class_section_service ADD CONSTRAINT fk_el_class_section_service_ref_el_group_size_standard_met FOREIGN KEY ( ref_el_group_size_standard_met_id ) REFERENCES ceds6sc_rdx.ref_el_group_size_standard_met( ref_el_group_size_standard_met_id );

COMMENT ON CONSTRAINT FK_EL_Class_Section_Service_Ref_EL_Group_Size_Standard_Met ON ceds6sc_rdx.el_class_section_service IS '';

ALTER TABLE ceds6sc_rdx.el_class_section_service ADD CONSTRAINT fk_el_class_section_service_ref_frequency_of_service_id FOREIGN KEY ( ref_frequency_of_service_id ) REFERENCES ceds6sc_rdx.ref_frequency_of_service( ref_frequency_of_service_id );

COMMENT ON CONSTRAINT FK_EL_Class_Section_Service_Ref_Frequency_Of_Service_Id ON ceds6sc_rdx.el_class_section_service IS '';

ALTER TABLE ceds6sc_rdx.el_enrollment_other_funding ADD CONSTRAINT fk_el_enrollment_other_funding_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_EL_Enrollment_Other_Funding_Person ON ceds6sc_rdx.el_enrollment_other_funding IS '';

ALTER TABLE ceds6sc_rdx.el_organization_availability ADD CONSTRAINT fk_el_organization_availability_organization1 FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Availability_Organization1 ON ceds6sc_rdx.el_organization_availability IS '';

ALTER TABLE ceds6sc_rdx.el_organization_availability ADD CONSTRAINT fk_el_organization_availability_ref_environment_setting FOREIGN KEY ( ref_environment_setting_id ) REFERENCES ceds6sc_rdx.ref_environment_setting( ref_environment_setting_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Availability_Ref_Environment_Setting ON ceds6sc_rdx.el_organization_availability IS '';

ALTER TABLE ceds6sc_rdx.el_organization_availability ADD CONSTRAINT fk_el_organization_availability_ref_population_served FOREIGN KEY ( ref_population_served_id ) REFERENCES ceds6sc_rdx.ref_population_served( ref_population_served_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Availability_Ref_Population_Served ON ceds6sc_rdx.el_organization_availability IS '';

ALTER TABLE ceds6sc_rdx.el_organization_availability ADD CONSTRAINT fk_el_organization_availability_ref_service_option FOREIGN KEY ( ref_service_option_id ) REFERENCES ceds6sc_rdx.ref_service_option( ref_service_option_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Availability_Ref_Service_Option ON ceds6sc_rdx.el_organization_availability IS '';

ALTER TABLE ceds6sc_rdx.el_organization_monitoring ADD CONSTRAINT fk_el_organization_monitoring_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Monitoring_Organization ON ceds6sc_rdx.el_organization_monitoring IS '';

ALTER TABLE ceds6sc_rdx.el_organization_monitoring ADD CONSTRAINT fk_el_organization_monitoring_ref_organization_monitoring_notifications FOREIGN KEY ( ref_organization_monitoring_notifications_id ) REFERENCES ceds6sc_rdx.ref_organization_monitoring_notifications( ref_organization_monitoring_notifications_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Monitoring_Ref_Organization_Monitoring_Notifications ON ceds6sc_rdx.el_organization_monitoring IS '';

ALTER TABLE ceds6sc_rdx.el_organization_monitoring ADD CONSTRAINT fk_el_organization_monitoring_ref_purpose_of_monitoring_visit FOREIGN KEY ( ref_purpose_of_monitoring_visit_id ) REFERENCES ceds6sc_rdx.ref_purpose_of_monitoring_visit( ref_purpose_of_monitoring_visit_id );

COMMENT ON CONSTRAINT FK_EL_Organization_Monitoring_Ref_Purpose_Of_Monitoring_Visit ON ceds6sc_rdx.el_organization_monitoring IS '';

ALTER TABLE ceds6sc_rdx.el_quality_initiative ADD CONSTRAINT fk_el_quality_initiative_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_EL_Quality_Initiative_Organization ON ceds6sc_rdx.el_quality_initiative IS '';

ALTER TABLE ceds6sc_rdx.el_service_partner ADD CONSTRAINT fk_el_service_partner_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_EL_Service_Partner_Organization ON ceds6sc_rdx.el_service_partner IS '';

ALTER TABLE ceds6sc_rdx.el_staff_assignment ADD CONSTRAINT fk_el_staff_assignment_org_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_EL_Staff_Assignment_Org_Person_Role ON ceds6sc_rdx.el_staff_assignment IS '';

ALTER TABLE ceds6sc_rdx.el_staff_employment ADD CONSTRAINT fk_el_staff_employment_ref_el_education_staff_classification FOREIGN KEY ( ref_el_education_staff_classification_id ) REFERENCES ceds6sc_rdx.ref_el_education_staff_classification( ref_el_education_staff_classification_id );

COMMENT ON CONSTRAINT FK_EL_Staff_Employment_Ref_EL_Education_Staff_Classification ON ceds6sc_rdx.el_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.el_staff_employment ADD CONSTRAINT fk_el_staff_employment_ref_el_employment_separation_reason FOREIGN KEY ( ref_el_employment_separation_reason_id ) REFERENCES ceds6sc_rdx.ref_el_employment_separation_reason( ref_el_employment_separation_reason_id );

COMMENT ON CONSTRAINT FK_EL_Staff_Employment_Ref_EL_Employment_Separation_Reason ON ceds6sc_rdx.el_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.el_staff_employment ADD CONSTRAINT fk_el_staff_employment_ref_el_service_professional_staff_classification FOREIGN KEY ( ref_el_service_professional_staff_classification_id ) REFERENCES ceds6sc_rdx.ref_el_service_professional_staff_classification( ref_el_service_professional_staff_classification_id );

COMMENT ON CONSTRAINT FK_EL_Staff_Employment_Ref_EL_Service_Professional_Staff_Classification ON ceds6sc_rdx.el_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.el_staff_employment ADD CONSTRAINT fk_el_staff_employment_ref_employment_status FOREIGN KEY ( ref_employment_status_id ) REFERENCES ceds6sc_rdx.ref_employment_status( ref_employment_status_id );

COMMENT ON CONSTRAINT FK_EL_Staff_Employment_Ref_Employment_Status ON ceds6sc_rdx.el_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.el_staff_employment ADD CONSTRAINT fk_el_staff_employment_ref_wage_collection_method FOREIGN KEY ( ref_wage_collection_method_id ) REFERENCES ceds6sc_rdx.ref_wage_collection_method( ref_wage_collection_method_id );

COMMENT ON CONSTRAINT FK_EL_Staff_Employment_Ref_Wage_Collection_Method ON ceds6sc_rdx.el_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.el_staff_employment ADD CONSTRAINT fk_el_staff_employment_ref_wage_verification FOREIGN KEY ( ref_wage_verification_id ) REFERENCES ceds6sc_rdx.ref_wage_verification( ref_wage_verification_id );

COMMENT ON CONSTRAINT FK_EL_Staff_Employment_Ref_Wage_Verification ON ceds6sc_rdx.el_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.el_staff_employment ADD CONSTRAINT fk_el_staff_employment_staff_employment FOREIGN KEY ( staff_employment_id ) REFERENCES ceds6sc_rdx.staff_employment( staff_employment_id );

COMMENT ON CONSTRAINT FK_EL_Staff_Employment_Staff_Employment ON ceds6sc_rdx.el_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.early_childhood_program_type_offered ADD CONSTRAINT fk_early_childhood_program_type_offered_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Early_Childhood_Program_Type_Offered_Organization ON ceds6sc_rdx.early_childhood_program_type_offered IS '';

ALTER TABLE ceds6sc_rdx.early_childhood_program_type_offered ADD CONSTRAINT fk_early_childhood_program_type_offered_ref_community_based_type FOREIGN KEY ( ref_community_based_type_id ) REFERENCES ceds6sc_rdx.ref_community_based_type( ref_community_based_type_id );

COMMENT ON CONSTRAINT FK_Early_Childhood_Program_Type_Offered_Ref_Community_Based_Type ON ceds6sc_rdx.early_childhood_program_type_offered IS '';

ALTER TABLE ceds6sc_rdx.early_childhood_program_type_offered ADD CONSTRAINT fk_ecprogram_type_offered_ref_early_childhood_program_type FOREIGN KEY ( ref_early_childhood_program_enrollment_type_id ) REFERENCES ceds6sc_rdx.ref_early_childhood_program_enrollment_type( ref_early_childhood_program_type_id );

COMMENT ON CONSTRAINT FK_ECProgram_Type_Offered_Ref_Early_Childhood_Program_Type ON ceds6sc_rdx.early_childhood_program_type_offered IS '';

ALTER TABLE ceds6sc_rdx.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_balance_sheet_account_code FOREIGN KEY ( ref_financial_account_balance_sheet_code_id ) REFERENCES ceds6sc_rdx.ref_financial_account_balance_sheet_code( ref_financial_balance_sheet_account_code_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Balance_Sheet_Account_Code ON ceds6sc_rdx.financial_account IS '';

ALTER TABLE ceds6sc_rdx.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_account_category FOREIGN KEY ( ref_financial_account_category_id ) REFERENCES ceds6sc_rdx.ref_financial_account_category( ref_financial_account_category_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Account_Category ON ceds6sc_rdx.financial_account IS '';

ALTER TABLE ceds6sc_rdx.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_account_fund_classification FOREIGN KEY ( ref_financial_account_fund_classification_id ) REFERENCES ceds6sc_rdx.ref_financial_account_fund_classification( ref_financial_account_fund_classification_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Account_Fund_Classification ON ceds6sc_rdx.financial_account IS '';

ALTER TABLE ceds6sc_rdx.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_account_program_code FOREIGN KEY ( ref_financial_account_program_code_id ) REFERENCES ceds6sc_rdx.ref_financial_account_program_code( ref_financial_account_program_code_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Account_Program_Code ON ceds6sc_rdx.financial_account IS '';

ALTER TABLE ceds6sc_rdx.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_account_revenue_code FOREIGN KEY ( ref_financial_account_revenue_code_id ) REFERENCES ceds6sc_rdx.ref_financial_account_revenue_code( ref_financial_account_revenue_code_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Account_Revenue_Code ON ceds6sc_rdx.financial_account IS '';

ALTER TABLE ceds6sc_rdx.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_expenditure_function_code FOREIGN KEY ( ref_financial_expenditure_function_code_id ) REFERENCES ceds6sc_rdx.ref_financial_expenditure_function_code( ref_financial_expenditure_function_code_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Expenditure_Function_Code ON ceds6sc_rdx.financial_account IS '';

ALTER TABLE ceds6sc_rdx.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_expenditure_level_of_instruction_code FOREIGN KEY ( ref_financial_expenditure_level_of_instruction_code_id ) REFERENCES ceds6sc_rdx.ref_financial_expenditure_level_of_instruction_code( ref_financial_expenditure_level_of_instruction_code_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Expenditure_Level_Of_Instruction_Code ON ceds6sc_rdx.financial_account IS '';

ALTER TABLE ceds6sc_rdx.financial_account ADD CONSTRAINT fk_financial_account_ref_financial_expenditure_object_code FOREIGN KEY ( ref_financial_expenditure_object_code_id ) REFERENCES ceds6sc_rdx.ref_financial_expenditure_object_code( ref_financial_expenditure_object_code_id );

COMMENT ON CONSTRAINT FK_Financial_Account_Ref_Financial_Expenditure_Object_Code ON ceds6sc_rdx.financial_account IS '';

ALTER TABLE ceds6sc_rdx.financial_aid_application ADD CONSTRAINT fk_financial_aid_application_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Financial_Aid_Application_Organization_Person_Role ON ceds6sc_rdx.financial_aid_application IS '';

ALTER TABLE ceds6sc_rdx.financial_aid_application ADD CONSTRAINT fk_financial_aid_application_ref_financial_aid_appl_type FOREIGN KEY ( ref_financial_aid_application_type_id ) REFERENCES ceds6sc_rdx.ref_financial_aid_application_type( ref_financial_aid_application_type_id );

COMMENT ON CONSTRAINT FK_Financial_Aid_Application_Ref_Financial_Aid_Appl_Type ON ceds6sc_rdx.financial_aid_application IS '';

ALTER TABLE ceds6sc_rdx.incident ADD CONSTRAINT fk_incident_organization_person FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Incident_Organization_Person ON ceds6sc_rdx.incident IS '';

ALTER TABLE ceds6sc_rdx.incident ADD CONSTRAINT fk_incident_person FOREIGN KEY ( incident_reporter_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Incident_Person ON ceds6sc_rdx.incident IS '';

ALTER TABLE ceds6sc_rdx.incident ADD CONSTRAINT fk_incident_ref_firearm_type FOREIGN KEY ( ref_firearm_type_id ) REFERENCES ceds6sc_rdx.ref_firearm_type( ref_firearm_type_id );

COMMENT ON CONSTRAINT FK_Incident_Ref_Firearm_Type ON ceds6sc_rdx.incident IS '';

ALTER TABLE ceds6sc_rdx.incident ADD CONSTRAINT fk_incident_ref_ref_incident_behavior FOREIGN KEY ( ref_incident_behavior_id ) REFERENCES ceds6sc_rdx.ref_incident_behavior( ref_incident_behavior_id );

COMMENT ON CONSTRAINT FK_Incident_Ref_Ref_Incident_Behavior ON ceds6sc_rdx.incident IS '';

ALTER TABLE ceds6sc_rdx.incident ADD CONSTRAINT fk_incident_ref_ref_incident_behavior_secondary FOREIGN KEY ( ref_incident_behavior_secondary_id ) REFERENCES ceds6sc_rdx.ref_incident_behavior_secondary( ref_incident_behavior_secondary_id );

COMMENT ON CONSTRAINT FK_Incident_Ref_Ref_Incident_Behavior_Secondary ON ceds6sc_rdx.incident IS '';

ALTER TABLE ceds6sc_rdx.incident ADD CONSTRAINT fk_incident_ref_incident_injury_type FOREIGN KEY ( ref_incident_injury_type_id ) REFERENCES ceds6sc_rdx.ref_incident_injury_type( ref_incident_injury_type_id );

COMMENT ON CONSTRAINT FK_Incident_Ref_Incident_Injury_Type ON ceds6sc_rdx.incident IS '';

ALTER TABLE ceds6sc_rdx.incident ADD CONSTRAINT fk_incident_ref_incident_location FOREIGN KEY ( ref_incident_location_id ) REFERENCES ceds6sc_rdx.ref_incident_location( ref_incident_location_id );

COMMENT ON CONSTRAINT FK_Incident_Ref_Incident_Location ON ceds6sc_rdx.incident IS '';

ALTER TABLE ceds6sc_rdx.incident ADD CONSTRAINT fk_incident_ref_incident_multiple_offense_type FOREIGN KEY ( ref_incident_multiple_offense_type_id ) REFERENCES ceds6sc_rdx.ref_incident_multiple_offense_type( ref_incident_multiple_offense_type_id );

COMMENT ON CONSTRAINT FK_Incident_Ref_Incident_Multiple_Offense_Type ON ceds6sc_rdx.incident IS '';

ALTER TABLE ceds6sc_rdx.incident ADD CONSTRAINT fk_incident_ref_incident_perpetrator_injury_type FOREIGN KEY ( ref_incident_perpetrator_injury_type_id ) REFERENCES ceds6sc_rdx.ref_incident_perpetrator_injury_type( ref_incident_perpetrator_injury_type_id );

COMMENT ON CONSTRAINT FK_Incident_Ref_Incident_Perpetrator_Injury_Type ON ceds6sc_rdx.incident IS '';

ALTER TABLE ceds6sc_rdx.incident ADD CONSTRAINT fk_incident_ref_incident_reporter_type FOREIGN KEY ( ref_incident_reporter_type_id ) REFERENCES ceds6sc_rdx.ref_incident_reporter_type( ref_incident_reporter_type_id );

COMMENT ON CONSTRAINT FK_Incident_Ref_Incident_Reporter_Type ON ceds6sc_rdx.incident IS '';

ALTER TABLE ceds6sc_rdx.incident ADD CONSTRAINT fk_incident_ref_incident_time_description_code FOREIGN KEY ( ref_incident_time_description_code_id ) REFERENCES ceds6sc_rdx.ref_incident_time_description_code( ref_incident_time_description_code_id );

COMMENT ON CONSTRAINT FK_Incident_Ref_Incident_Time_Description_Code ON ceds6sc_rdx.incident IS '';

ALTER TABLE ceds6sc_rdx.incident ADD CONSTRAINT fk_incident_ref_weapon_type FOREIGN KEY ( ref_weapon_type_id ) REFERENCES ceds6sc_rdx.ref_weapon_type( ref_weapon_type_id );

COMMENT ON CONSTRAINT FK_Incident_Ref_Weapon_Type ON ceds6sc_rdx.incident IS '';

ALTER TABLE ceds6sc_rdx.individualized_program ADD CONSTRAINT fk_individualized_program_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Organization_Person_Role ON ceds6sc_rdx.individualized_program IS '';

ALTER TABLE ceds6sc_rdx.individualized_program ADD CONSTRAINT fk_individualized_program_ref_indiv_program_date_type FOREIGN KEY ( ref_individualized_program_date_type ) REFERENCES ceds6sc_rdx.ref_individualized_program_date_type( ref_individualized_program_date_type_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Ref_Indiv_Program_Date_Type ON ceds6sc_rdx.individualized_program IS '';

ALTER TABLE ceds6sc_rdx.individualized_program ADD CONSTRAINT fk_individualized_program_ref_indiv_program_location FOREIGN KEY ( ref_individualized_program_location_id ) REFERENCES ceds6sc_rdx.ref_individualized_program_location( ref_individualized_program_location_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Ref_Indiv_Program_Location ON ceds6sc_rdx.individualized_program IS '';

ALTER TABLE ceds6sc_rdx.individualized_program ADD CONSTRAINT fk_individualized_program_ref_indiv_program_transition_type FOREIGN KEY ( ref_individualized_program_transition_type_id ) REFERENCES ceds6sc_rdx.ref_individualized_program_transition_type( ref_individualized_program_transition_type_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Ref_Indiv_Program_Transition_Type ON ceds6sc_rdx.individualized_program IS '';

ALTER TABLE ceds6sc_rdx.individualized_program ADD CONSTRAINT fk_individualized_program_ref_individualized_program_type FOREIGN KEY ( ref_individualized_program_type_id ) REFERENCES ceds6sc_rdx.ref_individualized_program_type( ref_individualized_program_type_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Ref_Individualized_Program_Type ON ceds6sc_rdx.individualized_program IS '';

ALTER TABLE ceds6sc_rdx.individualized_program ADD CONSTRAINT fk_individualized_program_ref_student_support_service_type FOREIGN KEY ( ref_student_support_service_type_id ) REFERENCES ceds6sc_rdx.ref_student_support_service_type( ref_student_support_service_type_id );

COMMENT ON CONSTRAINT FK_Individualized_Program_Ref_Student_Support_Service_Type ON ceds6sc_rdx.individualized_program IS '';

ALTER TABLE ceds6sc_rdx.k12_course ADD CONSTRAINT fk_k12_course_course FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.course( organization_id );

COMMENT ON CONSTRAINT FK_K12_Course_Course ON ceds6sc_rdx.k12_course IS '';

ALTER TABLE ceds6sc_rdx.k12_course ADD CONSTRAINT fk_k12_course_ref_additional_credit_type FOREIGN KEY ( ref_additional_credit_type_id ) REFERENCES ceds6sc_rdx.ref_additional_credit_type( ref_additional_credit_type_id );

COMMENT ON CONSTRAINT FK_K12_Course_Ref_Additional_Credit_Type ON ceds6sc_rdx.k12_course IS '';

ALTER TABLE ceds6sc_rdx.k12_course ADD CONSTRAINT fk_k12_course_ref_blended_learning_model FOREIGN KEY ( ref_blended_learning_model_type_id ) REFERENCES ceds6sc_rdx.ref_blended_learning_model_type( ref_blended_learning_model_type_id );

COMMENT ON CONSTRAINT FK_K12_Course_Ref_Blended_Learning_Model ON ceds6sc_rdx.k12_course IS '';

ALTER TABLE ceds6sc_rdx.k12_course ADD CONSTRAINT fk_k12_course_ref_career_cluster FOREIGN KEY ( ref_career_cluster_id ) REFERENCES ceds6sc_rdx.ref_career_cluster( ref_career_cluster_id );

COMMENT ON CONSTRAINT FK_K12_Course_Ref_Career_Cluster ON ceds6sc_rdx.k12_course IS '';

ALTER TABLE ceds6sc_rdx.k12_course ADD CONSTRAINT fk_k12_course_ref_course_gpaapplicability FOREIGN KEY ( ref_course_gpa_applicability_id ) REFERENCES ceds6sc_rdx.ref_course_gpa_applicability( ref_course_gpaapplicability_id );

COMMENT ON CONSTRAINT FK_K12_Course_Ref_Course_GPAApplicability ON ceds6sc_rdx.k12_course IS '';

ALTER TABLE ceds6sc_rdx.k12_course ADD CONSTRAINT fk_k12_course_ref_course_interaction_mode FOREIGN KEY ( ref_course_interaction_mode_id ) REFERENCES ceds6sc_rdx.ref_course_interaction_mode( ref_course_interaction_mode_id );

COMMENT ON CONSTRAINT FK_K12_Course_Ref_Course_Interaction_Mode ON ceds6sc_rdx.k12_course IS '';

ALTER TABLE ceds6sc_rdx.k12_course ADD CONSTRAINT fk_k12_course_ref_credit_type_earned FOREIGN KEY ( ref_credit_type_earned_id ) REFERENCES ceds6sc_rdx.ref_credit_type_earned( ref_credit_type_earned_id );

COMMENT ON CONSTRAINT FK_K12_Course_Ref_Credit_Type_Earned ON ceds6sc_rdx.k12_course IS '';

ALTER TABLE ceds6sc_rdx.k12_course ADD CONSTRAINT fk_k12_course_ref_curriculum_framework_type FOREIGN KEY ( ref_curriculum_framework_type_id ) REFERENCES ceds6sc_rdx.ref_curriculum_framework_type( ref_curriculum_framework_type_id );

COMMENT ON CONSTRAINT FK_K12_Course_Ref_Curriculum_Framework_Type ON ceds6sc_rdx.k12_course IS '';

ALTER TABLE ceds6sc_rdx.k12_course ADD CONSTRAINT fk_k12_course_ref_k12_end_of_course_requirement FOREIGN KEY ( ref_k12_end_of_course_requirement_id ) REFERENCES ceds6sc_rdx.ref_k12_end_of_course_requirement( ref_k12_end_of_course_requirement_id );

COMMENT ON CONSTRAINT FK_K12_Course_Ref_K12_End_Of_Course_Requirement ON ceds6sc_rdx.k12_course IS '';

ALTER TABLE ceds6sc_rdx.k12_course ADD CONSTRAINT fk_k12_course_ref_sced_course_level FOREIGN KEY ( ref_sced_course_level_id ) REFERENCES ceds6sc_rdx.ref_sced_course_level( ref_sced_course_level_id );

COMMENT ON CONSTRAINT FK_K12_Course_Ref_SCED_Course_Level ON ceds6sc_rdx.k12_course IS '';

ALTER TABLE ceds6sc_rdx.k12_course ADD CONSTRAINT fk_k12_course_ref_sced_course_subject_area FOREIGN KEY ( ref_sced_course_subject_area_id ) REFERENCES ceds6sc_rdx.ref_sced_course_subject_area( ref_sced_course_subject_area_id );

COMMENT ON CONSTRAINT FK_K12_Course_Ref_SCED_Course_Subject_Area ON ceds6sc_rdx.k12_course IS '';

ALTER TABLE ceds6sc_rdx.k12_course ADD CONSTRAINT fk_k12_course_ref_workbased_learning_opportunity_type FOREIGN KEY ( ref_workbased_learning_opportunity_type_id ) REFERENCES ceds6sc_rdx.ref_workbased_learning_opportunity_type( ref_workbased_learning_opportunity_type_id );

COMMENT ON CONSTRAINT FK_K12_Course_Ref_Workbased_Learning_Opportunity_Type ON ceds6sc_rdx.k12_course IS '';

ALTER TABLE ceds6sc_rdx.k12_lea_federal_funds ADD CONSTRAINT fk_k12_lea_federal_funds_k12_lea1 FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.k12_lea( organization_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Federal_Funds_K12_Lea1 ON ceds6sc_rdx.k12_lea_federal_funds IS '';

ALTER TABLE ceds6sc_rdx.k12_lea_federal_funds ADD CONSTRAINT fk_organization_federal_funds_ref_federal_funding_allocation FOREIGN KEY ( ref_federal_program_funding_allocation_type_id ) REFERENCES ceds6sc_rdx.ref_federal_program_funding_allocation_type( ref_federal_program_funding_allocation_type_id );

COMMENT ON CONSTRAINT FK_Organization_Federal_Funds_Ref_Federal_Funding_Allocation ON ceds6sc_rdx.k12_lea_federal_funds IS '';

ALTER TABLE ceds6sc_rdx.k12_lea_federal_funds ADD CONSTRAINT fk_k12_lea_federal_funds_ref_lea_funds_transfer_type FOREIGN KEY ( ref_lea_funds_transfer_type_id ) REFERENCES ceds6sc_rdx.ref_lea_funds_transfer_type( ref_lea_funds_transfer_type_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Federal_Funds_Ref_LEA_Funds_Transfer_Type ON ceds6sc_rdx.k12_lea_federal_funds IS '';

ALTER TABLE ceds6sc_rdx.k12_lea_federal_funds ADD CONSTRAINT fk_k12_lea_federal_funds_reap_alternative_funding_status FOREIGN KEY ( ref_reap_alternative_funding_status_id ) REFERENCES ceds6sc_rdx.ref_reap_alternative_funding_status( ref_reap_alternative_funding_status_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Federal_Funds_REAP_Alternative_Funding_Status ON ceds6sc_rdx.k12_lea_federal_funds IS '';

ALTER TABLE ceds6sc_rdx.k12_lea_federal_funds ADD CONSTRAINT fk_k12_lea_federal_funds_ref_rlis_program_use FOREIGN KEY ( ref_rlis_program_use_id ) REFERENCES ceds6sc_rdx.ref_rlis_program_use( ref_rlis_program_use_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Federal_Funds_Ref_RLIS_Program_Use ON ceds6sc_rdx.k12_lea_federal_funds IS '';

ALTER TABLE ceds6sc_rdx.k12_lea_pre_k_eligibility ADD CONSTRAINT fk_k12_lea_pre_k_eligibility_k12_lea FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.k12_lea( organization_id );

COMMENT ON CONSTRAINT FK_K12_Lea_Pre_K_Eligibility_K12_Lea ON ceds6sc_rdx.k12_lea_pre_k_eligibility IS '';

ALTER TABLE ceds6sc_rdx.k12_lea_pre_k_eligibility ADD CONSTRAINT fk_k12_lea_pre_k_eligibility_ref_pre_kindergarten__eligibility FOREIGN KEY ( ref_pre_kindergarten__eligibility_id ) REFERENCES ceds6sc_rdx.ref_pre_kindergarten__eligibility( ref_pre_kindergarten__eligibility_id );

COMMENT ON CONSTRAINT FK_K12_Lea_Pre_K_Eligibility_Ref_Pre_Kindergarten__Eligibility ON ceds6sc_rdx.k12_lea_pre_k_eligibility IS '';

ALTER TABLE ceds6sc_rdx.k12_lea_safe_drug_free ADD CONSTRAINT fk_k12_lea_safe_drug_free_k12_lea FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.k12_lea( organization_id );

COMMENT ON CONSTRAINT FK_K12_Lea_Safe_Drug_Free_K12_Lea ON ceds6sc_rdx.k12_lea_safe_drug_free IS '';

ALTER TABLE ceds6sc_rdx.k12_lea_title_i_support_service ADD CONSTRAINT fk_k12_lea_title_i_support_service_k12_lea FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.k12_lea( organization_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Title_I_Support_Service_K12_Lea ON ceds6sc_rdx.k12_lea_title_i_support_service IS '';

ALTER TABLE ceds6sc_rdx.k12_lea_title_i_support_service ADD CONSTRAINT fk_k12_lea_title_i_support_service_ref_k12_lea_title_i_support_service FOREIGN KEY ( ref_k12_lea_title_i_support_service_id ) REFERENCES ceds6sc_rdx.ref_k12_lea_title_i_support_service( ref_k12_lea_title_i_support_service_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Title_I_Support_Service_Ref_K12_LEA_Title_I_Support_Service ON ceds6sc_rdx.k12_lea_title_i_support_service IS '';

ALTER TABLE ceds6sc_rdx.k12_program_or_service ADD CONSTRAINT fk_k12_lea_program_or_service_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_K12_Lea_Program_Or_Service_Organization ON ceds6sc_rdx.k12_program_or_service IS '';

ALTER TABLE ceds6sc_rdx.k12_program_or_service ADD CONSTRAINT fk_k12_lea_program_or_service_ref_mep_project_type FOREIGN KEY ( ref_mep_project_type_id ) REFERENCES ceds6sc_rdx.ref_mep_project_type( ref_mep_project_type_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Program_Or_Service_Ref_MEP_Project_Type ON ceds6sc_rdx.k12_program_or_service IS '';

ALTER TABLE ceds6sc_rdx.k12_program_or_service ADD CONSTRAINT fk_k12_lea_program_or_service_ref_mep_session_type FOREIGN KEY ( ref_mep_session_type_id ) REFERENCES ceds6sc_rdx.ref_mep_session_type( ref_mep_session_type_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Program_Or_Service_Ref_MEP_Session_Type ON ceds6sc_rdx.k12_program_or_service IS '';

ALTER TABLE ceds6sc_rdx.k12_program_or_service ADD CONSTRAINT fk_k12_lea_program_or_service_ref_program_day_length FOREIGN KEY ( ref_pre_kindergarten__daily_length_id ) REFERENCES ceds6sc_rdx.ref_program_day_length( ref_program_day_length_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Program_Or_Service_Ref_Program_Day_Length ON ceds6sc_rdx.k12_program_or_service IS '';

ALTER TABLE ceds6sc_rdx.k12_program_or_service ADD CONSTRAINT fk_k12_lea_program_or_service_ref_program_day_length1 FOREIGN KEY ( ref_kindergarten_daily_length_id ) REFERENCES ceds6sc_rdx.ref_program_day_length( ref_program_day_length_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Program_Or_Service_Ref_Program_Day_Length1 ON ceds6sc_rdx.k12_program_or_service IS '';

ALTER TABLE ceds6sc_rdx.k12_program_or_service ADD CONSTRAINT fk_k12_lea_program_or_service_ref_program_gifted_eligibility FOREIGN KEY ( ref_program_gifted_eligibility_id ) REFERENCES ceds6sc_rdx.ref_program_gifted_eligibility( ref_program_gifted_eligibility_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Program_Or_Service_Ref_Program_Gifted_Eligibility ON ceds6sc_rdx.k12_program_or_service IS '';

ALTER TABLE ceds6sc_rdx.k12_program_or_service ADD CONSTRAINT fk_k12_lea_program_or_service_ref_title_i_instruct_services FOREIGN KEY ( ref_title_i_instructional_services_id ) REFERENCES ceds6sc_rdx.ref_title_i_instructional_services( ref_title_i_instructional_services_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Program_Or_Service_Ref_Title_I_Instruct_Services ON ceds6sc_rdx.k12_program_or_service IS '';

ALTER TABLE ceds6sc_rdx.k12_program_or_service ADD CONSTRAINT fk_k12_lea_program_or_service_ref_title_i_program_type FOREIGN KEY ( ref_title_i_program_type_id ) REFERENCES ceds6sc_rdx.ref_title_i_program_type( ref_title_i_program_type_id );

COMMENT ON CONSTRAINT FK_K12_LEA_Program_Or_Service_Ref_Title_I_Program_Type ON ceds6sc_rdx.k12_program_or_service IS '';

ALTER TABLE ceds6sc_rdx.k12_school_corrective_action ADD CONSTRAINT fk_k12_school_corrective_action_k12_school FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.k12_school( organization_id );

COMMENT ON CONSTRAINT FK_K12_School_Corrective_Action_K12_School ON ceds6sc_rdx.k12_school_corrective_action IS '';

ALTER TABLE ceds6sc_rdx.k12_school_corrective_action ADD CONSTRAINT fk_k12_school_corrective_action_ref_corrective_action_type FOREIGN KEY ( ref_corrective_action_type_id ) REFERENCES ceds6sc_rdx.ref_corrective_action_type( ref_corrective_action_id );

COMMENT ON CONSTRAINT FK_K12_School_Corrective_Action_Ref_Corrective_Action_Type ON ceds6sc_rdx.k12_school_corrective_action IS '';

ALTER TABLE ceds6sc_rdx.k12_school_improvement ADD CONSTRAINT fk_k12_school_improvement_k12_school FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.k12_school( organization_id );

COMMENT ON CONSTRAINT FK_K12_School_Improvement_K12_School ON ceds6sc_rdx.k12_school_improvement IS '';

ALTER TABLE ceds6sc_rdx.k12_school_improvement ADD CONSTRAINT fk_k12_school_improvement_ref_school_improvement_funds FOREIGN KEY ( ref_school_improvement_funds_id ) REFERENCES ceds6sc_rdx.ref_school_improvement_funds( ref_school_improvement_funds_id );

COMMENT ON CONSTRAINT FK_K12_School_Improvement_Ref_School_Improvement_Funds ON ceds6sc_rdx.k12_school_improvement IS '';

ALTER TABLE ceds6sc_rdx.k12_school_improvement ADD CONSTRAINT fk_k12_school_improvement_ref_school_improvement_status FOREIGN KEY ( ref_school_improvement_status_id ) REFERENCES ceds6sc_rdx.ref_school_improvement_status( ref_school_improvement_status_id );

COMMENT ON CONSTRAINT FK_K12_School_Improvement_Ref_School_Improvement_Status ON ceds6sc_rdx.k12_school_improvement IS '';

ALTER TABLE ceds6sc_rdx.k12_school_improvement ADD CONSTRAINT fk_k12_school_improvement_ref_sigintervention_type FOREIGN KEY ( ref_sig_intervention_type_id ) REFERENCES ceds6sc_rdx.ref_sig_intervention_type( ref_sig_intervention_type_id );

COMMENT ON CONSTRAINT FK_K12_School_Improvement_Ref_SIGIntervention_Type ON ceds6sc_rdx.k12_school_improvement IS '';

ALTER TABLE ceds6sc_rdx.k12_sea ADD CONSTRAINT fk_k12_sea_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT FK_K12_Sea_Organization ON ceds6sc_rdx.k12_sea IS '';

ALTER TABLE ceds6sc_rdx.k12_sea ADD CONSTRAINT fk_k12_sea_ref_state_ansi_code FOREIGN KEY ( ref_state_ansi_code ) REFERENCES ceds6sc_rdx.ref_state_ansi_code( code );

COMMENT ON CONSTRAINT FK_K12_SEA_Ref_State_ANSI_Code ON ceds6sc_rdx.k12_sea IS '';

ALTER TABLE ceds6sc_rdx.k12_sea_federal_fund_allocation ADD CONSTRAINT fk_k12_sea_federal_fund_allocation_k12_sea FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.k12_sea( organization_id );

COMMENT ON CONSTRAINT FK_K12_SEA_Federal_Fund_Allocation_K12_SEA ON ceds6sc_rdx.k12_sea_federal_fund_allocation IS '';

ALTER TABLE ceds6sc_rdx.k12_sea_federal_fund_allocation ADD CONSTRAINT fk_k12_sea_federal_fund_allocation_ref_federal_funding_allocation FOREIGN KEY ( ref_federal_program_funding_allocation_type_id ) REFERENCES ceds6sc_rdx.ref_federal_program_funding_allocation_type( ref_federal_program_funding_allocation_type_id );

COMMENT ON CONSTRAINT FK_K12_SEA_Federal_Fund_Allocation_Ref_Federal_Funding_Allocation ON ceds6sc_rdx.k12_sea_federal_fund_allocation IS '';

ALTER TABLE ceds6sc_rdx.k12_staff_assignment ADD CONSTRAINT fk_k12_staff_assignment_organization_person FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT FK_K12_Staff_Assignment_Organization_Person ON ceds6sc_rdx.k12_staff_assignment IS '';

ALTER TABLE ceds6sc_rdx.k12_staff_assignment ADD CONSTRAINT fk_k12_staff_assignment_ref_classroom_position_type FOREIGN KEY ( ref_classroom_position_type_id ) REFERENCES ceds6sc_rdx.ref_classroom_position_type( ref_classroom_position_type_id );

COMMENT ON CONSTRAINT FK_K12_Staff_Assignment_Ref_Classroom_Position_Type ON ceds6sc_rdx.k12_staff_assignment IS '';

ALTER TABLE ceds6sc_rdx.k12_staff_assignment ADD CONSTRAINT fk_k12_staff_assignment_ref_education_staff_classification FOREIGN KEY ( ref_k12_staff_classification_id ) REFERENCES ceds6sc_rdx.ref_k12_staff_classification( ref_education_staff_classification_id );

COMMENT ON CONSTRAINT FK_K12_Staff_Assignment_Ref_Education_Staff_Classification ON ceds6sc_rdx.k12_staff_assignment IS '';

ALTER TABLE ceds6sc_rdx.k12_staff_assignment ADD CONSTRAINT fk_k12_staff_assignment_ref_mep_staff_category FOREIGN KEY ( ref_mep_staff_category_id ) REFERENCES ceds6sc_rdx.ref_mep_staff_category( ref_mep_staff_category_id );

COMMENT ON CONSTRAINT FK_K12_Staff_Assignment_Ref_Mep_Staff_Category ON ceds6sc_rdx.k12_staff_assignment IS '';

ALTER TABLE ceds6sc_rdx.k12_staff_assignment ADD CONSTRAINT fk_k12_staff_assignment_ref_professional_education_job_classification FOREIGN KEY ( ref_professional_education_job_classification_id ) REFERENCES ceds6sc_rdx.ref_professional_education_job_classification( ref_professional_education_job_classification_id );

COMMENT ON CONSTRAINT FK_K12_Staff_Assignment_Ref_Professional_Education_Job_Classification ON ceds6sc_rdx.k12_staff_assignment IS '';

ALTER TABLE ceds6sc_rdx.k12_staff_assignment ADD CONSTRAINT fk_k12_staff_assignment_ref_special_education_age_group_taught FOREIGN KEY ( ref_special_education_age_group_taught_id ) REFERENCES ceds6sc_rdx.ref_special_education_age_group_taught( ref_special_education_age_group_taught_id );

COMMENT ON CONSTRAINT FK_K12_Staff_Assignment_Ref_Special_Education_Age_Group_Taught ON ceds6sc_rdx.k12_staff_assignment IS '';

ALTER TABLE ceds6sc_rdx.k12_staff_assignment ADD CONSTRAINT fk_k12_staff_assignment_ref_special_education_staff_category FOREIGN KEY ( ref_special_education_staff_category_id ) REFERENCES ceds6sc_rdx.ref_special_education_staff_category( ref_special_education_staff_category_id );

COMMENT ON CONSTRAINT FK_K12_Staff_Assignment_Ref_Special_Education_Staff_Category ON ceds6sc_rdx.k12_staff_assignment IS '';

ALTER TABLE ceds6sc_rdx.k12_staff_assignment ADD CONSTRAINT fk_k12_staff_assignment_ref_teaching_assignment_role FOREIGN KEY ( ref_teaching_assignment_role_id ) REFERENCES ceds6sc_rdx.ref_teaching_assignment_role( ref_teaching_assignment_role_id );

COMMENT ON CONSTRAINT FK_K12_Staff_Assignment_Ref_Teaching_Assignment_Role ON ceds6sc_rdx.k12_staff_assignment IS '';

ALTER TABLE ceds6sc_rdx.k12_staff_assignment ADD CONSTRAINT fk_k12_staff_assignment_ref_title_i_program_staff_category FOREIGN KEY ( ref_title_i_program_staff_category_id ) REFERENCES ceds6sc_rdx.ref_title_i_program_staff_category( ref_title_i_program_staff_category_id );

COMMENT ON CONSTRAINT FK_K12_Staff_Assignment_Ref_Title_I_Program_Staff_Category ON ceds6sc_rdx.k12_staff_assignment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_academic_honor ADD CONSTRAINT fk_k12_student_academic_honor_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_K12_Student_Academic_Honor_Organization_Person_Role ON ceds6sc_rdx.k12_student_academic_honor IS '';

ALTER TABLE ceds6sc_rdx.k12_student_academic_honor ADD CONSTRAINT fk_k12_student_academic_honor_ref_academic_honor_type FOREIGN KEY ( ref_academic_honor_type_id ) REFERENCES ceds6sc_rdx.ref_academic_honor_type( ref_academic_honor_type_id );

COMMENT ON CONSTRAINT FK_K12_Student_Academic_Honor_Ref_Academic_Honor_Type ON ceds6sc_rdx.k12_student_academic_honor IS '';

ALTER TABLE ceds6sc_rdx.k12_student_activity ADD CONSTRAINT fk_k12_student_activity_org_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_K12_Student_Activity_Org_Person_Role ON ceds6sc_rdx.k12_student_activity IS '';

ALTER TABLE ceds6sc_rdx.k12_student_activity ADD CONSTRAINT fk_k12_student_activity_ref_activity_time_measurement_type FOREIGN KEY ( ref_activity_time_measurement_type_id ) REFERENCES ceds6sc_rdx.ref_activity_time_measurement_type( ref_activity_time_measurement_type_id );

COMMENT ON CONSTRAINT FK_K12_Student_Activity_Ref_Activity_Time_Measurement_Type ON ceds6sc_rdx.k12_student_activity IS '';

ALTER TABLE ceds6sc_rdx.k12_student_course_section ADD CONSTRAINT fk_k12_student_course_section_organization_person FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT FK_K12_Student_Course_Section_Organization_Person ON ceds6sc_rdx.k12_student_course_section IS '';

ALTER TABLE ceds6sc_rdx.k12_student_course_section ADD CONSTRAINT fk_k12_student_course_section_ref_additional_credit_type FOREIGN KEY ( ref_additional_credit_type_id ) REFERENCES ceds6sc_rdx.ref_additional_credit_type( ref_additional_credit_type_id );

COMMENT ON CONSTRAINT FK_K12_Student_Course_Section_Ref_Additional_Credit_Type ON ceds6sc_rdx.k12_student_course_section IS '';

ALTER TABLE ceds6sc_rdx.k12_student_course_section ADD CONSTRAINT fk_k12_student_course_section_ref_course_gpa_applicability FOREIGN KEY ( ref_course_gpa_applicability_id ) REFERENCES ceds6sc_rdx.ref_course_gpa_applicability( ref_course_gpaapplicability_id );

COMMENT ON CONSTRAINT FK_K12_Student_course_Section_ref_course_gpa_Applicability ON ceds6sc_rdx.k12_student_course_section IS '';

ALTER TABLE ceds6sc_rdx.k12_student_course_section ADD CONSTRAINT fk_k12_student_course_section_ref_course_repeat_code FOREIGN KEY ( ref_course_repeat_code_id ) REFERENCES ceds6sc_rdx.ref_course_repeat_code( ref_course_repeat_code_id );

COMMENT ON CONSTRAINT FK_K12_Student_Course_Section_Ref_Course_Repeat_Code ON ceds6sc_rdx.k12_student_course_section IS '';

ALTER TABLE ceds6sc_rdx.k12_student_course_section ADD CONSTRAINT fk_k12_student_course_section_ref_course_section_enrollment_status_type FOREIGN KEY ( ref_course_section_enrollment_status_type_id ) REFERENCES ceds6sc_rdx.ref_course_section_enrollment_status_type( ref_course_section_enrollment_status_type_id );

COMMENT ON CONSTRAINT FK_K12_Student_Course_Section_Ref_Course_Section_Enrollment_Status_Type ON ceds6sc_rdx.k12_student_course_section IS '';

ALTER TABLE ceds6sc_rdx.k12_student_course_section ADD CONSTRAINT fk_k12_student_course_section_ref_course_section_entry_type FOREIGN KEY ( ref_course_section_entry_type_id ) REFERENCES ceds6sc_rdx.ref_course_section_entry_type( ref_course_section_entry_type_id );

COMMENT ON CONSTRAINT FK_K12_Student_Course_Section_Ref_Course_Section_Entry_Type ON ceds6sc_rdx.k12_student_course_section IS '';

ALTER TABLE ceds6sc_rdx.k12_student_course_section ADD CONSTRAINT fk_k12_student_course_section_ref_course_section_exit_type FOREIGN KEY ( ref_course_section_exit_type_id ) REFERENCES ceds6sc_rdx.ref_course_section_exit_type( ref_course_section_exit_type_id );

COMMENT ON CONSTRAINT FK_K12_Student_Course_Section_Ref_Course_Section_Exit_Type ON ceds6sc_rdx.k12_student_course_section IS '';

ALTER TABLE ceds6sc_rdx.k12_student_course_section ADD CONSTRAINT fk_k12_student_course_section_ref_credit_type_earned FOREIGN KEY ( ref_credit_type_earned_id ) REFERENCES ceds6sc_rdx.ref_credit_type_earned( ref_credit_type_earned_id );

COMMENT ON CONSTRAINT FK_K12_Student_Course_Section_Ref_Credit_Type_Earned ON ceds6sc_rdx.k12_student_course_section IS '';

ALTER TABLE ceds6sc_rdx.k12_student_course_section ADD CONSTRAINT fk_k12_student_course_section_ref_exit_or_withdrawal_status FOREIGN KEY ( ref_exit_or_withdrawal_status_id ) REFERENCES ceds6sc_rdx.ref_exit_or_withdrawal_status( ref_exit_or_withdrawal_status_id );

COMMENT ON CONSTRAINT FK_K12_Student_Course_Section_Ref_Exit_Or_Withdrawal_Status ON ceds6sc_rdx.k12_student_course_section IS '';

ALTER TABLE ceds6sc_rdx.k12_student_course_section ADD CONSTRAINT fk_k12_student_course_section_ref_grade_level FOREIGN KEY ( ref_grade_level_when_course_taken_id ) REFERENCES ceds6sc_rdx.ref_grade_level( ref_grade_level_id );

COMMENT ON CONSTRAINT FK_K12_Student_Course_Section_Ref_Grade_Level ON ceds6sc_rdx.k12_student_course_section IS '';

ALTER TABLE ceds6sc_rdx.k12_student_course_section ADD CONSTRAINT fk_k12_student_course_section_ref_pre_and_post_test_indicator FOREIGN KEY ( ref_pre_and_post_test_indicator_id ) REFERENCES ceds6sc_rdx.ref_pre_and_post_test_indicator( ref_pre_and_post_test_indicator_id );

COMMENT ON CONSTRAINT FK_K12_Student_Course_Section_Ref_Pre_And_Post_Test_Indicator ON ceds6sc_rdx.k12_student_course_section IS '';

ALTER TABLE ceds6sc_rdx.k12_student_course_section ADD CONSTRAINT fk_k12_student_course_section_ref_progress_level FOREIGN KEY ( ref_progress_level_id ) REFERENCES ceds6sc_rdx.ref_progress_level( ref_progress_level_id );

COMMENT ON CONSTRAINT FK_K12_Student_Course_Section_Ref_Progress_Level ON ceds6sc_rdx.k12_student_course_section IS '';

ALTER TABLE ceds6sc_rdx.k12_student_discipline ADD CONSTRAINT fk_k12_student_discipline_k12_incident FOREIGN KEY ( incident_id ) REFERENCES ceds6sc_rdx.incident( incident_id );

COMMENT ON CONSTRAINT FK_K12_Student_Discipline_K12_Incident ON ceds6sc_rdx.k12_student_discipline IS '';

ALTER TABLE ceds6sc_rdx.k12_student_discipline ADD CONSTRAINT fk_k12_student_discipline_organization_person FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT FK_K12_Student_Discipline_Organization_Person ON ceds6sc_rdx.k12_student_discipline IS '';

ALTER TABLE ceds6sc_rdx.k12_student_discipline ADD CONSTRAINT fk_k12_student_discipline_ref_disciplinary_action_taken FOREIGN KEY ( ref_disciplinary_action_taken_id ) REFERENCES ceds6sc_rdx.ref_disciplinary_action_taken( ref_disciplinary_action_taken_id );

COMMENT ON CONSTRAINT FK_K12_Student_Discipline_Ref_Disciplinary_Action_Taken ON ceds6sc_rdx.k12_student_discipline IS '';

ALTER TABLE ceds6sc_rdx.k12_student_discipline ADD CONSTRAINT fk_k12_student_discipline_ref_discipline_length_difference FOREIGN KEY ( ref_discipline_length_difference_reason_id ) REFERENCES ceds6sc_rdx.ref_discipline_length_difference_reason( ref_discipline_length_difference_reason_id );

COMMENT ON CONSTRAINT FK_K12_Student_Discipline_Ref_Discipline_Length_Difference ON ceds6sc_rdx.k12_student_discipline IS '';

ALTER TABLE ceds6sc_rdx.k12_student_discipline ADD CONSTRAINT fk_k12_student_discipline_ref_discipline_method_firearms FOREIGN KEY ( ref_discipline_method_firearms_id ) REFERENCES ceds6sc_rdx.ref_discipline_method_firearms( ref_discipline_method_firearms_id );

COMMENT ON CONSTRAINT FK_K12_Student_Discipline_Ref_Discipline_Method_Firearms ON ceds6sc_rdx.k12_student_discipline IS '';

ALTER TABLE ceds6sc_rdx.k12_student_discipline ADD CONSTRAINT fk_k12_student_discipline_ref_discipline_method_of_cwd FOREIGN KEY ( ref_discipline_method_of_cwd_id ) REFERENCES ceds6sc_rdx.ref_discipline_method_of_cwd( ref_discipline_method_of_cwd_id );

COMMENT ON CONSTRAINT FK_K12_Student_Discipline_Ref_Discipline_Method_Of_Cwd ON ceds6sc_rdx.k12_student_discipline IS '';

ALTER TABLE ceds6sc_rdx.k12_student_discipline ADD CONSTRAINT fk_k12_student_discipline_ref_discipline_reason1 FOREIGN KEY ( ref_discipline_reason_id ) REFERENCES ceds6sc_rdx.ref_discipline_reason( ref_discipline_reason_id );

COMMENT ON CONSTRAINT FK_K12_Student_Discipline_Ref_Discipline_Reason1 ON ceds6sc_rdx.k12_student_discipline IS '';

ALTER TABLE ceds6sc_rdx.k12_student_discipline ADD CONSTRAINT fk_k12_student_discipline_ref_idea_discipline_method_firearm FOREIGN KEY ( ref_idea_discipline_method_firearm_id ) REFERENCES ceds6sc_rdx.ref_idea_discipline_method_firearm( ref_idea_discipline_method_firearm_id );

COMMENT ON CONSTRAINT FK_K12_Student_Discipline_Ref_IDEA_Discipline_Method_Firearm ON ceds6sc_rdx.k12_student_discipline IS '';

ALTER TABLE ceds6sc_rdx.k12_student_discipline ADD CONSTRAINT fk_k12_student_discipline_ref_idea_interim_removal_id FOREIGN KEY ( ref_idea_interim_removal_id ) REFERENCES ceds6sc_rdx.ref_idea_interim_removal( ref_idea_interim_removal_id );

COMMENT ON CONSTRAINT FK_K12_Student_Discipline_Ref_IDEA_Interim_Removal_Id ON ceds6sc_rdx.k12_student_discipline IS '';

ALTER TABLE ceds6sc_rdx.k12_student_discipline ADD CONSTRAINT fk_k12_student_discipline_ref_idesinterim_removal_reason FOREIGN KEY ( ref_idea_interim_removal_reason_id ) REFERENCES ceds6sc_rdx.ref_idea_interim_removal_reason( ref_idea_interim_removal_reason_id );

COMMENT ON CONSTRAINT FK_K12_Student_Discipline_Ref_IDESInterim_Removal_Reason ON ceds6sc_rdx.k12_student_discipline IS '';

ALTER TABLE ceds6sc_rdx.k12_student_enrollment ADD CONSTRAINT fk_k12_enrollment_member_organization_person FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT FK_K12_Enrollment_Member_Organization_Person ON ceds6sc_rdx.k12_student_enrollment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_enrollment ADD CONSTRAINT fk_k12_student_enrollment_ref_directory_information_block_status FOREIGN KEY ( ref_directory_information_block_status_id ) REFERENCES ceds6sc_rdx.ref_directory_information_block_status( ref_directory_information_block_status_id );

COMMENT ON CONSTRAINT FK_K12_Student_Enrollment_Ref_Directory_Information_Block_Status ON ceds6sc_rdx.k12_student_enrollment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_enrollment ADD CONSTRAINT fk_k12_student_enrollment_ref_end_of_term_status FOREIGN KEY ( ref_end_of_term_status_id ) REFERENCES ceds6sc_rdx.ref_end_of_term_status( ref_end_of_term_status_id );

COMMENT ON CONSTRAINT FK_K12_Student_Enrollment_Ref_End_Of_Term_Status ON ceds6sc_rdx.k12_student_enrollment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_enrollment ADD CONSTRAINT fk_k12_student_enrollment_ref_enrollment_status FOREIGN KEY ( ref_enrollment_status_id ) REFERENCES ceds6sc_rdx.ref_enrollment_status( ref_enrollment_status_id );

COMMENT ON CONSTRAINT FK_K12_Student_Enrollment_Ref_Enrollment_Status ON ceds6sc_rdx.k12_student_enrollment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_enrollment ADD CONSTRAINT fk_k12_student_enrollment_ref_entry_type FOREIGN KEY ( ref_entry_type ) REFERENCES ceds6sc_rdx.ref_entry_type( ref_entry_type_id );

COMMENT ON CONSTRAINT FK_K12_Student_Enrollment_Ref_Entry_Type ON ceds6sc_rdx.k12_student_enrollment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_enrollment ADD CONSTRAINT fk_k12_student_enrollment_ref_exit_or_withdrawal_status FOREIGN KEY ( ref_exit_or_withdrawal_status_id ) REFERENCES ceds6sc_rdx.ref_exit_or_withdrawal_status( ref_exit_or_withdrawal_status_id );

COMMENT ON CONSTRAINT FK_K12_Student_Enrollment_Ref_Exit_Or_Withdrawal_Status ON ceds6sc_rdx.k12_student_enrollment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_enrollment ADD CONSTRAINT fk_k12_student_enrollment_ref_exit_or_withdrawal_type FOREIGN KEY ( ref_exit_or_withdrawal_type_id ) REFERENCES ceds6sc_rdx.ref_exit_or_withdrawal_type( ref_exit_or_withdrawal_type_id );

COMMENT ON CONSTRAINT FK_K12_Student_Enrollment_Ref_Exit_Or_Withdrawal_Type ON ceds6sc_rdx.k12_student_enrollment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_enrollment ADD CONSTRAINT fk_k12_student_enrollment_ref_food_service_eligibility FOREIGN KEY ( ref_food_service_eligibility_id ) REFERENCES ceds6sc_rdx.ref_food_service_eligibility( ref_food_service_eligibility_id );

COMMENT ON CONSTRAINT FK_K12_Student_Enrollment_Ref_Food_Service_Eligibility ON ceds6sc_rdx.k12_student_enrollment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_enrollment ADD CONSTRAINT fk_k12_enrollment_member_ref_grade FOREIGN KEY ( ref_entry_grade_level_id ) REFERENCES ceds6sc_rdx.ref_grade_level( ref_grade_level_id );

COMMENT ON CONSTRAINT FK_K12_Enrollment_Member_Ref_Grade ON ceds6sc_rdx.k12_student_enrollment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_enrollment ADD CONSTRAINT fk_k12_student_enrollment_ref_grade_level FOREIGN KEY ( ref_exit_grade_level ) REFERENCES ceds6sc_rdx.ref_grade_level( ref_grade_level_id );

COMMENT ON CONSTRAINT FK_K12_Student_Enrollment_Ref_Grade_Level ON ceds6sc_rdx.k12_student_enrollment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_enrollment ADD CONSTRAINT fk_k12_student_enrollment_ref_non_promotion_reason FOREIGN KEY ( ref_non_promotion_reason_id ) REFERENCES ceds6sc_rdx.ref_non_promotion_reason( ref_non_promotion_reason_id );

COMMENT ON CONSTRAINT FK_K12_Student_Enrollment_Ref_Non_Promotion_Reason ON ceds6sc_rdx.k12_student_enrollment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_enrollment ADD CONSTRAINT fk_k12_student_enrollment_ref_promotion_reason FOREIGN KEY ( ref_promotion_reason_id ) REFERENCES ceds6sc_rdx.ref_promotion_reason( ref_promotion_reason_id );

COMMENT ON CONSTRAINT FK_K12_Student_Enrollment_Ref_Promotion_Reason ON ceds6sc_rdx.k12_student_enrollment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_enrollment ADD CONSTRAINT fk_k12_student_enrollment_ref_public_school_residence FOREIGN KEY ( ref_public_school_residence ) REFERENCES ceds6sc_rdx.ref_public_school_residence( ref_public_school_residence_id );

COMMENT ON CONSTRAINT FK_K12_Student_Enrollment_Ref_Public_School_Residence ON ceds6sc_rdx.k12_student_enrollment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_literacy_assessment ADD CONSTRAINT fk_k12_student_literacy_assessment_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_K12_Student_Literacy_Assessment_Organization_Person_Role ON ceds6sc_rdx.k12_student_literacy_assessment IS '';

ALTER TABLE ceds6sc_rdx.k12_student_literacy_assessment ADD CONSTRAINT fk_k12_student_literacy_assessment_ref_literacy_assessment FOREIGN KEY ( ref_literacy_assessment_id ) REFERENCES ceds6sc_rdx.ref_literacy_assessment( ref_literacy_assessment_id );

COMMENT ON CONSTRAINT FK_K12_Student_Literacy_Assessment_Ref_Literacy_Assessment ON ceds6sc_rdx.k12_student_literacy_assessment IS '';

ALTER TABLE ceds6sc_rdx.k12_title_iii_language_instruction ADD CONSTRAINT fk_k12_lea_title_iii_language_instruction_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_K12_Lea_Title_III_Language_Instruction_Organization ON ceds6sc_rdx.k12_title_iii_language_instruction IS '';

ALTER TABLE ceds6sc_rdx.k12_title_iii_language_instruction ADD CONSTRAINT fk_k12_lea_title_iii_lang_instruction_ref_title_iii_lang_instruction_prgm FOREIGN KEY ( ref_title_iii_language_instruction_program_type_id ) REFERENCES ceds6sc_rdx.ref_title_iii_language_instruction_program_type( ref_title_iii_language_instruction_program_type_id );

COMMENT ON CONSTRAINT FK_K12_Lea_Title_III_Lang_Instruction_Ref_Title_III_Lang_Instruction_Prgm ON ceds6sc_rdx.k12_title_iii_language_instruction IS '';

ALTER TABLE ceds6sc_rdx.learner_activity ADD CONSTRAINT fk_learner_activity_assessment_registration FOREIGN KEY ( assessment_registration_id ) REFERENCES ceds6sc_rdx.assessment_registration( assessment_registration_id );

COMMENT ON CONSTRAINT FK_Learner_Activity_Assessment_Registration ON ceds6sc_rdx.learner_activity IS '';

ALTER TABLE ceds6sc_rdx.learner_activity ADD CONSTRAINT fk_learner_activity_course_section FOREIGN KEY ( course_section_id ) REFERENCES ceds6sc_rdx.course_section( organization_id );

COMMENT ON CONSTRAINT FK_Learner_Activity_Course_Section ON ceds6sc_rdx.learner_activity IS '';

ALTER TABLE ceds6sc_rdx.learner_activity ADD CONSTRAINT fk_learner_activity_organization FOREIGN KEY ( school_organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Learner_Activity_Organization ON ceds6sc_rdx.learner_activity IS '';

ALTER TABLE ceds6sc_rdx.learner_activity ADD CONSTRAINT fk_learner_activity_organization1 FOREIGN KEY ( lea_organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Learner_Activity_Organization1 ON ceds6sc_rdx.learner_activity IS '';

ALTER TABLE ceds6sc_rdx.learner_activity ADD CONSTRAINT fk_learner_activity_organization_calendar_session FOREIGN KEY ( organization_calendar_session_id ) REFERENCES ceds6sc_rdx.organization_calendar_session( organization_calendar_session_id );

COMMENT ON CONSTRAINT FK_Learner_Activity_Organization_Calendar_Session ON ceds6sc_rdx.learner_activity IS '';

ALTER TABLE ceds6sc_rdx.learner_activity ADD CONSTRAINT fk_learner_activity_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Learner_Activity_Person ON ceds6sc_rdx.learner_activity IS '';

ALTER TABLE ceds6sc_rdx.learner_activity ADD CONSTRAINT fk_learner_activity_person1 FOREIGN KEY ( assigned_by_person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Learner_Activity_Person1 ON ceds6sc_rdx.learner_activity IS '';

ALTER TABLE ceds6sc_rdx.learner_activity ADD CONSTRAINT fk_learner_activity_ref_learner_activity_maximum_time_allowed_units FOREIGN KEY ( ref_learner_activity_maximum_time_allowed_units_id ) REFERENCES ceds6sc_rdx.ref_learner_activity_maximum_time_allowed_units( ref_learner_activity_maximum_time_allowed_units_id );

COMMENT ON CONSTRAINT FK_Learner_Activity_Ref_Learner_Activity_Maximum_Time_Allowed_Units ON ceds6sc_rdx.learner_activity IS '';

ALTER TABLE ceds6sc_rdx.learner_activity ADD CONSTRAINT fk_learner_activity_ref_learner_activity_type FOREIGN KEY ( ref_learner_activity_type_id ) REFERENCES ceds6sc_rdx.ref_learner_activity_type( ref_learner_activity_type_id );

COMMENT ON CONSTRAINT FK_Learner_Activity_Ref_Learner_Activity_Type ON ceds6sc_rdx.learner_activity IS '';

ALTER TABLE ceds6sc_rdx.learning_goal ADD CONSTRAINT fk_learning_goal_competency_set FOREIGN KEY ( competency_set_id ) REFERENCES ceds6sc_rdx.competency_set( competency_set_id );

COMMENT ON CONSTRAINT FK_Learning_Goal_Competency_Set ON ceds6sc_rdx.learning_goal IS '';

ALTER TABLE ceds6sc_rdx.learning_goal ADD CONSTRAINT fk_learning_goal_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Learning_Goal_Person ON ceds6sc_rdx.learning_goal IS '';

ALTER TABLE ceds6sc_rdx.learning_resource_adaptation ADD CONSTRAINT fk_learning_resource_adaptation_lr FOREIGN KEY ( learning_resource_id ) REFERENCES ceds6sc_rdx.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT FK_Learning_Resource_Adaptation_LR ON ceds6sc_rdx.learning_resource_adaptation IS '';

ALTER TABLE ceds6sc_rdx.learning_resource_media_feature ADD CONSTRAINT fk_learning_resource_media_feature_learning_resource FOREIGN KEY ( learning_resource_id ) REFERENCES ceds6sc_rdx.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT FK_Learning_Resource_Media_Feature_Learning_Resource ON ceds6sc_rdx.learning_resource_media_feature IS '';

ALTER TABLE ceds6sc_rdx.learning_resource_media_feature ADD CONSTRAINT fk_learning_resource_media_feature_ref_learning_resource_media_feature_type FOREIGN KEY ( ref_learning_resource_media_feature_type_id ) REFERENCES ceds6sc_rdx.ref_learning_resource_media_feature_type( ref_learning_resource_media_feature_type_id );

COMMENT ON CONSTRAINT FK_Learning_Resource_Media_Feature_Ref_Learning_Resource_Media_Feature_Type ON ceds6sc_rdx.learning_resource_media_feature IS '';

ALTER TABLE ceds6sc_rdx.learning_resource_physical_media ADD CONSTRAINT fk_learning_resource_physical_media_learning_resource FOREIGN KEY ( learning_resource_id ) REFERENCES ceds6sc_rdx.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT FK_Learning_Resource_Physical_Media_Learning_Resource ON ceds6sc_rdx.learning_resource_physical_media IS '';

ALTER TABLE ceds6sc_rdx.learning_resource_physical_media ADD CONSTRAINT fk_learning_resource_physical_media_ref_learning_resource_physical_media_type FOREIGN KEY ( ref_learning_resource_physical_media_type_id ) REFERENCES ceds6sc_rdx.ref_learning_resource_physical_media_type( ref_learning_resource_physical_media_type_id );

COMMENT ON CONSTRAINT FK_Learning_Resource_Physical_Media_Ref_Learning_Resource_Physical_Media_Type ON ceds6sc_rdx.learning_resource_physical_media IS '';

ALTER TABLE ceds6sc_rdx.learning_standard_item ADD CONSTRAINT fk_learning_standard_item_learning_standard_document FOREIGN KEY ( learning_standard_document_id ) REFERENCES ceds6sc_rdx.learning_standard_document( learning_standard_document_id );

COMMENT ON CONSTRAINT FK_Learning_Standard_Item_Learning_Standard_Document ON ceds6sc_rdx.learning_standard_item IS '';

ALTER TABLE ceds6sc_rdx.learning_standard_item ADD CONSTRAINT fk_learning_standard_item_learning_standard_item FOREIGN KEY ( child_of_learning_standard_item ) REFERENCES ceds6sc_rdx.learning_standard_item( learning_standard_item_id );

COMMENT ON CONSTRAINT FK_Learning_Standard_Item_Learning_Standard_Item ON ceds6sc_rdx.learning_standard_item IS '';

ALTER TABLE ceds6sc_rdx.learning_standard_item ADD CONSTRAINT fk_learning_standard_item_ref_blooms_taxonomy_domain FOREIGN KEY ( ref_blooms_taxonomy_domain_id ) REFERENCES ceds6sc_rdx.ref_blooms_taxonomy_domain( ref_blooms_taxonomy_domain_id );

COMMENT ON CONSTRAINT FK_Learning_Standard_Item_Ref_Blooms_Taxonomy_Domain ON ceds6sc_rdx.learning_standard_item IS '';

ALTER TABLE ceds6sc_rdx.learning_standard_item ADD CONSTRAINT fk_learning_standard_item_ref_language FOREIGN KEY ( ref_language_id ) REFERENCES ceds6sc_rdx.ref_language( ref_language_id );

COMMENT ON CONSTRAINT FK_Learning_Standard_Item_Ref_Language ON ceds6sc_rdx.learning_standard_item IS '';

ALTER TABLE ceds6sc_rdx.learning_standard_item ADD CONSTRAINT fk_learning_standard_item_ref_learning_standard_item_node_accessibility_profile FOREIGN KEY ( ref_learning_standard_item_node_accessibility_profile_id ) REFERENCES ceds6sc_rdx.ref_learning_standard_item_node_accessibility_profile( ref_learning_standard_item_node_accessibility_profile_id );

COMMENT ON CONSTRAINT FK_Learning_Standard_Item_Ref_Learning_Standard_Item_Node_Accessibility_Profile ON ceds6sc_rdx.learning_standard_item IS '';

ALTER TABLE ceds6sc_rdx.learning_standard_item ADD CONSTRAINT fk_learning_standard_item_ref_learning_standard_item_testability_type FOREIGN KEY ( ref_learning_standard_item_testability_type_id ) REFERENCES ceds6sc_rdx.ref_learning_standard_item_testability_type( ref_learning_standard_item_testability_type_id );

COMMENT ON CONSTRAINT FK_Learning_Standard_Item_Ref_Learning_Standard_Item_Testability_Type ON ceds6sc_rdx.learning_standard_item IS '';

ALTER TABLE ceds6sc_rdx.learning_standard_item ADD CONSTRAINT fk_learning_standard_item_ref_multiple_intelligence_type FOREIGN KEY ( ref_multiple_intelligence_type_id ) REFERENCES ceds6sc_rdx.ref_multiple_intelligence_type( ref_multiple_intelligence_type_id );

COMMENT ON CONSTRAINT FK_Learning_Standard_Item_Ref_Multiple_Intelligence_Type ON ceds6sc_rdx.learning_standard_item IS '';

ALTER TABLE ceds6sc_rdx.learning_standard_item_education_level ADD CONSTRAINT fk_learning_standard_item_grade_levels_learning_standard_item FOREIGN KEY ( learning_standards_item_id ) REFERENCES ceds6sc_rdx.learning_standard_item( learning_standard_item_id );

COMMENT ON CONSTRAINT FK_Learning_Standard_Item_Grade_Levels_Learning_Standard_Item ON ceds6sc_rdx.learning_standard_item_education_level IS '';

ALTER TABLE ceds6sc_rdx.learning_standard_item_education_level ADD CONSTRAINT fk_learning_standard_item_edu_level_ref_education_level FOREIGN KEY ( ref_education_level_id ) REFERENCES ceds6sc_rdx.ref_education_level( ref_education_level_id );

COMMENT ON CONSTRAINT FK_Learning_Standard_Item_Edu_Level_Ref_Education_Level ON ceds6sc_rdx.learning_standard_item_education_level IS '';

ALTER TABLE ceds6sc_rdx.location_address ADD CONSTRAINT fk_location_address_location FOREIGN KEY ( location_id ) REFERENCES ceds6sc_rdx.location( location_id ) ON DELETE CASCADE ON UPDATE CASCADE;

COMMENT ON CONSTRAINT FK_Location_Address_Location ON ceds6sc_rdx.location_address IS '';

ALTER TABLE ceds6sc_rdx.location_address ADD CONSTRAINT fk_location_address_ref_country FOREIGN KEY ( ref_country_id ) REFERENCES ceds6sc_rdx.ref_country( ref_country_id );

COMMENT ON CONSTRAINT FK_Location_Address_Ref_Country ON ceds6sc_rdx.location_address IS '';

ALTER TABLE ceds6sc_rdx.location_address ADD CONSTRAINT fk_location_address_ref_county FOREIGN KEY ( ref_county_id ) REFERENCES ceds6sc_rdx.ref_county( ref_county_id );

COMMENT ON CONSTRAINT FK_Location_Address_Ref_County ON ceds6sc_rdx.location_address IS '';

ALTER TABLE ceds6sc_rdx.location_address ADD CONSTRAINT fk_location_address_ref_ers_rural_urban_continuum_code FOREIGN KEY ( ref_ers_rural_urban_continuum_code_id ) REFERENCES ceds6sc_rdx.ref_ers_rural_urban_continuum_code( ref_ers_rural_urban_continuum_code_id );

COMMENT ON CONSTRAINT FK_Location_Address_Ref_ERS_Rural_Urban_Continuum_Code ON ceds6sc_rdx.location_address IS '';

ALTER TABLE ceds6sc_rdx.location_address ADD CONSTRAINT fk_location_address_ref_state FOREIGN KEY ( ref_state_id ) REFERENCES ceds6sc_rdx.ref_state( ref_state_id );

COMMENT ON CONSTRAINT FK_Location_Address_Ref_State ON ceds6sc_rdx.location_address IS '';

ALTER TABLE ceds6sc_rdx.organization_accreditation ADD CONSTRAINT fk_organization_accreditation_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Accreditation_Organization ON ceds6sc_rdx.organization_accreditation IS '';

ALTER TABLE ceds6sc_rdx.organization_accreditation ADD CONSTRAINT fk_organization_accreditation_ref_accreditation_agency FOREIGN KEY ( ref_accreditation_agency_id ) REFERENCES ceds6sc_rdx.ref_accreditation_agency( ref_accreditation_agency_id );

COMMENT ON CONSTRAINT FK_Organization_Accreditation_Ref_Accreditation_Agency ON ceds6sc_rdx.organization_accreditation IS '';

ALTER TABLE ceds6sc_rdx.organization_calendar_crisis ADD CONSTRAINT fk_organization_calendar_crisis_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Calendar_Crisis_Organization ON ceds6sc_rdx.organization_calendar_crisis IS '';

ALTER TABLE ceds6sc_rdx.organization_calendar_event ADD CONSTRAINT fk_organization_calendar_event_organization_calendar FOREIGN KEY ( organization_calendar_id ) REFERENCES ceds6sc_rdx.organization_calendar( organization_calendar_id );

COMMENT ON CONSTRAINT FK_Organization_Calendar_Event_Organization_Calendar ON ceds6sc_rdx.organization_calendar_event IS '';

ALTER TABLE ceds6sc_rdx.organization_calendar_event ADD CONSTRAINT fk_organization_calendar_event_ref_calendar_event_type FOREIGN KEY ( ref_calendar_event_type ) REFERENCES ceds6sc_rdx.ref_calendar_event_type( ref_calendar_event_type_id );

COMMENT ON CONSTRAINT FK_Organization_Calendar_Event_Ref_Calendar_Event_Type ON ceds6sc_rdx.organization_calendar_event IS '';

ALTER TABLE ceds6sc_rdx.organization_email ADD CONSTRAINT fk_organization_email_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Email_Organization ON ceds6sc_rdx.organization_email IS '';

ALTER TABLE ceds6sc_rdx.organization_email ADD CONSTRAINT fk_organization_email_ref_email_type FOREIGN KEY ( ref_email_type_id ) REFERENCES ceds6sc_rdx.ref_email_type( ref_email_type_id );

COMMENT ON CONSTRAINT FK_Organization_Email_Ref_Email_Type ON ceds6sc_rdx.organization_email IS '';

ALTER TABLE ceds6sc_rdx.organization_financial ADD CONSTRAINT fk_organization_financial_financial_account FOREIGN KEY ( financial_account_id ) REFERENCES ceds6sc_rdx.financial_account( financial_account_id );

COMMENT ON CONSTRAINT FK_Organization_Financial_Financial_Account ON ceds6sc_rdx.organization_financial IS '';

ALTER TABLE ceds6sc_rdx.organization_financial ADD CONSTRAINT fk_organization_financial_financial_account_program FOREIGN KEY ( financial_account_program_id ) REFERENCES ceds6sc_rdx.financial_account_program( financial_account_program_id );

COMMENT ON CONSTRAINT FK_Organization_Financial_Financial_Account_Program ON ceds6sc_rdx.organization_financial IS '';

ALTER TABLE ceds6sc_rdx.organization_financial ADD CONSTRAINT fk_organization_financial_org_calendar_session FOREIGN KEY ( organization_calendar_session_id ) REFERENCES ceds6sc_rdx.organization_calendar_session( organization_calendar_session_id );

COMMENT ON CONSTRAINT FK_Organization_Financial_Org_Calendar_Session ON ceds6sc_rdx.organization_financial IS '';

ALTER TABLE ceds6sc_rdx.organization_indicator ADD CONSTRAINT fk_organization_indicator_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Indicator_Organization ON ceds6sc_rdx.organization_indicator IS '';

ALTER TABLE ceds6sc_rdx.organization_indicator ADD CONSTRAINT fk_organization_indicator_ref_organization_indicator FOREIGN KEY ( ref_organization_indicator_id ) REFERENCES ceds6sc_rdx.ref_organization_indicator( ref_organization_indicator_id );

COMMENT ON CONSTRAINT FK_Organization_Indicator_Ref_Organization_Indicator ON ceds6sc_rdx.organization_indicator IS '';

ALTER TABLE ceds6sc_rdx.organization_operational_status ADD CONSTRAINT fk_organization_operational_status_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Operational_Status_Organization ON ceds6sc_rdx.organization_operational_status IS '';

ALTER TABLE ceds6sc_rdx.organization_operational_status ADD CONSTRAINT fk_organization_operational_status_ref_operational_status FOREIGN KEY ( ref_operational_status_id ) REFERENCES ceds6sc_rdx.ref_operational_status( ref_operational_status_id );

COMMENT ON CONSTRAINT FK_Organization_Operational_Status_Ref_Operational_Status ON ceds6sc_rdx.organization_operational_status IS '';

ALTER TABLE ceds6sc_rdx.organization_policy ADD CONSTRAINT fk_organization_policy_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Policy_Organization ON ceds6sc_rdx.organization_policy IS '';

ALTER TABLE ceds6sc_rdx.organization_relationship ADD CONSTRAINT fk_organizatino_relationship_organization_parent FOREIGN KEY ( parent_organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organizatino_Relationship_Organization_Parent ON ceds6sc_rdx.organization_relationship IS '';

ALTER TABLE ceds6sc_rdx.organization_relationship ADD CONSTRAINT fk_organization_relationship_organization_child FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Relationship_Organization_Child ON ceds6sc_rdx.organization_relationship IS '';

ALTER TABLE ceds6sc_rdx.organization_relationship ADD CONSTRAINT fk_organization_relationship_ref_organization_relationship_type FOREIGN KEY ( ref_organization_relationship_id ) REFERENCES ceds6sc_rdx.ref_organization_relationship( ref_organization_relationship_id );

COMMENT ON CONSTRAINT FK_Organization_Relationship_Ref_Organization_Relationship_Type ON ceds6sc_rdx.organization_relationship IS '';

ALTER TABLE ceds6sc_rdx.organization_telephone ADD CONSTRAINT fk_organization_telephone_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Organization_Telephone_Organization ON ceds6sc_rdx.organization_telephone IS '';

ALTER TABLE ceds6sc_rdx.organization_telephone ADD CONSTRAINT fk_location_phone_ref_institution_telephone_type FOREIGN KEY ( ref_institution_telephone_type_id ) REFERENCES ceds6sc_rdx.ref_institution_telephone_type( ref_institution_telephone_type_id );

COMMENT ON CONSTRAINT FK_Location_Phone_Ref_Institution_Telephone_Type ON ceds6sc_rdx.organization_telephone IS '';

ALTER TABLE ceds6sc_rdx.pd_activity_education_level ADD CONSTRAINT fk_pd_activity_education_level_pd_activity FOREIGN KEY ( professional_development_activity_id ) REFERENCES ceds6sc_rdx.professional_development_activity( professional_development_activity_id );

COMMENT ON CONSTRAINT FK_PD_Activity_Education_Level_PD_Activity ON ceds6sc_rdx.pd_activity_education_level IS '';

ALTER TABLE ceds6sc_rdx.person_address ADD CONSTRAINT fk_person_address_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Address_Person ON ceds6sc_rdx.person_address IS '';

ALTER TABLE ceds6sc_rdx.person_address ADD CONSTRAINT fk_person_address_ref_country FOREIGN KEY ( ref_country_id ) REFERENCES ceds6sc_rdx.ref_country( ref_country_id );

COMMENT ON CONSTRAINT FK_Person_Address_Ref_Country ON ceds6sc_rdx.person_address IS '';

ALTER TABLE ceds6sc_rdx.person_address ADD CONSTRAINT fk_person_address_ref_county FOREIGN KEY ( ref_county_id ) REFERENCES ceds6sc_rdx.ref_county( ref_county_id );

COMMENT ON CONSTRAINT FK_Person_Address_Ref_County ON ceds6sc_rdx.person_address IS '';

ALTER TABLE ceds6sc_rdx.person_address ADD CONSTRAINT fk_person_address_ref_person_location_type FOREIGN KEY ( ref_person_location_type_id ) REFERENCES ceds6sc_rdx.ref_person_location_type( ref_person_location_type_id );

COMMENT ON CONSTRAINT FK_Person_Address_Ref_Person_Location_Type ON ceds6sc_rdx.person_address IS '';

ALTER TABLE ceds6sc_rdx.person_address ADD CONSTRAINT fk_person_address_ref_personal_information_verification FOREIGN KEY ( ref_personal_information_verification_id ) REFERENCES ceds6sc_rdx.ref_personal_information_verification( ref_personal_information_verification_id );

COMMENT ON CONSTRAINT FK_Person_Address_Ref_Personal_Information_Verification ON ceds6sc_rdx.person_address IS '';

ALTER TABLE ceds6sc_rdx.person_address ADD CONSTRAINT fk_person_address_ref_state FOREIGN KEY ( ref_state_id ) REFERENCES ceds6sc_rdx.ref_state( ref_state_id );

COMMENT ON CONSTRAINT FK_Person_Address_Ref_State ON ceds6sc_rdx.person_address IS '';

ALTER TABLE ceds6sc_rdx.person_assessment_personal_needs_profile ADD CONSTRAINT fk_person_assessment_personal_needs_profile_assessment_personal_needs_profile FOREIGN KEY ( assessment_personal_needs_profile_id ) REFERENCES ceds6sc_rdx.assessment_personal_needs_profile( assessment_personal_needs_profile_id );

COMMENT ON CONSTRAINT FK_Person_Assessment_Personal_Needs_Profile_Assessment_Personal_Needs_Profile ON ceds6sc_rdx.person_assessment_personal_needs_profile IS '';

ALTER TABLE ceds6sc_rdx.person_assessment_personal_needs_profile ADD CONSTRAINT fk_person_assessment_personal_needs_profile_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Assessment_Personal_Needs_Profile_Person ON ceds6sc_rdx.person_assessment_personal_needs_profile IS '';

ALTER TABLE ceds6sc_rdx.person_career_education_plan ADD CONSTRAINT fk_person_career_education_plan_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Career_Education_Plan_Person ON ceds6sc_rdx.person_career_education_plan IS '';

ALTER TABLE ceds6sc_rdx.person_career_education_plan ADD CONSTRAINT fk_person_career_education_plan_ref_career_edu_plan_type FOREIGN KEY ( ref_career_education_plan_type_id ) REFERENCES ceds6sc_rdx.ref_career_education_plan_type( ref_career_education_plan_type_id );

COMMENT ON CONSTRAINT FK_Person_Career_Education_Plan_Ref_Career_Edu_Plan_Type ON ceds6sc_rdx.person_career_education_plan IS '';

ALTER TABLE ceds6sc_rdx.person_degree_or_certificate ADD CONSTRAINT fk_person_degree_or_certificate_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Degree_Or_Certificate_Person ON ceds6sc_rdx.person_degree_or_certificate IS '';

ALTER TABLE ceds6sc_rdx.person_degree_or_certificate ADD CONSTRAINT fk_person_degree_or_certificate_ref_degree FOREIGN KEY ( ref_degree_or_certificate_type_id ) REFERENCES ceds6sc_rdx.ref_degree_or_certificate_type( ref_degree_or_certificate_type_id );

COMMENT ON CONSTRAINT FK_Person_Degree_Or_Certificate_Ref_Degree ON ceds6sc_rdx.person_degree_or_certificate IS '';

ALTER TABLE ceds6sc_rdx.person_degree_or_certificate ADD CONSTRAINT fk_person_degree_or_certificate_ref_education_verification_method FOREIGN KEY ( ref_education_verification_method_id ) REFERENCES ceds6sc_rdx.ref_education_verification_method( ref_education_verification_method_id );

COMMENT ON CONSTRAINT FK_Person_Degree_Or_Certificate_Ref_Education_Verification_Method ON ceds6sc_rdx.person_degree_or_certificate IS '';

ALTER TABLE ceds6sc_rdx.person_degree_or_certificate ADD CONSTRAINT fk_person_degree_or_certificate_ref_higher_ed_institution_accred_status FOREIGN KEY ( ref_higher_education_institution_accreditation_status_id ) REFERENCES ceds6sc_rdx.ref_higher_education_institution_accreditation_status( ref_higher_education_institution_accreditation_status_id );

COMMENT ON CONSTRAINT FK_Person_Degree_Or_Certificate_Ref_Higher_Ed_Institution_Accred_Status ON ceds6sc_rdx.person_degree_or_certificate IS '';

ALTER TABLE ceds6sc_rdx.person_disability ADD CONSTRAINT fk_person_disability_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Disability_Person ON ceds6sc_rdx.person_disability IS '';

ALTER TABLE ceds6sc_rdx.person_disability ADD CONSTRAINT fk_person_disability_ref_accommodations_needed_type FOREIGN KEY ( ref_accommodations_needed_type_id ) REFERENCES ceds6sc_rdx.ref_accommodations_needed_type( ref_accommodations_needed_type_id );

COMMENT ON CONSTRAINT FK_Person_Disability_Ref_Accommodations_Needed_Type ON ceds6sc_rdx.person_disability IS '';

ALTER TABLE ceds6sc_rdx.person_disability ADD CONSTRAINT fk_person_disability_ref_disability_condition_status_code FOREIGN KEY ( ref_disability_condition_status_code_id ) REFERENCES ceds6sc_rdx.ref_disability_condition_status_code( ref_disability_condition_status_code_id );

COMMENT ON CONSTRAINT FK_Person_Disability_Ref_Disability_Condition_Status_Code ON ceds6sc_rdx.person_disability IS '';

ALTER TABLE ceds6sc_rdx.person_disability ADD CONSTRAINT fk_person_disability_ref_disability_condition_type FOREIGN KEY ( ref_disability_condition_type_id ) REFERENCES ceds6sc_rdx.ref_disability_condition_type( ref_disability_condition_type_id );

COMMENT ON CONSTRAINT FK_Person_Disability_Ref_Disability_Condition_Type ON ceds6sc_rdx.person_disability IS '';

ALTER TABLE ceds6sc_rdx.person_disability ADD CONSTRAINT fk_person_disability_ref_disability_determination_source_type FOREIGN KEY ( ref_disability_determination_source_type_id ) REFERENCES ceds6sc_rdx.ref_disability_determination_source_type( ref_disability_determination_source_type_id );

COMMENT ON CONSTRAINT FK_Person_Disability_Ref_Disability_Determination_Source_Type ON ceds6sc_rdx.person_disability IS '';

ALTER TABLE ceds6sc_rdx.person_disability ADD CONSTRAINT fk_person_disability_ref_disability_type FOREIGN KEY ( primary_disability_type_id ) REFERENCES ceds6sc_rdx.ref_disability_type( ref_disability_type_id );

COMMENT ON CONSTRAINT FK_Person_Disability_Ref_Disability_Type ON ceds6sc_rdx.person_disability IS '';

ALTER TABLE ceds6sc_rdx.person_family ADD CONSTRAINT fk_person_family_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Family_Person ON ceds6sc_rdx.person_family IS '';

ALTER TABLE ceds6sc_rdx.person_family ADD CONSTRAINT fk_person_family_ref_communication_method FOREIGN KEY ( ref_communication_method_id ) REFERENCES ceds6sc_rdx.ref_communication_method( ref_communication_method_id );

COMMENT ON CONSTRAINT FK_Person_Family_Ref_Communication_Method ON ceds6sc_rdx.person_family IS '';

ALTER TABLE ceds6sc_rdx.person_family ADD CONSTRAINT fk_person_family_ref_el_program_eligibility FOREIGN KEY ( ref_el_program_eligibility_id ) REFERENCES ceds6sc_rdx.ref_el_program_eligibility( ref_el_program_eligibility_id );

COMMENT ON CONSTRAINT FK_Person_Family_Ref_EL_Program_Eligibility ON ceds6sc_rdx.person_family IS '';

ALTER TABLE ceds6sc_rdx.person_family ADD CONSTRAINT fk_person_family_ref_education_level FOREIGN KEY ( ref_highest_education_level_completed_id ) REFERENCES ceds6sc_rdx.ref_education_level( ref_education_level_id );

COMMENT ON CONSTRAINT FK_Person_Family_Ref_Education_Level ON ceds6sc_rdx.person_family IS '';

ALTER TABLE ceds6sc_rdx.person_family ADD CONSTRAINT fk_person_family_ref_family_income_source FOREIGN KEY ( ref_family_income_source_id ) REFERENCES ceds6sc_rdx.ref_family_income_source( ref_family_income_source_id );

COMMENT ON CONSTRAINT FK_Person_Family_Ref_Family_Income_Source ON ceds6sc_rdx.person_family IS '';

ALTER TABLE ceds6sc_rdx.person_family ADD CONSTRAINT fk_person_family_ref_income_calculation FOREIGN KEY ( ref_income_calculation_method_id ) REFERENCES ceds6sc_rdx.ref_income_calculation_method( ref_income_calculation_method_id );

COMMENT ON CONSTRAINT FK_Person_Family_Ref_Income_Calculation ON ceds6sc_rdx.person_family IS '';

ALTER TABLE ceds6sc_rdx.person_family ADD CONSTRAINT fk_person_family_ref_proof_of_residency_type FOREIGN KEY ( ref_proof_of_residency_type_id ) REFERENCES ceds6sc_rdx.ref_proof_of_residency_type( ref_proof_of_residency_type_id );

COMMENT ON CONSTRAINT FK_Person_Family_Ref_Proof_Of_Residency_Type ON ceds6sc_rdx.person_family IS '';

ALTER TABLE ceds6sc_rdx.person_health_birth ADD CONSTRAINT fk_person_health_birth_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Health_Birth_Person ON ceds6sc_rdx.person_health_birth IS '';

ALTER TABLE ceds6sc_rdx.person_health_birth ADD CONSTRAINT fk_person_health_birth_ref_trimester_when_prenatal_care_began FOREIGN KEY ( ref_trimester_when_prenatal_care_began_id ) REFERENCES ceds6sc_rdx.ref_trimester_when_prenatal_care_began( ref_trimester_when_prenatal_care_began_id );

COMMENT ON CONSTRAINT FK_Person_Health_Birth_Ref_Trimester_When_Prenatal_Care_Began ON ceds6sc_rdx.person_health_birth IS '';

ALTER TABLE ceds6sc_rdx.person_identifier ADD CONSTRAINT fk_person_identifier_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Identifier_Person ON ceds6sc_rdx.person_identifier IS '';

ALTER TABLE ceds6sc_rdx.person_identifier ADD CONSTRAINT fk_person_identifier_ref_identifier_person FOREIGN KEY ( ref_person_identification_system_id ) REFERENCES ceds6sc_rdx.ref_person_identification_system( ref_person_identification_system_id );

COMMENT ON CONSTRAINT FK_Person_Identifier_Ref_Identifier_Person ON ceds6sc_rdx.person_identifier IS '';

ALTER TABLE ceds6sc_rdx.person_identifier ADD CONSTRAINT fk_person_identifier_ref_person_info_verification FOREIGN KEY ( ref_personal_information_verification_id ) REFERENCES ceds6sc_rdx.ref_personal_information_verification( ref_personal_information_verification_id );

COMMENT ON CONSTRAINT FK_Person_Identifier_Ref_Person_Info_Verification ON ceds6sc_rdx.person_identifier IS '';

ALTER TABLE ceds6sc_rdx.person_language ADD CONSTRAINT fk_person_language_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Language_Person ON ceds6sc_rdx.person_language IS '';

ALTER TABLE ceds6sc_rdx.person_language ADD CONSTRAINT fk_person_language_ref_language FOREIGN KEY ( ref_language_id ) REFERENCES ceds6sc_rdx.ref_language( ref_language_id );

COMMENT ON CONSTRAINT FK_Person_Language_Ref_Language ON ceds6sc_rdx.person_language IS '';

ALTER TABLE ceds6sc_rdx.person_language ADD CONSTRAINT fk_person_language_ref_language_use_type FOREIGN KEY ( ref_language_use_type_id ) REFERENCES ceds6sc_rdx.ref_language_use_type( ref_language_use_type_id );

COMMENT ON CONSTRAINT FK_Person_Language_Ref_Language_Use_Type ON ceds6sc_rdx.person_language IS '';

ALTER TABLE ceds6sc_rdx.person_other_name ADD CONSTRAINT fk_person_other_name_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Other_Name_Person ON ceds6sc_rdx.person_other_name IS '';

ALTER TABLE ceds6sc_rdx.person_other_name ADD CONSTRAINT fk_person_other_name__ref_other_name_type FOREIGN KEY ( ref_other_name_type_id ) REFERENCES ceds6sc_rdx.ref_other_name_type( ref_other_name_type_id );

COMMENT ON CONSTRAINT FK_Person_Other_Name__Ref_Other_Name_Type ON ceds6sc_rdx.person_other_name IS '';

ALTER TABLE ceds6sc_rdx.person_referral ADD CONSTRAINT fk_person_referral_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Referral_Person ON ceds6sc_rdx.person_referral IS '';

ALTER TABLE ceds6sc_rdx.person_referral ADD CONSTRAINT fk_person_referral_ref_referral_outcome FOREIGN KEY ( ref_referral_outcome_id ) REFERENCES ceds6sc_rdx.ref_referral_outcome( ref_referral_outcome_id );

COMMENT ON CONSTRAINT FK_Person_Referral_Ref_Referral_Outcome ON ceds6sc_rdx.person_referral IS '';

ALTER TABLE ceds6sc_rdx.person_status ADD CONSTRAINT fk_person_status_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Person_Status_Person ON ceds6sc_rdx.person_status IS '';

ALTER TABLE ceds6sc_rdx.person_status ADD CONSTRAINT fk_person_status_ref_person_status_type FOREIGN KEY ( ref_person_status_type_id ) REFERENCES ceds6sc_rdx.ref_person_status_type( ref_person_status_type_id );

COMMENT ON CONSTRAINT FK_Person_Status_Ref_Person_Status_Type ON ceds6sc_rdx.person_status IS '';

ALTER TABLE ceds6sc_rdx.professional_development_activity ADD CONSTRAINT fk_pd_session_course FOREIGN KEY ( course_id ) REFERENCES ceds6sc_rdx.course( organization_id );

COMMENT ON CONSTRAINT FK_PD_Session_Course ON ceds6sc_rdx.professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.professional_development_activity ADD CONSTRAINT fk_pd_session_pd_requirement FOREIGN KEY ( professional_development_requirement_id ) REFERENCES ceds6sc_rdx.professional_development_requirement( professional_development_requirement_id );

COMMENT ON CONSTRAINT FK_PD_Session_PD_Requirement ON ceds6sc_rdx.professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.professional_development_activity ADD CONSTRAINT fk_pd_session_ref_course_credit_unit FOREIGN KEY ( ref_course_credit_unit_id ) REFERENCES ceds6sc_rdx.ref_course_credit_unit( ref_course_credit_unit_id );

COMMENT ON CONSTRAINT FK_PD_Session_Ref_Course_Credit_Unit ON ceds6sc_rdx.professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.professional_development_activity ADD CONSTRAINT fk_professional_development_activity_ref_pd_activity_approved_for FOREIGN KEY ( ref_pd_activity_approved_purpose_id ) REFERENCES ceds6sc_rdx.ref_pd_activity_approved_purpose( ref_pd_activity_approved_for_id );

COMMENT ON CONSTRAINT FK_Professional_Development_Activity_Ref_PD_Activity_Approved_For ON ceds6sc_rdx.professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.professional_development_activity ADD CONSTRAINT fk_professional_development_activity_ref_pd_activity_credit_type FOREIGN KEY ( ref_pd_activity_credit_type_id ) REFERENCES ceds6sc_rdx.ref_pd_activity_credit_type( ref_pd_activity_credit_type_id );

COMMENT ON CONSTRAINT FK_Professional_Development_Activity_Ref_PD_Activity_Credit_Type ON ceds6sc_rdx.professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.professional_development_activity ADD CONSTRAINT fk_professional_development_activity_ref_pd_activity_level FOREIGN KEY ( ref_pd_activity_level_id ) REFERENCES ceds6sc_rdx.ref_pd_activity_level( ref_pd_activity_level_id );

COMMENT ON CONSTRAINT FK_Professional_Development_Activity_Ref_PD_Activity_Level ON ceds6sc_rdx.professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.professional_development_activity ADD CONSTRAINT fk_professional_development_activity_ref_pd_activity_type FOREIGN KEY ( ref_pd_activity_type_id ) REFERENCES ceds6sc_rdx.ref_pd_activity_type( ref_pd_activity_type_id );

COMMENT ON CONSTRAINT FK_Professional_Development_Activity_Ref_PD_Activity_Type ON ceds6sc_rdx.professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.professional_development_activity ADD CONSTRAINT fk_professional_development_activity_ref_pd_audience_type FOREIGN KEY ( ref_pd_audience_type_id ) REFERENCES ceds6sc_rdx.ref_pd_audience_type( ref_pd_audience_type_id );

COMMENT ON CONSTRAINT FK_Professional_Development_Activity_Ref_PD_Audience_Type ON ceds6sc_rdx.professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.professional_development_activity ADD CONSTRAINT fk_pd_session_ref_prof_dev_financial_support FOREIGN KEY ( ref_professional_development_financial_support_id ) REFERENCES ceds6sc_rdx.ref_professional_development_financial_support( ref_professional_development_financial_support_id );

COMMENT ON CONSTRAINT FK_PD_Session_Ref_Prof_Dev_Financial_Support ON ceds6sc_rdx.professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.professional_development_session ADD CONSTRAINT fk_pd_session_pd_activity FOREIGN KEY ( professional_development_activity_id ) REFERENCES ceds6sc_rdx.professional_development_activity( professional_development_activity_id );

COMMENT ON CONSTRAINT FK_PD_Session_PD_Activity ON ceds6sc_rdx.professional_development_session IS '';

ALTER TABLE ceds6sc_rdx.professional_development_session ADD CONSTRAINT fk_professional_development_session_ref_el_trainer_core_knowledge_area FOREIGN KEY ( ref_el_trainer_core_knowledge_area_id ) REFERENCES ceds6sc_rdx.ref_el_trainer_core_knowledge_area( ref_el_trainer_core_knowledge_area_id );

COMMENT ON CONSTRAINT FK_Professional_Development_Session_Ref_EL_Trainer_Core_Knowledge_Area ON ceds6sc_rdx.professional_development_session IS '';

ALTER TABLE ceds6sc_rdx.professional_development_session ADD CONSTRAINT fk_pd_session_ref_language FOREIGN KEY ( ref_language_id ) REFERENCES ceds6sc_rdx.ref_language( ref_language_id );

COMMENT ON CONSTRAINT FK_PD_Session_Ref_Language ON ceds6sc_rdx.professional_development_session IS '';

ALTER TABLE ceds6sc_rdx.professional_development_session ADD CONSTRAINT fk_pd_session_ref_pd_instructional_delivery_mode FOREIGN KEY ( ref_pd_instructional_delivery_mode_id ) REFERENCES ceds6sc_rdx.ref_pd_instructional_delivery_mode( ref_pd_instructional_delivery_mode_id );

COMMENT ON CONSTRAINT FK_PD_Session_Ref_PD_Instructional_Delivery_Mode ON ceds6sc_rdx.professional_development_session IS '';

ALTER TABLE ceds6sc_rdx.professional_development_session ADD CONSTRAINT fk_pd_session_ref_pd_session_status FOREIGN KEY ( ref_pd_session_status_id ) REFERENCES ceds6sc_rdx.ref_pd_session_status( ref_pd_session_status_id );

COMMENT ON CONSTRAINT FK_PD_Session_Ref_PD_Session_Status ON ceds6sc_rdx.professional_development_session IS '';

ALTER TABLE ceds6sc_rdx.program ADD CONSTRAINT fk_program_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Program_Organization ON ceds6sc_rdx.program IS '';

ALTER TABLE ceds6sc_rdx.program_participation_cte ADD CONSTRAINT fk_program_participation_cte_person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Cte_Person_Program_Participation ON ceds6sc_rdx.program_participation_cte IS '';

ALTER TABLE ceds6sc_rdx.program_participation_cte ADD CONSTRAINT fk_program_participation_cte_ref_non_traditional_gender_status FOREIGN KEY ( ref_non_traditional_gender_status_id ) REFERENCES ceds6sc_rdx.ref_non_traditional_gender_status( ref_non_traditional_gender_status_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Cte_Ref_Non_Traditional_Gender_Status ON ceds6sc_rdx.program_participation_cte IS '';

ALTER TABLE ceds6sc_rdx.program_participation_cte ADD CONSTRAINT fk_program_participation_cte_ref_workbased_learning_opportunity_type FOREIGN KEY ( ref_workbased_learning_opportunity_type_id ) REFERENCES ceds6sc_rdx.ref_workbased_learning_opportunity_type( ref_workbased_learning_opportunity_type_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Cte_Ref_Workbased_Learning_Opportunity_Type ON ceds6sc_rdx.program_participation_cte IS '';

ALTER TABLE ceds6sc_rdx.program_participation_migrant ADD CONSTRAINT fk_program_participation_migrant_organization FOREIGN KEY ( designated_graduation_school_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Migrant_Organization ON ceds6sc_rdx.program_participation_migrant IS '';

ALTER TABLE ceds6sc_rdx.program_participation_migrant ADD CONSTRAINT fk_program_participation_migrant_person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Migrant_Person_Program_Participation ON ceds6sc_rdx.program_participation_migrant IS '';

ALTER TABLE ceds6sc_rdx.program_participation_migrant ADD CONSTRAINT fk_program_participation_migrant_ref_continuation_of_services FOREIGN KEY ( ref_continuation_of_services_reason_id ) REFERENCES ceds6sc_rdx.ref_continuation_of_services( ref_continuation_of_services_reason_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Migrant_Ref_Continuation_Of_Services ON ceds6sc_rdx.program_participation_migrant IS '';

ALTER TABLE ceds6sc_rdx.program_participation_migrant ADD CONSTRAINT fk_program_participation_migrant_ref_country FOREIGN KEY ( ref_qualifying_move_from_country_id ) REFERENCES ceds6sc_rdx.ref_country( ref_country_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Migrant_Ref_Country ON ceds6sc_rdx.program_participation_migrant IS '';

ALTER TABLE ceds6sc_rdx.program_participation_migrant ADD CONSTRAINT fk_program_participation_migrant_ref_mep_enrollment_type FOREIGN KEY ( ref_mep_enrollment_type_id ) REFERENCES ceds6sc_rdx.ref_mep_enrollment_type( ref_mep_enrollment_type_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Migrant_Ref_MEP_Enrollment_Type ON ceds6sc_rdx.program_participation_migrant IS '';

ALTER TABLE ceds6sc_rdx.program_participation_migrant ADD CONSTRAINT fk_program_participation_migrant_ref_mep_project_based FOREIGN KEY ( ref_mep_project_based_id ) REFERENCES ceds6sc_rdx.ref_mep_project_based( ref_mep_project_based_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Migrant_Ref_MEP_Project_Based ON ceds6sc_rdx.program_participation_migrant IS '';

ALTER TABLE ceds6sc_rdx.program_participation_migrant ADD CONSTRAINT fk_program_participation_migrant_ref_mep_service_type FOREIGN KEY ( ref_mep_service_type_id ) REFERENCES ceds6sc_rdx.ref_mep_service_type( ref_mep_service_type_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Migrant_Ref_MEP_Service_Type ON ceds6sc_rdx.program_participation_migrant IS '';

ALTER TABLE ceds6sc_rdx.program_participation_migrant ADD CONSTRAINT fk_program_participation_migrant_ref_state FOREIGN KEY ( ref_qualifying_move_from_state_id ) REFERENCES ceds6sc_rdx.ref_state( ref_state_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Migrant_Ref_State ON ceds6sc_rdx.program_participation_migrant IS '';

ALTER TABLE ceds6sc_rdx.program_participation_special_education ADD CONSTRAINT fk_program_participation_special_education_person_program_participat FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Special_Education_Person_Program_Participat ON ceds6sc_rdx.program_participation_special_education IS '';

ALTER TABLE ceds6sc_rdx.program_participation_special_education ADD CONSTRAINT fk_program_participation_special_ed_ref_idea_ed_environment_for_ec FOREIGN KEY ( ref_idea_educational_environment_ecid ) REFERENCES ceds6sc_rdx.ref_idea_educational_environment_ec( ref_idea_educational_environment_ecid );

COMMENT ON CONSTRAINT FK_Program_Participation_Special_Ed_Ref_IDEA_Ed_Environment_For_EC ON ceds6sc_rdx.program_participation_special_education IS '';

ALTER TABLE ceds6sc_rdx.program_participation_special_education ADD CONSTRAINT fk_program_participation_special_ed_ref_idea_ed_environment_school_age FOREIGN KEY ( ref_idea_ed_environment_school_age_id ) REFERENCES ceds6sc_rdx.ref_idea_educational_environment_school_age( ref_ideseducational_environment_school_age );

COMMENT ON CONSTRAINT FK_Program_Participation_Special_Ed_Ref_IDEA_Ed_Environment_School_Age ON ceds6sc_rdx.program_participation_special_education IS '';

ALTER TABLE ceds6sc_rdx.program_participation_special_education ADD CONSTRAINT fk_program_participation_special_ed_ref_special_education_exit_reason FOREIGN KEY ( ref_special_education_exit_reason_id ) REFERENCES ceds6sc_rdx.ref_special_education_exit_reason( ref_special_education_exit_reason_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Special_Ed_Ref_Special_Education_Exit_Reason ON ceds6sc_rdx.program_participation_special_education IS '';

ALTER TABLE ceds6sc_rdx.program_participation_title_iii_lep ADD CONSTRAINT fk_program_participation_title_iii__person_program_participation FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.person_program_participation( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Title_III__Person_Program_Participation ON ceds6sc_rdx.program_participation_title_iii_lep IS '';

ALTER TABLE ceds6sc_rdx.program_participation_title_iii_lep ADD CONSTRAINT fk_program_participation_title_iii_lep_ref_title_iii_accountability FOREIGN KEY ( ref_title_iii_accountability_id ) REFERENCES ceds6sc_rdx.ref_title_iii_accountability( ref_title_iii_accountability_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Title_III_Lep_Ref_Title_III_Accountability ON ceds6sc_rdx.program_participation_title_iii_lep IS '';

ALTER TABLE ceds6sc_rdx.program_participation_title_iii_lep ADD CONSTRAINT fk_program_participation_title_iii_lep_ref_title_iii_lang_instr_prgm FOREIGN KEY ( ref_title_iii_language_instruction_program_type_id ) REFERENCES ceds6sc_rdx.ref_title_iii_language_instruction_program_type( ref_title_iii_language_instruction_program_type_id );

COMMENT ON CONSTRAINT FK_Program_Participation_Title_III_LEP_Ref_Title_III_Lang_Instr_Prgm ON ceds6sc_rdx.program_participation_title_iii_lep IS '';

ALTER TABLE ceds6sc_rdx.ps_course ADD CONSTRAINT fk_ps_course_course FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.course( organization_id );

COMMENT ON CONSTRAINT FK_Ps_Course_Course ON ceds6sc_rdx.ps_course IS '';

ALTER TABLE ceds6sc_rdx.ps_course ADD CONSTRAINT fk_ps_course_ref_cip_code FOREIGN KEY ( ref_cip_code_id ) REFERENCES ceds6sc_rdx.ref_cip_code( ref_cip_code_id );

COMMENT ON CONSTRAINT FK_Ps_Course_Ref_Cip_Code ON ceds6sc_rdx.ps_course IS '';

ALTER TABLE ceds6sc_rdx.ps_course ADD CONSTRAINT fk_ps_course_ref_course_credit_basis_type FOREIGN KEY ( ref_course_credit_basis_type_id ) REFERENCES ceds6sc_rdx.ref_course_credit_basis_type( ref_course_credit_basis_type_id );

COMMENT ON CONSTRAINT FK_Ps_Course_Ref_Course_Credit_Basis_Type ON ceds6sc_rdx.ps_course IS '';

ALTER TABLE ceds6sc_rdx.ps_course ADD CONSTRAINT fk_ps_course_ref_course_credit_level_type FOREIGN KEY ( ref_course_credit_level_type_id ) REFERENCES ceds6sc_rdx.ref_course_credit_level_type( ref_course_credit_level_type_id );

COMMENT ON CONSTRAINT FK_Ps_Course_Ref_Course_Credit_Level_Type ON ceds6sc_rdx.ps_course IS '';

ALTER TABLE ceds6sc_rdx.ps_course ADD CONSTRAINT fk_ps_course_ref_nces_college_course_map_code FOREIGN KEY ( ref_nces_college_course_map_code_id ) REFERENCES ceds6sc_rdx.ref_nces_college_course_map_code( ref_nces_college_course_map_code_id );

COMMENT ON CONSTRAINT FK_Ps_Course_Ref_NCES_College_Course_Map_Code ON ceds6sc_rdx.ps_course IS '';

ALTER TABLE ceds6sc_rdx.ps_price_of_attendance ADD CONSTRAINT fk_ps_price_of_attendance_ps_institution FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.ps_institution( organization_id );

COMMENT ON CONSTRAINT FK_PS_Price_Of_Attendance_Ps_Institution ON ceds6sc_rdx.ps_price_of_attendance IS '';

ALTER TABLE ceds6sc_rdx.ps_price_of_attendance ADD CONSTRAINT fk_ps_price_of_attendance_ref_tuition_unit FOREIGN KEY ( ref_tuition_unit_id ) REFERENCES ceds6sc_rdx.ref_tuition_unit( ref_tuition_unit_id );

COMMENT ON CONSTRAINT FK_PS_Price_Of_Attendance_Ref_Tuition_Unit ON ceds6sc_rdx.ps_price_of_attendance IS '';

ALTER TABLE ceds6sc_rdx.ps_section ADD CONSTRAINT fk_ps_section_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.course_section( organization_id );

COMMENT ON CONSTRAINT FK_Ps_Section_Organization ON ceds6sc_rdx.ps_section IS '';

ALTER TABLE ceds6sc_rdx.ps_section ADD CONSTRAINT fk_ps_section_ref_cip_code FOREIGN KEY ( ref_cip_code_id ) REFERENCES ceds6sc_rdx.ref_cip_code( ref_cip_code_id );

COMMENT ON CONSTRAINT FK_Ps_Section_Ref_Cip_Code ON ceds6sc_rdx.ps_section IS '';

ALTER TABLE ceds6sc_rdx.ps_section ADD CONSTRAINT fk_ps_section_ref_course_gpa_applicability FOREIGN KEY ( ref_course_gpa_applicability_id ) REFERENCES ceds6sc_rdx.ref_course_gpa_applicability( ref_course_gpaapplicability_id );

COMMENT ON CONSTRAINT fk_ps_section_ref_course_Gpa_Applicability ON ceds6sc_rdx.ps_section IS '';

ALTER TABLE ceds6sc_rdx.ps_section ADD CONSTRAINT fk_ps_section_ref_course_honors_type FOREIGN KEY ( ref_course_honors_type_id ) REFERENCES ceds6sc_rdx.ref_course_honors_type( ref_course_honors_type_id );

COMMENT ON CONSTRAINT fk_ps_section_ref_course_Honors_Type ON ceds6sc_rdx.ps_section IS '';

ALTER TABLE ceds6sc_rdx.ps_section ADD CONSTRAINT fk_ps_section_ref_course_instruction_method FOREIGN KEY ( ref_course_instruction_method_id ) REFERENCES ceds6sc_rdx.ref_course_instruction_method( ref_course_instruction_method_id );

COMMENT ON CONSTRAINT fk_ps_section_ref_course_Instruction_Method ON ceds6sc_rdx.ps_section IS '';

ALTER TABLE ceds6sc_rdx.ps_section ADD CONSTRAINT fk_ps_section_ref_course_level_type FOREIGN KEY ( ref_course_level_type_id ) REFERENCES ceds6sc_rdx.ref_course_level_type( ref_course_level_type_id );

COMMENT ON CONSTRAINT fk_ps_section_ref_course_Level_Type ON ceds6sc_rdx.ps_section IS '';

ALTER TABLE ceds6sc_rdx.ps_section ADD CONSTRAINT fk_ps_section_ref_developmental_education_type FOREIGN KEY ( ref_developmental_education_type_id ) REFERENCES ceds6sc_rdx.ref_developmental_education_type( ref_developmental_education_type_id );

COMMENT ON CONSTRAINT FK_Ps_Section_Ref_Developmental_Education_Type ON ceds6sc_rdx.ps_section IS '';

ALTER TABLE ceds6sc_rdx.ps_section ADD CONSTRAINT fk_ps_section_ref_workbased_learning_opportunity_type FOREIGN KEY ( ref_workbased_learning_opportunity_type_id ) REFERENCES ceds6sc_rdx.ref_workbased_learning_opportunity_type( ref_workbased_learning_opportunity_type_id );

COMMENT ON CONSTRAINT FK_Ps_Section_Ref_Workbased_Learning_Opportunity_Type ON ceds6sc_rdx.ps_section IS '';

ALTER TABLE ceds6sc_rdx.ps_staff_employment ADD CONSTRAINT fk_ps_staff_employment_ref_academic_rank FOREIGN KEY ( ref_academic_rank_id ) REFERENCES ceds6sc_rdx.ref_academic_rank( ref_academic_rank_id );

COMMENT ON CONSTRAINT FK_Ps_Staff_Employment_Ref_Academic_Rank ON ceds6sc_rdx.ps_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.ps_staff_employment ADD CONSTRAINT fk_ps_staff_employment_ref_employment_contract_type FOREIGN KEY ( ref_employment_contract_type_id ) REFERENCES ceds6sc_rdx.ref_employment_contract_type( ref_employment_contract_type_id );

COMMENT ON CONSTRAINT FK_Ps_Staff_Employment_Ref_Employment_Contract_Type ON ceds6sc_rdx.ps_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.ps_staff_employment ADD CONSTRAINT fk_ps_staff_employment_ref_full_time_status FOREIGN KEY ( ref_full_time_status_id ) REFERENCES ceds6sc_rdx.ref_full_time_status( ref_full_time_status_id );

COMMENT ON CONSTRAINT FK_Ps_Staff_Employment_Ref_Full_Time_Status ON ceds6sc_rdx.ps_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.ps_staff_employment ADD CONSTRAINT fk_ps_staff_employment_ref_graduate_assist_ipeds_category FOREIGN KEY ( ref_graduate_assistant_ipeds_category_id ) REFERENCES ceds6sc_rdx.ref_graduate_assistant_ipeds_category( ref_graduate_assistant_ipeds_category_id );

COMMENT ON CONSTRAINT FK_Ps_Staff_Employment_Ref_Graduate_Assist_Ipeds_Category ON ceds6sc_rdx.ps_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.ps_staff_employment ADD CONSTRAINT fk_ps_staff_employment_instruction_credit_type FOREIGN KEY ( ref_instruction_credit_type_id ) REFERENCES ceds6sc_rdx.ref_instruction_credit_type( ref_instruction_credit_type_id );

COMMENT ON CONSTRAINT FK_Ps_Staff_Employment_Instruction_Credit_Type ON ceds6sc_rdx.ps_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.ps_staff_employment ADD CONSTRAINT fk_ps_staff_employment_ref_instruct_staff_contract_length FOREIGN KEY ( ref_instructional_staff_contract_length_id ) REFERENCES ceds6sc_rdx.ref_instructional_staff_contract_length( ref_instructional_staff_contract_length_id );

COMMENT ON CONSTRAINT FK_Ps_Staff_Employment_Ref_Instruct_Staff_Contract_Length ON ceds6sc_rdx.ps_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.ps_staff_employment ADD CONSTRAINT fk_ps_staff_employment_ref_instruct_staff_faculty_tenure FOREIGN KEY ( ref_instructional_staff_faculty_tenure_id ) REFERENCES ceds6sc_rdx.ref_instructional_staff_faculty_tenure( ref_instructional_staff_faculty_tenure_id );

COMMENT ON CONSTRAINT FK_Ps_Staff_Employment_Ref_Instruct_Staff_Faculty_Tenure ON ceds6sc_rdx.ps_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.ps_staff_employment ADD CONSTRAINT fk_ps_staff_employment_ref_ipedsoccupational_category FOREIGN KEY ( ref_ipeds_occupational_category_id ) REFERENCES ceds6sc_rdx.ref_ipeds_occupational_category( ref_ipeds_occupational_category_id );

COMMENT ON CONSTRAINT FK_Ps_Staff_Employment_Ref_IPEDSOccupational_Category ON ceds6sc_rdx.ps_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.ps_staff_employment ADD CONSTRAINT fk_ps_staff_employment_staff_employment FOREIGN KEY ( staff_employment_id ) REFERENCES ceds6sc_rdx.staff_employment( staff_employment_id );

COMMENT ON CONSTRAINT FK_Ps_Staff_Employment_Staff_Employment ON ceds6sc_rdx.ps_staff_employment IS '';

ALTER TABLE ceds6sc_rdx.ps_student_academic_record ADD CONSTRAINT fk_ps_student_academic_record_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Academic_Record_Organization_Person_Role ON ceds6sc_rdx.ps_student_academic_record IS '';

ALTER TABLE ceds6sc_rdx.ps_student_academic_record ADD CONSTRAINT fk_ps_student_academic_record_ref_academic_term_designator FOREIGN KEY ( ref_academic_term_designator_id ) REFERENCES ceds6sc_rdx.ref_academic_term_designator( ref_academic_term_designator_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Academic_Record_Ref_Academic_Term_Designator ON ceds6sc_rdx.ps_student_academic_record IS '';

ALTER TABLE ceds6sc_rdx.ps_student_academic_record ADD CONSTRAINT fk_ps_student_academic_record_ref_credit_hours FOREIGN KEY ( ref_credit_hours_applied_other_program_id ) REFERENCES ceds6sc_rdx.ref_credit_hours_applied_other_program( ref_credit_hours_applied_other_program_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Academic_Record_Ref_Credit_Hours ON ceds6sc_rdx.ps_student_academic_record IS '';

ALTER TABLE ceds6sc_rdx.ps_student_academic_record ADD CONSTRAINT fk_ps_student_academic_record_ref_prof_tech_credential_type FOREIGN KEY ( ref_professional_tech_credential_type_id ) REFERENCES ceds6sc_rdx.ref_professional_technical_credential_type( ref_professional_technical_credential_type_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Academic_Record_Ref_Prof_Tech_Credential_Type ON ceds6sc_rdx.ps_student_academic_record IS '';

ALTER TABLE ceds6sc_rdx.ps_student_application ADD CONSTRAINT fk_ps_student_application_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Application_Organization_Person_Role ON ceds6sc_rdx.ps_student_application IS '';

ALTER TABLE ceds6sc_rdx.ps_student_application ADD CONSTRAINT fk_ps_student_application_ref_admitted_student FOREIGN KEY ( ref_admitted_student_id ) REFERENCES ceds6sc_rdx.ref_admitted_student( ref_admitted_student_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Application_Ref_Admitted_Student ON ceds6sc_rdx.ps_student_application IS '';

ALTER TABLE ceds6sc_rdx.ps_student_application ADD CONSTRAINT fk_ps_student_application_ref_gpa_weighted_indicator FOREIGN KEY ( ref_gpa_weighted_indicator_id ) REFERENCES ceds6sc_rdx.ref_gpa_weighted_indicator( ref_gpa_weighted_indicator_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Application_Ref_Gpa_Weighted_Indicator ON ceds6sc_rdx.ps_student_application IS '';

ALTER TABLE ceds6sc_rdx.ps_student_application ADD CONSTRAINT fk_ps_student_application_ref_grade_point_average_domain FOREIGN KEY ( ref_grade_point_average_domain_id ) REFERENCES ceds6sc_rdx.ref_grade_point_average_domain( ref_grade_point_average_domain_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Application_Ref_Grade_Point_Average_Domain ON ceds6sc_rdx.ps_student_application IS '';

ALTER TABLE ceds6sc_rdx.ps_student_course_section_mark ADD CONSTRAINT fk_ps_student_course_section_mark_student_section FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.ps_student_section( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Course_Section_Mark_Student_Section ON ceds6sc_rdx.ps_student_course_section_mark IS '';

ALTER TABLE ceds6sc_rdx.ps_student_employment ADD CONSTRAINT fk_ps_student_employment_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Employment_Organization_Person_Role ON ceds6sc_rdx.ps_student_employment IS '';

ALTER TABLE ceds6sc_rdx.ps_student_employment ADD CONSTRAINT fk_ps_student_employment_ref_employed_after_exit FOREIGN KEY ( ref_employed_after_exit_id ) REFERENCES ceds6sc_rdx.ref_employed_after_exit( ref_employed_after_exit_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Employment_Ref_Employed_After_Exit ON ceds6sc_rdx.ps_student_employment IS '';

ALTER TABLE ceds6sc_rdx.ps_student_employment ADD CONSTRAINT fk_ps_student_employment_ref_employed_while_enrolled FOREIGN KEY ( ref_employed_while_enrolled_id ) REFERENCES ceds6sc_rdx.ref_employed_while_enrolled( ref_employed_while_enrolled_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Employment_Ref_Employed_While_Enrolled ON ceds6sc_rdx.ps_student_employment IS '';

ALTER TABLE ceds6sc_rdx.ps_student_employment ADD CONSTRAINT fk_ps_student_employment_ref_employment_status_while_enrolled FOREIGN KEY ( ref_employment_status_while_enrolled_id ) REFERENCES ceds6sc_rdx.ref_employment_status_while_enrolled( ref_employment_status_while_enrolled_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Employment_Ref_Employment_Status_While_Enrolled ON ceds6sc_rdx.ps_student_employment IS '';

ALTER TABLE ceds6sc_rdx.ps_student_financial_aid ADD CONSTRAINT fk_ps_student_financial_aid_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Financial_Aid_Organization_Person_Role ON ceds6sc_rdx.ps_student_financial_aid IS '';

ALTER TABLE ceds6sc_rdx.ps_student_financial_aid ADD CONSTRAINT fk_ps_student_financial_aid_ref_fin_aid_vtrns_bnft_status FOREIGN KEY ( ref_financial_aid_veterans_benefit_status_id ) REFERENCES ceds6sc_rdx.ref_financial_aid_veterans_benefit_status( ref_financial_aid_veterans_benefit_status_id );

COMMENT ON CONSTRAINT FK_Ps_student_financial_aid_ref_fin_aid_vtrns_bnft_Status ON ceds6sc_rdx.ps_student_financial_aid IS '';

ALTER TABLE ceds6sc_rdx.ps_student_financial_aid ADD CONSTRAINT fk_ps_student_financial_aid_ref_fin_aid_vtrns_bnft_type FOREIGN KEY ( ref_financial_aid_veterans_benefit_type_id ) REFERENCES ceds6sc_rdx.ref_financial_aid_veterans_benefit_type( ref_financial_aid_veterans_benefit_type_id );

COMMENT ON CONSTRAINT FK_Ps_student_financial_aid_ref_fin_aid_vtrns_bnft_Type ON ceds6sc_rdx.ps_student_financial_aid IS '';

ALTER TABLE ceds6sc_rdx.ps_student_financial_aid ADD CONSTRAINT fk_ps_student_financial_aid_ref_need_determination_method FOREIGN KEY ( ref_need_determination_method_id ) REFERENCES ceds6sc_rdx.ref_need_determination_method( ref_need_determination_method_id );

COMMENT ON CONSTRAINT FK_Ps_Student_Financial_Aid_Ref_Need_Determination_Method ON ceds6sc_rdx.ps_student_financial_aid IS '';

ALTER TABLE ceds6sc_rdx.quarterly_employment_record ADD CONSTRAINT fk_quarterly_employment_record_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT FK_Quarterly_Employment_Record_Person ON ceds6sc_rdx.quarterly_employment_record IS '';

ALTER TABLE ceds6sc_rdx.quarterly_employment_record ADD CONSTRAINT fk_quarterly_employment_record_ref_eradministrative_data_source FOREIGN KEY ( ref_eradministrative_data_source_id ) REFERENCES ceds6sc_rdx.ref_eradministrative_data_source( ref_eradministrative_data_source_id );

COMMENT ON CONSTRAINT FK_Quarterly_Employment_Record_Ref_ERAdministrative_Data_Source ON ceds6sc_rdx.quarterly_employment_record IS '';

ALTER TABLE ceds6sc_rdx.quarterly_employment_record ADD CONSTRAINT fk_quarterly_employment_record_ref_employed_prior_to_enrollment FOREIGN KEY ( ref_employed_prior_to_enrollment_id ) REFERENCES ceds6sc_rdx.ref_employed_prior_to_enrollment( ref_employed_prior_to_enrollment_id );

COMMENT ON CONSTRAINT FK_Quarterly_Employment_Record_Ref_Employed_Prior_To_Enrollment ON ceds6sc_rdx.quarterly_employment_record IS '';

ALTER TABLE ceds6sc_rdx.quarterly_employment_record ADD CONSTRAINT fk_quarterly_employment_record_ref_employment_location FOREIGN KEY ( ref_employment_location_id ) REFERENCES ceds6sc_rdx.ref_employment_location( ref_employment_location_id );

COMMENT ON CONSTRAINT FK_Quarterly_Employment_Record_Ref_Employment_Location ON ceds6sc_rdx.quarterly_employment_record IS '';

ALTER TABLE ceds6sc_rdx.ref_academic_award_level ADD CONSTRAINT fk_ref_academic_award_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Academic_Award_Level_Organization ON ceds6sc_rdx.ref_academic_award_level IS '';

ALTER TABLE ceds6sc_rdx.ref_academic_rank ADD CONSTRAINT fk_ref_academic_rank_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Academic_Rank_Organization ON ceds6sc_rdx.ref_academic_rank IS '';

ALTER TABLE ceds6sc_rdx.ref_academic_term_designator ADD CONSTRAINT fk_ref_academic_term_designator_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Academic_Term_Designator_Organization ON ceds6sc_rdx.ref_academic_term_designator IS '';

ALTER TABLE ceds6sc_rdx.ref_accreditation_agency ADD CONSTRAINT fk_ref_accreditation_agency_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Accreditation_Agency_Organization ON ceds6sc_rdx.ref_accreditation_agency IS '';

ALTER TABLE ceds6sc_rdx.ref_activity_time_measurement_type ADD CONSTRAINT fk_ref_activity_time_measurement_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Activity_Time_Measurement_Type_Organization ON ceds6sc_rdx.ref_activity_time_measurement_type IS '';

ALTER TABLE ceds6sc_rdx.ref_address_type ADD CONSTRAINT fk_ref_address_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Address_Type_Organization ON ceds6sc_rdx.ref_address_type IS '';

ALTER TABLE ceds6sc_rdx.ref_admission_consideration_level ADD CONSTRAINT fk_ref_admission_consideration_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Admission_Consideration_Level_Organization ON ceds6sc_rdx.ref_admission_consideration_level IS '';

ALTER TABLE ceds6sc_rdx.ref_admitted_student ADD CONSTRAINT fk_ref_admitted_student_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Admitted_Student_Organization ON ceds6sc_rdx.ref_admitted_student IS '';

ALTER TABLE ceds6sc_rdx.ref_ae_certification_type ADD CONSTRAINT fk_ref_ae_certification_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_AE_Certification_Type_Organization ON ceds6sc_rdx.ref_ae_certification_type IS '';

ALTER TABLE ceds6sc_rdx.ref_ae_functioning_level_at_posttest ADD CONSTRAINT fk_ref_ae_functioning_level_at_posttest_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_AE_Functioning_Level_At_Posttest_Organization ON ceds6sc_rdx.ref_ae_functioning_level_at_posttest IS '';

ALTER TABLE ceds6sc_rdx.ref_ae_postsecondary_transition_action ADD CONSTRAINT fk_ref_ae_postsecondary_transition_action_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_AE_Postsecondary_Transition_Action_Organization ON ceds6sc_rdx.ref_ae_postsecondary_transition_action IS '';

ALTER TABLE ceds6sc_rdx.ref_ae_staff_classification ADD CONSTRAINT fk_ref_ae_staff_classification_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_AE_Staff_Classification_Organization ON ceds6sc_rdx.ref_ae_staff_classification IS '';

ALTER TABLE ceds6sc_rdx.ref_allergy_severity ADD CONSTRAINT fk_ref_allergy_severity_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Allergy_Severity_Organization ON ceds6sc_rdx.ref_allergy_severity IS '';

ALTER TABLE ceds6sc_rdx.ref_alt_route_to_certification_or_licensure ADD CONSTRAINT fk_ref_alt_route_to_certification_or_licensure_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Alt_Route_To_Certification_Or_Licensure_Organization ON ceds6sc_rdx.ref_alt_route_to_certification_or_licensure IS '';

ALTER TABLE ceds6sc_rdx.ref_alternative_school_focus ADD CONSTRAINT fk_ref_alternative_school_focus_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Alternative_School_Focus_Organization ON ceds6sc_rdx.ref_alternative_school_focus IS '';

ALTER TABLE ceds6sc_rdx.ref_apip_interaction_type ADD CONSTRAINT fk_ref_apip_interaction_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_APIP_Interaction_Type_Organization ON ceds6sc_rdx.ref_apip_interaction_type IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_accommodation_type ADD CONSTRAINT fk_ref_assessment_accommodation_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Accommodation_Type_Organization ON ceds6sc_rdx.ref_assessment_accommodation_type IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_asset_type ADD CONSTRAINT fk_ref_assessment_asset_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Asset_Type_Organization ON ceds6sc_rdx.ref_assessment_asset_type IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_form_section_identification_system ADD CONSTRAINT fk_ref_assessment_form_section_idtype_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Form_Section_IDType_Organization ON ceds6sc_rdx.ref_assessment_form_section_identification_system IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_item_response_score_status ADD CONSTRAINT fk_ref_assessment_item_response_score_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Item_Response_Score_Status_Organization ON ceds6sc_rdx.ref_assessment_item_response_score_status IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_item_type ADD CONSTRAINT fk_ref_assessment_item_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Item_Type_Organization ON ceds6sc_rdx.ref_assessment_item_type IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_need_braille_grade_type ADD CONSTRAINT fk_ref_assessment_need_braille_grade_type_id_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Need_Braille_Grade_Type_Id_Organization ON ceds6sc_rdx.ref_assessment_need_braille_grade_type IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_need_braille_status_cell_type ADD CONSTRAINT fk_ref_assessment_need_braille_status_cell_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Need_Braille_Status_Cell_Type_Organization ON ceds6sc_rdx.ref_assessment_need_braille_status_cell_type IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_need_increased_whitespacing_type ADD CONSTRAINT fk_ref_assessment_need_increased_whitespacing_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Need_Increased_Whitespacing_Type_Organization ON ceds6sc_rdx.ref_assessment_need_increased_whitespacing_type IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_need_masking_type ADD CONSTRAINT fk_ref_assessment_need_masking_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Need_Masking_Type_Organization ON ceds6sc_rdx.ref_assessment_need_masking_type IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_need_signing_type ADD CONSTRAINT fk_ref_assessment_need_signing_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Need_Signing_Type_Organization ON ceds6sc_rdx.ref_assessment_need_signing_type IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_need_support_tool ADD CONSTRAINT fk_ref_assessment_need_support_tool_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Need_Support_Tool_Organization ON ceds6sc_rdx.ref_assessment_need_support_tool IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_need_user_spoken_preference_type ADD CONSTRAINT fk_ref_assessment_need_user_spoken_preference_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Need_User_Spoken_Preference_Type_Organization ON ceds6sc_rdx.ref_assessment_need_user_spoken_preference_type IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_platform_type ADD CONSTRAINT fk_ref_assessment_platform_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Platform_Type_Organization ON ceds6sc_rdx.ref_assessment_platform_type IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_purpose ADD CONSTRAINT fk_ref_assessment_purpose_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Purpose_Organization ON ceds6sc_rdx.ref_assessment_purpose IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_reason_not_tested ADD CONSTRAINT fk_ref_assessment_reason_not_tested_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Reason_Not_Tested_Organization ON ceds6sc_rdx.ref_assessment_reason_not_tested IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_reporting_method ADD CONSTRAINT fk_ref_assessment_reporting_method_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Reporting_Method_Organization ON ceds6sc_rdx.ref_assessment_reporting_method IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_result_score_type ADD CONSTRAINT fk_ref_assessment_result_score_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Result_Score_Type_Organization ON ceds6sc_rdx.ref_assessment_result_score_type IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_session_staff_role_type ADD CONSTRAINT fk_ref_assessment_session_staff_role_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Session_Staff_Role_Type_Organization ON ceds6sc_rdx.ref_assessment_session_staff_role_type IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_subtest_identifier_type ADD CONSTRAINT fk_ref_assess_subtest_idtype_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assess_Subtest_IDType_Organization ON ceds6sc_rdx.ref_assessment_subtest_identifier_type IS '';

ALTER TABLE ceds6sc_rdx.ref_assessment_type_children_with_disabilities ADD CONSTRAINT fk_ref_assessment_type_children_with_disabilities_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Assessment_Type_Children_With_Disabilities_Organization ON ceds6sc_rdx.ref_assessment_type_children_with_disabilities IS '';

ALTER TABLE ceds6sc_rdx.ref_attendance_status ADD CONSTRAINT fk_ref_attendance_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Attendance_Status_Organization ON ceds6sc_rdx.ref_attendance_status IS '';

ALTER TABLE ceds6sc_rdx.ref_barrier_to_educating_homeless ADD CONSTRAINT fk_ref_barrier_to_educating_homeless_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Barrier_To_Educating_Homeless_Organization ON ceds6sc_rdx.ref_barrier_to_educating_homeless IS '';

ALTER TABLE ceds6sc_rdx.ref_blended_learning_model_type ADD CONSTRAINT fk_ref_blended_learning_model_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Blended_Learning_Model_Type_Organization ON ceds6sc_rdx.ref_blended_learning_model_type IS '';

ALTER TABLE ceds6sc_rdx.ref_building_use_type ADD CONSTRAINT fk_ref_building_use_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Building_Use_Type_Organization ON ceds6sc_rdx.ref_building_use_type IS '';

ALTER TABLE ceds6sc_rdx.ref_campus_residency_type ADD CONSTRAINT fk_ref_campus_residency_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Campus_Residency_Type_Organization ON ceds6sc_rdx.ref_campus_residency_type IS '';

ALTER TABLE ceds6sc_rdx.ref_career_education_plan_type ADD CONSTRAINT fk_ref_career_education_plan_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Career_Education_Plan_Type_Organization ON ceds6sc_rdx.ref_career_education_plan_type IS '';

ALTER TABLE ceds6sc_rdx.ref_charter_school_approval_agency_type ADD CONSTRAINT fk_ref_charter_school_approval_agency_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Charter_School_Approval_Agency_Type_Organization ON ceds6sc_rdx.ref_charter_school_approval_agency_type IS '';

ALTER TABLE ceds6sc_rdx.ref_charter_school_type ADD CONSTRAINT fk_ref_charter_school_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Charter_School_Type_Organization ON ceds6sc_rdx.ref_charter_school_type IS '';

ALTER TABLE ceds6sc_rdx.ref_child_developmental_screening_status ADD CONSTRAINT fk_ref_child_developmental_screening_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Child_Developmental_Screening_Status_Organization ON ceds6sc_rdx.ref_child_developmental_screening_status IS '';

ALTER TABLE ceds6sc_rdx.ref_cip_code ADD CONSTRAINT fk_ref_cip_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Cip_Code_Organization ON ceds6sc_rdx.ref_cip_code IS '';

ALTER TABLE ceds6sc_rdx.ref_cip_version ADD CONSTRAINT fk_ref_cip_version_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Cip_Version_Organization ON ceds6sc_rdx.ref_cip_version IS '';

ALTER TABLE ceds6sc_rdx.ref_cohort_exclusion ADD CONSTRAINT fk_ref_cohort_exclusion_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Cohort_Exclusion_Organization ON ceds6sc_rdx.ref_cohort_exclusion IS '';

ALTER TABLE ceds6sc_rdx.ref_community_based_type ADD CONSTRAINT fk_ref_community_based_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Community_Based_Type_Organization ON ceds6sc_rdx.ref_community_based_type IS '';

ALTER TABLE ceds6sc_rdx.ref_content_standard_type ADD CONSTRAINT fk_ref_content_standard_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Content_Standard_Type_Organization ON ceds6sc_rdx.ref_content_standard_type IS '';

ALTER TABLE ceds6sc_rdx.ref_control_of_institution ADD CONSTRAINT fk_ref_control_of_institution_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Control_Of_Institution_Organization ON ceds6sc_rdx.ref_control_of_institution IS '';

ALTER TABLE ceds6sc_rdx.ref_correctional_education_facility_type ADD CONSTRAINT fk_ref_correctional_education_facility_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Correctional_Education_Facility_Type_Organization ON ceds6sc_rdx.ref_correctional_education_facility_type IS '';

ALTER TABLE ceds6sc_rdx.ref_country ADD CONSTRAINT fk_ref_country_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Country_Org ON ceds6sc_rdx.ref_country IS '';

ALTER TABLE ceds6sc_rdx.ref_course_academic_grade_status_code ADD CONSTRAINT fk_ref_course_academic_grade_status_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Academic_Grade_Status_Code_Organization ON ceds6sc_rdx.ref_course_academic_grade_status_code IS '';

ALTER TABLE ceds6sc_rdx.ref_course_credit_basis_type ADD CONSTRAINT fk_ref_course_credit_basis_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Credit_Basis_Type_Organization ON ceds6sc_rdx.ref_course_credit_basis_type IS '';

ALTER TABLE ceds6sc_rdx.ref_course_credit_unit ADD CONSTRAINT fk_ref_course_credit_unit_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Credit_Unit_Organization ON ceds6sc_rdx.ref_course_credit_unit IS '';

ALTER TABLE ceds6sc_rdx.ref_course_honors_type ADD CONSTRAINT fk_ref_course_honors_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Honors_Type_Organization ON ceds6sc_rdx.ref_course_honors_type IS '';

ALTER TABLE ceds6sc_rdx.ref_course_instruction_site_type ADD CONSTRAINT fk_ref_course_instruction_site_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Instruction_Site_Type_Organization ON ceds6sc_rdx.ref_course_instruction_site_type IS '';

ALTER TABLE ceds6sc_rdx.ref_course_level_characteristic ADD CONSTRAINT fk_ref_course_level_characteristic_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Level_Characteristic_Organization ON ceds6sc_rdx.ref_course_level_characteristic IS '';

ALTER TABLE ceds6sc_rdx.ref_course_repeat_code ADD CONSTRAINT fk_ref_course_repeat_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Repeat_Code_Organization ON ceds6sc_rdx.ref_course_repeat_code IS '';

ALTER TABLE ceds6sc_rdx.ref_course_section_delivery_mode ADD CONSTRAINT fk_ref_course_section_delivery_mode_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Section_Delivery_Mode_Organization ON ceds6sc_rdx.ref_course_section_delivery_mode IS '';

ALTER TABLE ceds6sc_rdx.ref_course_section_entry_type ADD CONSTRAINT fk_ref_course_section_entry_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Course_Section_Entry_Type_Organization ON ceds6sc_rdx.ref_course_section_entry_type IS '';

ALTER TABLE ceds6sc_rdx.ref_credential_type ADD CONSTRAINT fk_ref_credential_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Credential_Type_Organization ON ceds6sc_rdx.ref_credential_type IS '';

ALTER TABLE ceds6sc_rdx.ref_credit_type_earned ADD CONSTRAINT fk_ref_credit_type_earned_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Credit_Type_Earned_Organization ON ceds6sc_rdx.ref_credit_type_earned IS '';

ALTER TABLE ceds6sc_rdx.ref_cte_graduation_rate_inclusion ADD CONSTRAINT fk_ref_cte_graduation_rate_inclusion_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_CTE_Graduation_Rate_Inclusion_Organization ON ceds6sc_rdx.ref_cte_graduation_rate_inclusion IS '';

ALTER TABLE ceds6sc_rdx.ref_curriculum_framework_type ADD CONSTRAINT fk_ref_curriculum_framework_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Curriculum_Framework_Type_Organization ON ceds6sc_rdx.ref_curriculum_framework_type IS '';

ALTER TABLE ceds6sc_rdx.ref_degree_or_certificate_type ADD CONSTRAINT fk_ref_degree_certificate_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Degree_Certificate_Type_Organization ON ceds6sc_rdx.ref_degree_or_certificate_type IS '';

ALTER TABLE ceds6sc_rdx.ref_dental_screening_status ADD CONSTRAINT fk_ref_dental_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Dental_Org ON ceds6sc_rdx.ref_dental_screening_status IS '';

ALTER TABLE ceds6sc_rdx.ref_developmental_education_referral_status ADD CONSTRAINT fk_ref_developmental_education_referral_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Developmental_Education_Referral_Status_Organization ON ceds6sc_rdx.ref_developmental_education_referral_status IS '';

ALTER TABLE ceds6sc_rdx.ref_developmental_evaluation_finding ADD CONSTRAINT fk_ref_developmental_evaluation_finding_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Developmental_Evaluation_Finding_Organization ON ceds6sc_rdx.ref_developmental_evaluation_finding IS '';

ALTER TABLE ceds6sc_rdx.ref_disability_condition_status_code ADD CONSTRAINT fk_ref_disability_condition_status_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Disability_Condition_Status_Code_Organization ON ceds6sc_rdx.ref_disability_condition_status_code IS '';

ALTER TABLE ceds6sc_rdx.ref_disability_determination_source_type ADD CONSTRAINT fk_ref_disability_determination_source_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Disability_Determination_Source_Type_Organization ON ceds6sc_rdx.ref_disability_determination_source_type IS '';

ALTER TABLE ceds6sc_rdx.ref_disciplinary_action_taken ADD CONSTRAINT fk_ref_disciplinary_action_taken_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Disciplinary_Action_Taken_Organization ON ceds6sc_rdx.ref_disciplinary_action_taken IS '';

ALTER TABLE ceds6sc_rdx.ref_discipline_method_firearms ADD CONSTRAINT fk_ref_discipline_method_firearms_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Discipline_Method_Firearms_Organization ON ceds6sc_rdx.ref_discipline_method_firearms IS '';

ALTER TABLE ceds6sc_rdx.ref_discipline_reason ADD CONSTRAINT fk_ref_discipline_reason_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Discipline_Reason_Organization ON ceds6sc_rdx.ref_discipline_reason IS '';

ALTER TABLE ceds6sc_rdx.ref_doctoral_exams_required_code ADD CONSTRAINT fk_ref_doctoral_exams_required_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Doctoral_Exams_Required_Code_Organization ON ceds6sc_rdx.ref_doctoral_exams_required_code IS '';

ALTER TABLE ceds6sc_rdx.ref_el_employment_separation_reason ADD CONSTRAINT fk_ref_el_employment_separation_reason_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_EL_Employment_Separation_Reason_Organization ON ceds6sc_rdx.ref_el_employment_separation_reason IS '';

ALTER TABLE ceds6sc_rdx.ref_el_federal_funding_type ADD CONSTRAINT fk_ref_el_federal_funding_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_EL_Federal_Funding_Type_Organization ON ceds6sc_rdx.ref_el_federal_funding_type IS '';

ALTER TABLE ceds6sc_rdx.ref_el_level_of_specialization ADD CONSTRAINT fk_ref_el_level_of_specialization_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_EL_Level_Of_Specialization_Organization ON ceds6sc_rdx.ref_el_level_of_specialization IS '';

ALTER TABLE ceds6sc_rdx.ref_el_other_federal_funding_sources ADD CONSTRAINT fk_ref_el_other_federal_funding_sources_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_EL_Other_Federal_Funding_Sources_Organization ON ceds6sc_rdx.ref_el_other_federal_funding_sources IS '';

ALTER TABLE ceds6sc_rdx.ref_el_professional_development_topic_area ADD CONSTRAINT fk_ref_el_professional_development_topic_area_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_EL_Professional_Development_Topic_Area_Organization ON ceds6sc_rdx.ref_el_professional_development_topic_area IS '';

ALTER TABLE ceds6sc_rdx.ref_el_program_eligibility_status ADD CONSTRAINT fk_ref_el_program_eligibility_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_EL_Program_Eligibility_Status_Organization ON ceds6sc_rdx.ref_el_program_eligibility_status IS '';

ALTER TABLE ceds6sc_rdx.ref_el_service_professional_staff_classification ADD CONSTRAINT fk_ref_el_service_professional_staff_classification_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_EL_Service_Professional_Staff_Classification_Organization ON ceds6sc_rdx.ref_el_service_professional_staff_classification IS '';

ALTER TABLE ceds6sc_rdx.ref_el_state_revenue_source ADD CONSTRAINT fk_ref_el_state_revenue_source_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_EL_State_Revenue_Source_Organization ON ceds6sc_rdx.ref_el_state_revenue_source IS '';

ALTER TABLE ceds6sc_rdx.ref_eradministrative_data_source ADD CONSTRAINT fk_ref_eradministrative_data_source_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_ERAdministrative_Data_Source_Organization ON ceds6sc_rdx.ref_eradministrative_data_source IS '';

ALTER TABLE ceds6sc_rdx.ref_early_childhood_credential ADD CONSTRAINT fk_ref_early_childhood_credential_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Early_Childhood_Credential_Organization ON ceds6sc_rdx.ref_early_childhood_credential IS '';

ALTER TABLE ceds6sc_rdx.ref_early_childhood_services ADD CONSTRAINT fk_ref_early_childhood_services_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Early_Childhood_Services_Organization ON ceds6sc_rdx.ref_early_childhood_services IS '';

ALTER TABLE ceds6sc_rdx.ref_education_level_type ADD CONSTRAINT fk_ref_education_level_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Education_Level_Type_Organization ON ceds6sc_rdx.ref_education_level_type IS '';

ALTER TABLE ceds6sc_rdx.ref_elementary_middle_additional ADD CONSTRAINT fk_ref_elementary_middle_additional_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Elementary_Middle_Additional_Organization ON ceds6sc_rdx.ref_elementary_middle_additional IS '';

ALTER TABLE ceds6sc_rdx.ref_employed_after_exit ADD CONSTRAINT fk_ref_employed_after_exit_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Employed_After_Exit_Organization ON ceds6sc_rdx.ref_employed_after_exit IS '';

ALTER TABLE ceds6sc_rdx.ref_employed_while_enrolled ADD CONSTRAINT fk_ref_employed_while_enrolled_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Employed_While_Enrolled_Organization ON ceds6sc_rdx.ref_employed_while_enrolled IS '';

ALTER TABLE ceds6sc_rdx.ref_employment_separation_type ADD CONSTRAINT fk_ref_employment_separation_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Employment_Separation_Type_Organization ON ceds6sc_rdx.ref_employment_separation_type IS '';

ALTER TABLE ceds6sc_rdx.ref_employment_status_while_enrolled ADD CONSTRAINT fk_ref_employment_status_while_enrolled_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Employment_Status_While_Enrolled_Organization ON ceds6sc_rdx.ref_employment_status_while_enrolled IS '';

ALTER TABLE ceds6sc_rdx.ref_enrollment_status ADD CONSTRAINT fk_ref_enrollment_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Enrollment_Status_Organization ON ceds6sc_rdx.ref_enrollment_status IS '';

ALTER TABLE ceds6sc_rdx.ref_entry_type ADD CONSTRAINT fk_ref_entry_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Entry_Type_Organization ON ceds6sc_rdx.ref_entry_type IS '';

ALTER TABLE ceds6sc_rdx.ref_exit_or_withdrawal_status ADD CONSTRAINT fk_ref_exit_or_withdrawal_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Exit_Or_Withdrawal_Status_Organization ON ceds6sc_rdx.ref_exit_or_withdrawal_status IS '';

ALTER TABLE ceds6sc_rdx.ref_family_income_source ADD CONSTRAINT fk_ref_family_income_source_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Family_Income_Source_Org ON ceds6sc_rdx.ref_family_income_source IS '';

ALTER TABLE ceds6sc_rdx.ref_financial_account_balance_sheet_code ADD CONSTRAINT fk_ref_financial_balance_sheet_account_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Financial_Balance_Sheet_Account_Code_Organization ON ceds6sc_rdx.ref_financial_account_balance_sheet_code IS '';

ALTER TABLE ceds6sc_rdx.ref_financial_account_fund_classification ADD CONSTRAINT fk_ref_financial_account_fund_classification_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Financial_Account_Fund_Classification_Organization ON ceds6sc_rdx.ref_financial_account_fund_classification IS '';

ALTER TABLE ceds6sc_rdx.ref_financial_account_revenue_code ADD CONSTRAINT fk_ref_financial_revenue_account_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Financial_Revenue_Account_Code_Organization ON ceds6sc_rdx.ref_financial_account_revenue_code IS '';

ALTER TABLE ceds6sc_rdx.ref_financial_aid_award_status ADD CONSTRAINT fk_ref_financial_aid_award_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Financial_Aid_Award_Status_Organization ON ceds6sc_rdx.ref_financial_aid_award_status IS '';

ALTER TABLE ceds6sc_rdx.ref_financial_aid_veterans_benefit_status ADD CONSTRAINT fk_ref_financial_aid_veterans_benefit_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Financial_Aid_Veterans_Benefit_Status_Organization ON ceds6sc_rdx.ref_financial_aid_veterans_benefit_status IS '';

ALTER TABLE ceds6sc_rdx.ref_financial_expenditure_function_code ADD CONSTRAINT fk_ref_financial_expenditure_function_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Financial_Expenditure_Function_Code_Organization ON ceds6sc_rdx.ref_financial_expenditure_function_code IS '';

ALTER TABLE ceds6sc_rdx.ref_financial_expenditure_object_code ADD CONSTRAINT fk_ref_financial_expenditure_object_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Financial_Expenditure_Object_Code_Organization ON ceds6sc_rdx.ref_financial_expenditure_object_code IS '';

ALTER TABLE ceds6sc_rdx.ref_food_service_eligibility ADD CONSTRAINT fk_ref_food_service_eligibility_organization FOREIGN KEY ( ref_jurisdiction ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Food_Service_Eligibility_Organization ON ceds6sc_rdx.ref_food_service_eligibility IS '';

ALTER TABLE ceds6sc_rdx.ref_frequency_of_service ADD CONSTRAINT fk_ref_frequency_of_service_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Frequency_Of_Service_Organization ON ceds6sc_rdx.ref_frequency_of_service IS '';

ALTER TABLE ceds6sc_rdx.ref_goals_for_attending_adult_education ADD CONSTRAINT fk_ref_goals_for_attending_adult_education_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Goals_For_Attending_Adult_Education_Organization ON ceds6sc_rdx.ref_goals_for_attending_adult_education IS '';

ALTER TABLE ceds6sc_rdx.ref_grade_level ADD CONSTRAINT fk_ref_grade_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Grade_Level_Organization ON ceds6sc_rdx.ref_grade_level IS '';

ALTER TABLE ceds6sc_rdx.ref_grade_level ADD CONSTRAINT fk_ref_grade_level_ref_grade_level_type FOREIGN KEY ( ref_grade_level_type_id ) REFERENCES ceds6sc_rdx.ref_grade_level_type( ref_grade_level_type_id );

COMMENT ON CONSTRAINT FK_Ref_Grade_Level_Ref_Grade_Level_Type ON ceds6sc_rdx.ref_grade_level IS '';

ALTER TABLE ceds6sc_rdx.ref_grade_point_average_domain ADD CONSTRAINT fk_ref_grade_point_average_domain_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Grade_Point_Average_Domain_Organization ON ceds6sc_rdx.ref_grade_point_average_domain IS '';

ALTER TABLE ceds6sc_rdx.ref_graduate_or_doctoral_exam_results_status ADD CONSTRAINT fk_ref_graduate_or_doctoral_exam_results_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Graduate_Or_Doctoral_Exam_Results_Status_Organization ON ceds6sc_rdx.ref_graduate_or_doctoral_exam_results_status IS '';

ALTER TABLE ceds6sc_rdx.ref_health_insurance_coverage ADD CONSTRAINT fk_ref_insurance_type_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Insurance_Type_Org ON ceds6sc_rdx.ref_health_insurance_coverage IS '';

ALTER TABLE ceds6sc_rdx.ref_high_school_diploma_distinction_type ADD CONSTRAINT fk_ref_hs_diploma_distinction_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Hs_Diploma_Distinction_Type_Organization ON ceds6sc_rdx.ref_high_school_diploma_distinction_type IS '';

ALTER TABLE ceds6sc_rdx.ref_high_school_graduation_rate_indicator ADD CONSTRAINT fk_ref_hsgraduation_rate_indicator_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_HSGraduation_Rate_Indicator_Organization ON ceds6sc_rdx.ref_high_school_graduation_rate_indicator IS '';

ALTER TABLE ceds6sc_rdx.ref_homeless_nighttime_residence ADD CONSTRAINT fk_ref_homeless_nighttime_residence_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Homeless_Nighttime_Residence_Organization ON ceds6sc_rdx.ref_homeless_nighttime_residence IS '';

ALTER TABLE ceds6sc_rdx.ref_idea_educational_environment_ec ADD CONSTRAINT fk_ref_idea_ed_environment_for_ec_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Idea_Ed_Environment_For_EC_Organization ON ceds6sc_rdx.ref_idea_educational_environment_ec IS '';

ALTER TABLE ceds6sc_rdx.ref_idea_environment_el ADD CONSTRAINT fk_ref_idea_environment_el_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_IDEA_Environment_EL_Organization ON ceds6sc_rdx.ref_idea_environment_el IS '';

ALTER TABLE ceds6sc_rdx.ref_idea_interim_removal ADD CONSTRAINT fk_ref_idea_interim_removal_id_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Idea_Interim_Removal_Id_Organization ON ceds6sc_rdx.ref_idea_interim_removal IS '';

ALTER TABLE ceds6sc_rdx.ref_idea_part_c_eligibility_category ADD CONSTRAINT fk_ref_idea_part_c_eligibility_category_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_IDEA_Part_C_Eligibility_Category_Organization ON ceds6sc_rdx.ref_idea_part_c_eligibility_category IS '';

ALTER TABLE ceds6sc_rdx.ref_iso6393_language ADD CONSTRAINT fk_ref_iso6393_language_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_ISO6393_Language_Organization ON ceds6sc_rdx.ref_iso6393_language IS '';

ALTER TABLE ceds6sc_rdx.ref_immunization_type ADD CONSTRAINT fk_ref_immunization_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Immunization_Organization ON ceds6sc_rdx.ref_immunization_type IS '';

ALTER TABLE ceds6sc_rdx.ref_incident_behavior_secondary ADD CONSTRAINT fk_ref_incident_behavior_secondary_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Incident_Behavior_Secondary_Organization ON ceds6sc_rdx.ref_incident_behavior_secondary IS '';

ALTER TABLE ceds6sc_rdx.ref_incident_location ADD CONSTRAINT fk_ref_incident_location_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Incident_Location_Organization ON ceds6sc_rdx.ref_incident_location IS '';

ALTER TABLE ceds6sc_rdx.ref_incident_perpetrator_injury_type ADD CONSTRAINT fk_ref_incident_perpetrator_injury_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Incident_Perpetrator_Injury_Type_Organization ON ceds6sc_rdx.ref_incident_perpetrator_injury_type IS '';

ALTER TABLE ceds6sc_rdx.ref_incident_person_type ADD CONSTRAINT fk_ref_incident_person_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Incident_Person_Type_Organization ON ceds6sc_rdx.ref_incident_person_type IS '';

ALTER TABLE ceds6sc_rdx.ref_incident_time_description_code ADD CONSTRAINT fk_ref_incident_time_desc_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Incident_Time_Desc_Code_Organization ON ceds6sc_rdx.ref_incident_time_description_code IS '';

ALTER TABLE ceds6sc_rdx.ref_increased_learning_time_type ADD CONSTRAINT fk_ref_increased_learning_time_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Increased_Learning_Time_Type_Organization ON ceds6sc_rdx.ref_increased_learning_time_type IS '';

ALTER TABLE ceds6sc_rdx.ref_individualized_program_location ADD CONSTRAINT fk_ref_individualized_program_location_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Individualized_Program_Location_Org ON ceds6sc_rdx.ref_individualized_program_location IS '';

ALTER TABLE ceds6sc_rdx.ref_individualized_program_transition_type ADD CONSTRAINT fk_ref_individualized_program_transition_type_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Individualized_Program_Transition_Type_Org ON ceds6sc_rdx.ref_individualized_program_transition_type IS '';

ALTER TABLE ceds6sc_rdx.ref_institution_telephone_type ADD CONSTRAINT fk_ref_institution_telephone_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Institution_Telephone_Org ON ceds6sc_rdx.ref_institution_telephone_type IS '';

ALTER TABLE ceds6sc_rdx.ref_instruction_location_type ADD CONSTRAINT fk_ref_instruction_location_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Instruction_Location_Type_Organization ON ceds6sc_rdx.ref_instruction_location_type IS '';

ALTER TABLE ceds6sc_rdx.ref_instructional_staff_contract_length ADD CONSTRAINT fk_ref_instruct_staff_contract_length_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Instruct_Staff_Contract_Length_Organization ON ceds6sc_rdx.ref_instructional_staff_contract_length IS '';

ALTER TABLE ceds6sc_rdx.ref_integrated_technology_status ADD CONSTRAINT fk_ref_integrated_technology_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Integrated_Technology_Status_Organization ON ceds6sc_rdx.ref_integrated_technology_status IS '';

ALTER TABLE ceds6sc_rdx.ref_ipeds_occupational_category ADD CONSTRAINT fk_ref_ipeds_occupational_category_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Ipeds_Occupational_Category_Organization ON ceds6sc_rdx.ref_ipeds_occupational_category IS '';

ALTER TABLE ceds6sc_rdx.ref_item_response_theory_kappa_algorithm ADD CONSTRAINT fk_ref_irt_kappa_algorithm_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_IRt_Kappa_Algorithm_Organization ON ceds6sc_rdx.ref_item_response_theory_kappa_algorithm IS '';

ALTER TABLE ceds6sc_rdx.ref_k12_lea_title_i_support_service ADD CONSTRAINT fk_ref_k12_lea_title_i_support_service_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_K12_LEA_Title_I_Support_Service_Organization ON ceds6sc_rdx.ref_k12_lea_title_i_support_service IS '';

ALTER TABLE ceds6sc_rdx.ref_k12_staff_classification ADD CONSTRAINT fk_ref_education_staff_classification_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Education_Staff_Classification_Organization ON ceds6sc_rdx.ref_k12_staff_classification IS '';

ALTER TABLE ceds6sc_rdx.ref_language_use_type ADD CONSTRAINT fk_ref_language_use_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Language_Use_Type_Organization ON ceds6sc_rdx.ref_language_use_type IS '';

ALTER TABLE ceds6sc_rdx.ref_lea_improvement_status ADD CONSTRAINT fk_ref_lea_improvement_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_LEA_Improvement_Status_Organization ON ceds6sc_rdx.ref_lea_improvement_status IS '';

ALTER TABLE ceds6sc_rdx.ref_learner_action_type ADD CONSTRAINT fk_ref_learner_action_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Learner_Action_Type_Organization ON ceds6sc_rdx.ref_learner_action_type IS '';

ALTER TABLE ceds6sc_rdx.ref_learner_activity_type ADD CONSTRAINT fk_ref_learner_activity_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Learner_Activity_Type_Organization ON ceds6sc_rdx.ref_learner_activity_type IS '';

ALTER TABLE ceds6sc_rdx.ref_learning_resource_access_hazard_type ADD CONSTRAINT fk_ref_learning_resource_access_hazard_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Learning_Resource_Access_Hazard_Type_Organization ON ceds6sc_rdx.ref_learning_resource_access_hazard_type IS '';

ALTER TABLE ceds6sc_rdx.ref_learning_resource_access_rights_url ADD CONSTRAINT fk_ref_learning_resource_access_rights_url_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Learning_Resource_Access_Rights_Url_Organization ON ceds6sc_rdx.ref_learning_resource_access_rights_url IS '';

ALTER TABLE ceds6sc_rdx.ref_learning_resource_book_format_type ADD CONSTRAINT fk_ref_learning_resource_book_format_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Learning_Resource_Book_Format_Type_Organization ON ceds6sc_rdx.ref_learning_resource_book_format_type IS '';

ALTER TABLE ceds6sc_rdx.ref_learning_resource_control_flexibility_type ADD CONSTRAINT fk_ref_learning_resource_control_flexibility_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Learning_Resource_Control_Flexibility_Type_Organization ON ceds6sc_rdx.ref_learning_resource_control_flexibility_type IS '';

ALTER TABLE ceds6sc_rdx.ref_learning_resource_digital_media_type ADD CONSTRAINT fk_ref_learning_resource_digital_media_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Learning_Resource_Digital_Media_Type_Organization ON ceds6sc_rdx.ref_learning_resource_digital_media_type IS '';

ALTER TABLE ceds6sc_rdx.ref_learning_resource_intended_end_user_role ADD CONSTRAINT fk_ref_lr_intended_end_user_role_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_LR_Intended_End_User_Role_Organization ON ceds6sc_rdx.ref_learning_resource_intended_end_user_role IS '';

ALTER TABLE ceds6sc_rdx.ref_learning_resource_interactivity_type ADD CONSTRAINT fk_ref_lr_interactivity_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_LR_Interactivity_Type_Organization ON ceds6sc_rdx.ref_learning_resource_interactivity_type IS '';

ALTER TABLE ceds6sc_rdx.ref_learning_resource_physical_media_type ADD CONSTRAINT fk_ref_learning_resource_physical_media_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Learning_Resource_Physical_Media_Type_Organization ON ceds6sc_rdx.ref_learning_resource_physical_media_type IS '';

ALTER TABLE ceds6sc_rdx.ref_learning_standard_document_publication_status ADD CONSTRAINT fk_ref_ls_document_publication_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_LS_Document_Publication_Status_Organization ON ceds6sc_rdx.ref_learning_standard_document_publication_status IS '';

ALTER TABLE ceds6sc_rdx.ref_learning_standard_item_node_accessibility_profile ADD CONSTRAINT fk_ref_learning_standard_item_node_accessibility_profile_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Learning_Standard_Item_Node_Accessibility_Profile_Organization ON ceds6sc_rdx.ref_learning_standard_item_node_accessibility_profile IS '';

ALTER TABLE ceds6sc_rdx.ref_leave_event_type ADD CONSTRAINT fk_ref_leave_event_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Leave_Event_Type_Organization ON ceds6sc_rdx.ref_leave_event_type IS '';

ALTER TABLE ceds6sc_rdx.ref_license_exempt ADD CONSTRAINT fk_ref_license_exempt_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_License_Exempt_Organization ON ceds6sc_rdx.ref_license_exempt IS '';

ALTER TABLE ceds6sc_rdx.ref_magnet_special_program ADD CONSTRAINT fk_ref_magnet_special_program_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Magnet_Special_Program_Organization ON ceds6sc_rdx.ref_magnet_special_program IS '';

ALTER TABLE ceds6sc_rdx.ref_mep_enrollment_type ADD CONSTRAINT fk_ref_mep_enrollment_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_MEP_Enrollment_Type_Organization ON ceds6sc_rdx.ref_mep_enrollment_type IS '';

ALTER TABLE ceds6sc_rdx.ref_mep_project_type ADD CONSTRAINT fk_ref_mep_project_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Mep_Project_Type_Organization ON ceds6sc_rdx.ref_mep_project_type IS '';

ALTER TABLE ceds6sc_rdx.ref_mep_session_type ADD CONSTRAINT fk_ref_mep_session_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_MEP_Session_Type_Organization ON ceds6sc_rdx.ref_mep_session_type IS '';

ALTER TABLE ceds6sc_rdx.ref_method_of_service_delivery ADD CONSTRAINT fk_ref_method_of_service_delivery_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Method_Of_Service_Delivery_Organization ON ceds6sc_rdx.ref_method_of_service_delivery IS '';

ALTER TABLE ceds6sc_rdx.ref_military_branch ADD CONSTRAINT fk_ref_military_branch_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Military_Branch_Organization ON ceds6sc_rdx.ref_military_branch IS '';

ALTER TABLE ceds6sc_rdx.ref_military_veteran_student_indicator ADD CONSTRAINT fk_ref_military_veteran_student_indicator_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Military_Veteran_Student_Indicator_Organization ON ceds6sc_rdx.ref_military_veteran_student_indicator IS '';

ALTER TABLE ceds6sc_rdx.ref_nces_college_course_map_code ADD CONSTRAINT fk_ref_nces_college_course_map_code_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_NCES_College_Course_Map_Code_Organization ON ceds6sc_rdx.ref_nces_college_course_map_code IS '';

ALTER TABLE ceds6sc_rdx.ref_naep_math_complexity_level ADD CONSTRAINT fk_ref_naepmath_complexity_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_NAEPMath_Complexity_Level_Organization ON ceds6sc_rdx.ref_naep_math_complexity_level IS '';

ALTER TABLE ceds6sc_rdx.ref_neglected_program_type ADD CONSTRAINT fk_ref_neglected_program_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Neglected_Program_Type_Organization ON ceds6sc_rdx.ref_neglected_program_type IS '';

ALTER TABLE ceds6sc_rdx.ref_non_traditional_gender_status ADD CONSTRAINT fk_ref_non_traditional_gender_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Non_Traditional_Gender_Status_Organization ON ceds6sc_rdx.ref_non_traditional_gender_status IS '';

ALTER TABLE ceds6sc_rdx.ref_operational_status_type ADD CONSTRAINT fk_ref_operational_status_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Operational_Status_Type_Organization ON ceds6sc_rdx.ref_operational_status_type IS '';

ALTER TABLE ceds6sc_rdx.ref_organization_identification_system ADD CONSTRAINT fk_ref_identifier_org_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Identifier_Org_Org ON ceds6sc_rdx.ref_organization_identification_system IS '';

ALTER TABLE ceds6sc_rdx.ref_organization_identification_system ADD CONSTRAINT fk_ref_org_identification_system_ref_organization_identifier_type FOREIGN KEY ( ref_organization_identifier_type_id ) REFERENCES ceds6sc_rdx.ref_organization_identifier_type( ref_organization_identifier_type_id );

COMMENT ON CONSTRAINT FK_Ref_org_identification_system_ref_organization_identifier_type ON ceds6sc_rdx.ref_organization_identification_system IS '';

ALTER TABLE ceds6sc_rdx.ref_organization_indicator ADD CONSTRAINT fk_ref_organization_indicator_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Organization_Indicator_Organization ON ceds6sc_rdx.ref_organization_indicator IS '';

ALTER TABLE ceds6sc_rdx.ref_organization_indicator ADD CONSTRAINT fk_ref_organization_indicator_ref_organization_type FOREIGN KEY ( ref_organization_type_id ) REFERENCES ceds6sc_rdx.ref_organization_type( ref_organization_type_id );

COMMENT ON CONSTRAINT FK_Ref_Organization_Indicator_Ref_Organization_Type ON ceds6sc_rdx.ref_organization_indicator IS '';

ALTER TABLE ceds6sc_rdx.ref_organization_monitoring_notifications ADD CONSTRAINT fk_ref_organization_monitoring_notifications_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Organization_Monitoring_Notifications_Organization ON ceds6sc_rdx.ref_organization_monitoring_notifications IS '';

ALTER TABLE ceds6sc_rdx.ref_organization_type ADD CONSTRAINT fk_ref_organization_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Organization_Type_Organization ON ceds6sc_rdx.ref_organization_type IS '';

ALTER TABLE ceds6sc_rdx.ref_organization_type ADD CONSTRAINT fk_ref_organization_type_ref_organization_element_type FOREIGN KEY ( ref_organization_element_type_id ) REFERENCES ceds6sc_rdx.ref_organization_element_type( ref_organization_element_type_id );

COMMENT ON CONSTRAINT FK_Ref_Organization_Type_Ref_Organization_Element_Type ON ceds6sc_rdx.ref_organization_type IS '';

ALTER TABLE ceds6sc_rdx.ref_outcome_time_point ADD CONSTRAINT fk_ref_outcome_time_point_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Outcome_Time_Point_Organization ON ceds6sc_rdx.ref_outcome_time_point IS '';

ALTER TABLE ceds6sc_rdx.ref_pd_activity_credit_type ADD CONSTRAINT fk_ref_pd_activity_credit_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_PD_Activity_Credit_Type_Organization ON ceds6sc_rdx.ref_pd_activity_credit_type IS '';

ALTER TABLE ceds6sc_rdx.ref_pd_activity_level ADD CONSTRAINT fk_ref_pd_activity_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_PD_Activity_Level_Organization ON ceds6sc_rdx.ref_pd_activity_level IS '';

ALTER TABLE ceds6sc_rdx.ref_pd_activity_type ADD CONSTRAINT fk_ref_pd_activity_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_PD_Activity_Type_Organization ON ceds6sc_rdx.ref_pd_activity_type IS '';

ALTER TABLE ceds6sc_rdx.ref_pd_delivery_method ADD CONSTRAINT fk_ref_pd_delivery_method_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_PD_Delivery_Method_Organization ON ceds6sc_rdx.ref_pd_delivery_method IS '';

ALTER TABLE ceds6sc_rdx.ref_pd_session_status ADD CONSTRAINT fk_ref_pd_session_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_PD_Session_Status_Organization ON ceds6sc_rdx.ref_pd_session_status IS '';

ALTER TABLE ceds6sc_rdx.ref_ps_program_level ADD CONSTRAINT fk_ref_ps_program_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_PS_Program_Level_Organization ON ceds6sc_rdx.ref_ps_program_level IS '';

ALTER TABLE ceds6sc_rdx.ref_participation_status_ayp ADD CONSTRAINT fk_ref_participation_status_ayp_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Participation_Status_AYP_Organization ON ceds6sc_rdx.ref_participation_status_ayp IS '';

ALTER TABLE ceds6sc_rdx.ref_person_identification_system ADD CONSTRAINT fk_ref_identifier_person_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Identifier_Person_Organization ON ceds6sc_rdx.ref_person_identification_system IS '';

ALTER TABLE ceds6sc_rdx.ref_person_identification_system ADD CONSTRAINT fk_ref_person_identification_system_ref_person_identifier_type FOREIGN KEY ( ref_person_identifier_type_id ) REFERENCES ceds6sc_rdx.ref_person_identifier_type( ref_person_identifier_type_id );

COMMENT ON CONSTRAINT FK_Ref_Person_Identification_system_ref_person_identifier_Type ON ceds6sc_rdx.ref_person_identification_system IS '';

ALTER TABLE ceds6sc_rdx.ref_person_location_type ADD CONSTRAINT fk_ref_person_location_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Person_Location_Type_Organization ON ceds6sc_rdx.ref_person_location_type IS '';

ALTER TABLE ceds6sc_rdx.ref_person_location_type ADD CONSTRAINT fk_ref_person_location_type_ref_address_type FOREIGN KEY ( ref_address_type_id ) REFERENCES ceds6sc_rdx.ref_address_type( ref_address_type_id );

COMMENT ON CONSTRAINT FK_Ref_Person_Location_Type_Ref_Address_Type ON ceds6sc_rdx.ref_person_location_type IS '';

ALTER TABLE ceds6sc_rdx.ref_person_status_type ADD CONSTRAINT fk_ref_person_status_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Person_Status_Type_Organization ON ceds6sc_rdx.ref_person_status_type IS '';

ALTER TABLE ceds6sc_rdx.ref_personal_information_verification ADD CONSTRAINT fk_ref_personal_info_verification_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Personal_Info_Verification_Organization ON ceds6sc_rdx.ref_personal_information_verification IS '';

ALTER TABLE ceds6sc_rdx.ref_pre_and_post_test_indicator ADD CONSTRAINT fk_ref_pre_and_post_test_indicator_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Pre_And_Post_Test_Indicator_Organization ON ceds6sc_rdx.ref_pre_and_post_test_indicator IS '';

ALTER TABLE ceds6sc_rdx.ref_pre_kindergarten__eligibility ADD CONSTRAINT fk_ref_pre_kindergarten__eligibility_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Pre_Kindergarten__Eligibility_Organization ON ceds6sc_rdx.ref_pre_kindergarten__eligibility IS '';

ALTER TABLE ceds6sc_rdx.ref_present_attendance_category ADD CONSTRAINT fk_ref_present_attendance_category_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Present_Attendance_Category_Organization ON ceds6sc_rdx.ref_present_attendance_category IS '';

ALTER TABLE ceds6sc_rdx.ref_professional_education_job_classification ADD CONSTRAINT fk_ref_professional_education_job_classification_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Professional_Education_Job_Classification_Organization ON ceds6sc_rdx.ref_professional_education_job_classification IS '';

ALTER TABLE ceds6sc_rdx.ref_proficiency_status ADD CONSTRAINT fk_ref_proficiency_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Proficiency_Status_Organization ON ceds6sc_rdx.ref_proficiency_status IS '';

ALTER TABLE ceds6sc_rdx.ref_program_day_length ADD CONSTRAINT fk_ref_program_day_length_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Program_Day_Length_Organization ON ceds6sc_rdx.ref_program_day_length IS '';

ALTER TABLE ceds6sc_rdx.ref_program_gifted_eligibility ADD CONSTRAINT fk_ref_program_gifted_eligibility_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Program_Gifted_Eligibility_Organization ON ceds6sc_rdx.ref_program_gifted_eligibility IS '';

ALTER TABLE ceds6sc_rdx.ref_program_sponsor_type ADD CONSTRAINT fk_ref_program_sponsor_type_organization FOREIGN KEY ( ref_jurisdiction ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Program_Sponsor_Type_Organization ON ceds6sc_rdx.ref_program_sponsor_type IS '';

ALTER TABLE ceds6sc_rdx.ref_progress_level ADD CONSTRAINT fk_ref_progress_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Progress_Level_Organization ON ceds6sc_rdx.ref_progress_level IS '';

ALTER TABLE ceds6sc_rdx.ref_proof_of_residency_type ADD CONSTRAINT fk_ref_proof_of_residency_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Proof_Of_Residency_Type_Organization ON ceds6sc_rdx.ref_proof_of_residency_type IS '';

ALTER TABLE ceds6sc_rdx.ref_ps_enrollment_award_type ADD CONSTRAINT fk_ref_ps_enrollment_award_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Ps_Enrollment_Award_Type_Organization ON ceds6sc_rdx.ref_ps_enrollment_award_type IS '';

ALTER TABLE ceds6sc_rdx.ref_ps_enrollment_type ADD CONSTRAINT fk_ref_ps_enrollment_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Ps_Enrollment_Type_Organization ON ceds6sc_rdx.ref_ps_enrollment_type IS '';

ALTER TABLE ceds6sc_rdx.ref_ps_student_level ADD CONSTRAINT fk_ref_ps_student_level_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Ps_Student_Level_Organization ON ceds6sc_rdx.ref_ps_student_level IS '';

ALTER TABLE ceds6sc_rdx.ref_public_school_residence ADD CONSTRAINT fk_ref_public_school_residence_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Public_School_Residence_Organization ON ceds6sc_rdx.ref_public_school_residence IS '';

ALTER TABLE ceds6sc_rdx.ref_qris_participation ADD CONSTRAINT fk_ref_qris_participation_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_QRIS_Participation_Organization ON ceds6sc_rdx.ref_qris_participation IS '';

ALTER TABLE ceds6sc_rdx.ref_reap_alternative_funding_status ADD CONSTRAINT fk_ref_reap_alternative_funding_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_REAP_Alternative_Funding_Status_Organization ON ceds6sc_rdx.ref_reap_alternative_funding_status IS '';

ALTER TABLE ceds6sc_rdx.ref_reconstituted_status ADD CONSTRAINT fk_ref_reconstituted_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Reconstituted_Status_Organization ON ceds6sc_rdx.ref_reconstituted_status IS '';

ALTER TABLE ceds6sc_rdx.ref_reimbursement_type ADD CONSTRAINT fk_ref_reimbursement_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Reimbursement_Type_Organization ON ceds6sc_rdx.ref_reimbursement_type IS '';

ALTER TABLE ceds6sc_rdx.ref_rlis_program_use ADD CONSTRAINT fk_ref_rlis_program_use_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_RLIS_Program_Use_Organization ON ceds6sc_rdx.ref_rlis_program_use IS '';

ALTER TABLE ceds6sc_rdx.ref_role_status_type ADD CONSTRAINT fk_ref_role_status_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Role_Status_Type_Organization ON ceds6sc_rdx.ref_role_status_type IS '';

ALTER TABLE ceds6sc_rdx.ref_sced_course_subject_area ADD CONSTRAINT fk_ref_sced_course_subject_area_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_SCED_Course_Subject_Area_Organization ON ceds6sc_rdx.ref_sced_course_subject_area IS '';

ALTER TABLE ceds6sc_rdx.ref_school_food_service_program ADD CONSTRAINT fk_ref_school_food_service_program_organization FOREIGN KEY ( ref_jurisdiction ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_School_Food_Service_Program_Organization ON ceds6sc_rdx.ref_school_food_service_program IS '';

ALTER TABLE ceds6sc_rdx.ref_school_improvement_status ADD CONSTRAINT fk_ref_school_improvement_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_School_Improvement_Status_Organization ON ceds6sc_rdx.ref_school_improvement_status IS '';

ALTER TABLE ceds6sc_rdx.ref_school_type ADD CONSTRAINT fk_ref_school_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_School_Type_Organization ON ceds6sc_rdx.ref_school_type IS '';

ALTER TABLE ceds6sc_rdx.ref_service_frequency ADD CONSTRAINT fk_ref_service_frequency_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Service_Frequency_Organization ON ceds6sc_rdx.ref_service_frequency IS '';

ALTER TABLE ceds6sc_rdx.ref_services ADD CONSTRAINT fk_ref_services_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Services_Organization ON ceds6sc_rdx.ref_services IS '';

ALTER TABLE ceds6sc_rdx.ref_sex ADD CONSTRAINT fk_ref_sex_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Sex_Organization ON ceds6sc_rdx.ref_sex IS '';

ALTER TABLE ceds6sc_rdx.ref_single_sex_class_status ADD CONSTRAINT fk_ref_single_sex_class_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Single_Sex_Class_Status_Organization ON ceds6sc_rdx.ref_single_sex_class_status IS '';

ALTER TABLE ceds6sc_rdx.ref_special_education_age_group_taught ADD CONSTRAINT fk_ref_special_education_age_group_taught_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Special_Education_Age_Group_Taught_Organization ON ceds6sc_rdx.ref_special_education_age_group_taught IS '';

ALTER TABLE ceds6sc_rdx.ref_special_education_staff_category ADD CONSTRAINT fk_ref_special_education_staff_category_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Special_Education_Staff_Category_Organization ON ceds6sc_rdx.ref_special_education_staff_category IS '';

ALTER TABLE ceds6sc_rdx.ref_standardized_admission_test ADD CONSTRAINT fk_ref_standardized_admission_test_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Standardized_Admission_Test_Organization ON ceds6sc_rdx.ref_standardized_admission_test IS '';

ALTER TABLE ceds6sc_rdx.ref_student_support_service_type ADD CONSTRAINT fk_ref_student_support_service_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Student_Support_Service_Type_Organization ON ceds6sc_rdx.ref_student_support_service_type IS '';

ALTER TABLE ceds6sc_rdx.ref_teacher_education_credential_exam ADD CONSTRAINT fk_ref_teacher_edu_credential_exam_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Teacher_Edu_Credential_Exam_Organization ON ceds6sc_rdx.ref_teacher_education_credential_exam IS '';

ALTER TABLE ceds6sc_rdx.ref_teacher_education_test_company ADD CONSTRAINT fk_ref_teacher_edu_test_company_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Teacher_Edu_Test_Company_Organization ON ceds6sc_rdx.ref_teacher_education_test_company IS '';

ALTER TABLE ceds6sc_rdx.ref_teacher_prep_enrollment_status ADD CONSTRAINT fk_ref_teacher_prep_enroll_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Teacher_Prep_Enroll_Status_Organization ON ceds6sc_rdx.ref_teacher_prep_enrollment_status IS '';

ALTER TABLE ceds6sc_rdx.ref_teaching_credential_basis ADD CONSTRAINT fk_ref_teaching_credential_basis_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Teaching_Credential_Basis_Organization ON ceds6sc_rdx.ref_teaching_credential_basis IS '';

ALTER TABLE ceds6sc_rdx.ref_technical_assistance_delivery_type ADD CONSTRAINT fk_ref_technical_assistance_delivery_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Technical_Assistance_Delivery_Type_Organization ON ceds6sc_rdx.ref_technical_assistance_delivery_type IS '';

ALTER TABLE ceds6sc_rdx.ref_technology_literacy_status ADD CONSTRAINT fk_ref_technology_literacy_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Technology_Literacy_Status_Organization ON ceds6sc_rdx.ref_technology_literacy_status IS '';

ALTER TABLE ceds6sc_rdx.ref_tenure_system ADD CONSTRAINT fk_ref_tenure_system_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Tenure_System_Organization ON ceds6sc_rdx.ref_tenure_system IS '';

ALTER TABLE ceds6sc_rdx.ref_time_for_completion_units ADD CONSTRAINT fk_ref_time_for_completion_units_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Time_For_Completion_Units_Organization ON ceds6sc_rdx.ref_time_for_completion_units IS '';

ALTER TABLE ceds6sc_rdx.ref_title_iii_language_instruction_program_type ADD CONSTRAINT fk_ref_language_instruction_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Language_Instruction_Organization ON ceds6sc_rdx.ref_title_iii_language_instruction_program_type IS '';

ALTER TABLE ceds6sc_rdx.ref_title_i_indicator ADD CONSTRAINT fk_ref_title_i_indicator_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Title_I_Indicator_Organization ON ceds6sc_rdx.ref_title_i_indicator IS '';

ALTER TABLE ceds6sc_rdx.ref_title_i_program_staff_category ADD CONSTRAINT fk_ref_title_i_program_staff_category_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Title_I_Program_Staff_Category_Organization ON ceds6sc_rdx.ref_title_i_program_staff_category IS '';

ALTER TABLE ceds6sc_rdx.ref_title_i_school_status ADD CONSTRAINT fk_ref_title_1_school_status_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Title_1_School_Status_Organization ON ceds6sc_rdx.ref_title_i_school_status IS '';

ALTER TABLE ceds6sc_rdx.ref_transfer_ready ADD CONSTRAINT fk_ref_transfer_ready_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Transfer_Ready_Organization ON ceds6sc_rdx.ref_transfer_ready IS '';

ALTER TABLE ceds6sc_rdx.ref_trimester_when_prenatal_care_began ADD CONSTRAINT fk_ref_trimester_when_prenatal_care_began_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Trimester_When_Prenatal_Care_Began_Organization ON ceds6sc_rdx.ref_trimester_when_prenatal_care_began IS '';

ALTER TABLE ceds6sc_rdx.ref_tuition_unit ADD CONSTRAINT fk_ref_tuition_unit_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Tuition_Unit_Organization ON ceds6sc_rdx.ref_tuition_unit IS '';

ALTER TABLE ceds6sc_rdx.ref_visa_type ADD CONSTRAINT fk_ref_visa_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Visa_Type_Organization ON ceds6sc_rdx.ref_visa_type IS '';

ALTER TABLE ceds6sc_rdx.ref_wage_collection_method ADD CONSTRAINT fk_ref_wage_collection_method_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Wage_Collection_Method_Organization ON ceds6sc_rdx.ref_wage_collection_method IS '';

ALTER TABLE ceds6sc_rdx.ref_weapon_type ADD CONSTRAINT fk_ref_weapon_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Weapon_Type_Organization ON ceds6sc_rdx.ref_weapon_type IS '';

ALTER TABLE ceds6sc_rdx.ref_workbased_learning_opportunity_type ADD CONSTRAINT fk_ref_workbased_learning_opportunity_type_organization FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Workbased_Learning_Opportunity_Type_Organization ON ceds6sc_rdx.ref_workbased_learning_opportunity_type IS '';

ALTER TABLE ceds6sc_rdx.role ADD CONSTRAINT fk_ref_role_org FOREIGN KEY ( ref_jurisdiction_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT FK_Ref_Role_Org ON ceds6sc_rdx.role IS '';

ALTER TABLE ceds6sc_rdx.role_attendance_event ADD CONSTRAINT fk_role_attendance_event_ref_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Role_Attendance_Event_Ref_Organization_Person_Role ON ceds6sc_rdx.role_attendance_event IS '';

ALTER TABLE ceds6sc_rdx.role_attendance_event ADD CONSTRAINT fk_role_attendance_event_ref_absent_attendance_category FOREIGN KEY ( ref_absent_attendance_category_id ) REFERENCES ceds6sc_rdx.ref_absent_attendance_category( ref_absent_attendance_category_id );

COMMENT ON CONSTRAINT FK_Role_Attendance_Event_Ref_Absent_Attendance_Category ON ceds6sc_rdx.role_attendance_event IS '';

ALTER TABLE ceds6sc_rdx.role_attendance_event ADD CONSTRAINT fk_role_attendance_event_ref_attendance_event_type FOREIGN KEY ( ref_attendance_event_type_id ) REFERENCES ceds6sc_rdx.ref_attendance_event_type( ref_attendance_event_type_id );

COMMENT ON CONSTRAINT FK_Role_Attendance_Event_Ref_Attendance_Event_Type ON ceds6sc_rdx.role_attendance_event IS '';

ALTER TABLE ceds6sc_rdx.role_attendance_event ADD CONSTRAINT fk_role_attendance_event_ref_attendance_status FOREIGN KEY ( ref_attendance_status_id ) REFERENCES ceds6sc_rdx.ref_attendance_status( ref_attendance_status_id );

COMMENT ON CONSTRAINT FK_Role_Attendance_Event_Ref_Attendance_Status ON ceds6sc_rdx.role_attendance_event IS '';

ALTER TABLE ceds6sc_rdx.role_attendance_event ADD CONSTRAINT fk_role_attendance_event_ref_leave_event_type FOREIGN KEY ( ref_leave_event_type_id ) REFERENCES ceds6sc_rdx.ref_leave_event_type( ref_leave_event_type_id );

COMMENT ON CONSTRAINT FK_Role_Attendance_Event_Ref_Leave_Event_Type ON ceds6sc_rdx.role_attendance_event IS '';

ALTER TABLE ceds6sc_rdx.role_attendance_event ADD CONSTRAINT fk_role_attendance_event_ref_present_attendance_category FOREIGN KEY ( ref_present_attendance_category_id ) REFERENCES ceds6sc_rdx.ref_present_attendance_category( ref_present_attendance_category_id );

COMMENT ON CONSTRAINT FK_Role_Attendance_Event_Ref_Present_Attendance_Category ON ceds6sc_rdx.role_attendance_event IS '';

ALTER TABLE ceds6sc_rdx.staff_credential ADD CONSTRAINT fk_staff_credential_person_credential FOREIGN KEY ( person_credential_id ) REFERENCES ceds6sc_rdx.person_credential( person_credential_id );

COMMENT ON CONSTRAINT FK_Staff_Credential_Person_Credential ON ceds6sc_rdx.staff_credential IS '';

ALTER TABLE ceds6sc_rdx.staff_credential ADD CONSTRAINT fk_staff_credential_ref_paraprofessional_qualification FOREIGN KEY ( ref_paraprofessional_qualification_id ) REFERENCES ceds6sc_rdx.ref_paraprofessional_qualification( ref_paraprofessional_qualification_id );

COMMENT ON CONSTRAINT FK_Staff_Credential_Ref_Paraprofessional_Qualification ON ceds6sc_rdx.staff_credential IS '';

ALTER TABLE ceds6sc_rdx.staff_credential ADD CONSTRAINT fk_staff_credential_ref_program_sponsor_type FOREIGN KEY ( ref_program_sponsor_type_id ) REFERENCES ceds6sc_rdx.ref_program_sponsor_type( ref_program_sponsor_type_id );

COMMENT ON CONSTRAINT FK_Staff_Credential_Ref_Program_Sponsor_Type ON ceds6sc_rdx.staff_credential IS '';

ALTER TABLE ceds6sc_rdx.staff_credential ADD CONSTRAINT fk_staff_credential_ref_teaching_credential_basis FOREIGN KEY ( ref_teaching_credential_basis_id ) REFERENCES ceds6sc_rdx.ref_teaching_credential_basis( ref_teaching_credential_basis_id );

COMMENT ON CONSTRAINT FK_Staff_Credential_Ref_Teaching_Credential_Basis ON ceds6sc_rdx.staff_credential IS '';

ALTER TABLE ceds6sc_rdx.staff_credential ADD CONSTRAINT fk_staff_credential_ref_teaching_credential_type FOREIGN KEY ( ref_teaching_credential_type_id ) REFERENCES ceds6sc_rdx.ref_teaching_credential_type( ref_teaching_credential_type_id );

COMMENT ON CONSTRAINT FK_Staff_Credential_Ref_Teaching_Credential_Type ON ceds6sc_rdx.staff_credential IS '';

ALTER TABLE ceds6sc_rdx.staff_evaluation ADD CONSTRAINT fk_staff_evaluation_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Staff_Evaluation_Organization_Person_Role ON ceds6sc_rdx.staff_evaluation IS '';

ALTER TABLE ceds6sc_rdx.staff_evaluation ADD CONSTRAINT fk_staff_evaluation_ref_staff_performance_level FOREIGN KEY ( ref_staff_performance_level_id ) REFERENCES ceds6sc_rdx.ref_staff_performance_level( ref_staff_performance_level_id );

COMMENT ON CONSTRAINT FK_Staff_Evaluation_Ref_Staff_Performance_Level ON ceds6sc_rdx.staff_evaluation IS '';

ALTER TABLE ceds6sc_rdx.staff_professional_development_activity ADD CONSTRAINT fk_staff_pd_activity_org_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Staff_PD_Activity_Org_Person_Role ON ceds6sc_rdx.staff_professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.staff_professional_development_activity ADD CONSTRAINT fk_staff_pd_activity_pd_activity FOREIGN KEY ( professional_development_activity_id ) REFERENCES ceds6sc_rdx.professional_development_activity( professional_development_activity_id );

COMMENT ON CONSTRAINT FK_Staff_PD_Activity_PD_Activity ON ceds6sc_rdx.staff_professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.staff_professional_development_activity ADD CONSTRAINT fk_pd_activity_pd_requirement FOREIGN KEY ( professional_development_requirement_id ) REFERENCES ceds6sc_rdx.professional_development_requirement( professional_development_requirement_id );

COMMENT ON CONSTRAINT FK_PD_Activity_PD_Requirement ON ceds6sc_rdx.staff_professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.staff_professional_development_activity ADD CONSTRAINT fk_staff_pd_activity_pd_session FOREIGN KEY ( professional_development_session_id ) REFERENCES ceds6sc_rdx.professional_development_session( professional_development_session_id );

COMMENT ON CONSTRAINT FK_Staff_PD_Activity_PD_Session ON ceds6sc_rdx.staff_professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.staff_professional_development_activity ADD CONSTRAINT fk_pd_activity_ref_course_credit_unit FOREIGN KEY ( ref_course_credit_unit_id ) REFERENCES ceds6sc_rdx.ref_course_credit_unit( ref_course_credit_unit_id );

COMMENT ON CONSTRAINT FK_PD_Activity_Ref_Course_Credit_Unit ON ceds6sc_rdx.staff_professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.staff_professional_development_activity ADD CONSTRAINT fk_pd_activity_ref_prof_dev_financial_support FOREIGN KEY ( ref_professional_development_financial_support_id ) REFERENCES ceds6sc_rdx.ref_professional_development_financial_support( ref_professional_development_financial_support_id );

COMMENT ON CONSTRAINT FK_PD_Activity_Ref_Prof_Dev_Financial_Support ON ceds6sc_rdx.staff_professional_development_activity IS '';

ALTER TABLE ceds6sc_rdx.teacher_education_credential_exam ADD CONSTRAINT fk_teacher_edu_credential_exam_prgm_participation_teacher_prep FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.program_participation_teacher_prep( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Teacher_Edu_Credential_Exam_Prgm_Participation_Teacher_Prep ON ceds6sc_rdx.teacher_education_credential_exam IS '';

ALTER TABLE ceds6sc_rdx.teacher_education_credential_exam ADD CONSTRAINT fk_teacher_edu_credential_exam_ref_teacher_edu_credential_exam FOREIGN KEY ( ref_teacher_education_credential_exam_id ) REFERENCES ceds6sc_rdx.ref_teacher_education_credential_exam( ref_teacher_education_credential_exam_id );

COMMENT ON CONSTRAINT FK_Teacher_Edu_Credential_Exam_Ref_Teacher_Edu_Credential_Exam ON ceds6sc_rdx.teacher_education_credential_exam IS '';

ALTER TABLE ceds6sc_rdx.teacher_education_credential_exam ADD CONSTRAINT fk_teacher_edu_credential_exam_ref_teacher_edu_exam_score_type FOREIGN KEY ( ref_teacher_education_exam_score_type_id ) REFERENCES ceds6sc_rdx.ref_teacher_education_exam_score_type( ref_teacher_education_exam_score_type_id );

COMMENT ON CONSTRAINT FK_Teacher_Edu_Credential_Exam_Ref_Teacher_Edu_Exam_Score_Type ON ceds6sc_rdx.teacher_education_credential_exam IS '';

ALTER TABLE ceds6sc_rdx.teacher_education_credential_exam ADD CONSTRAINT fk_teacher_education_credential_exam_ref_teacher_education_test_compny FOREIGN KEY ( ref_teacher_education_test_company_id ) REFERENCES ceds6sc_rdx.ref_teacher_education_test_company( ref_teacher_education_test_company_id );

COMMENT ON CONSTRAINT FK_Teacher_Education_Credential_Exam_Ref_Teacher_Education_Test_Compny ON ceds6sc_rdx.teacher_education_credential_exam IS '';

ALTER TABLE ceds6sc_rdx.workforce_employment_quarterly_data ADD CONSTRAINT fk_workforce_employment_quarterly_data_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT FK_Workforce_Employment_Quarterly_Data_Organization_Person_Role ON ceds6sc_rdx.workforce_employment_quarterly_data IS '';

ALTER TABLE ceds6sc_rdx.achievement ADD CONSTRAINT fk_achievement_competency_set FOREIGN KEY ( competency_set_id ) REFERENCES ceds6sc_rdx.competency_set( competency_set_id );

COMMENT ON CONSTRAINT fk_achievement_competency_set ON ceds6sc_rdx.achievement IS '';

ALTER TABLE ceds6sc_rdx.achievement ADD CONSTRAINT fk_achievement_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT fk_achievement_person ON ceds6sc_rdx.achievement IS '';

ALTER TABLE ceds6sc_rdx.activity ADD CONSTRAINT fk_activity_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT fk_activity_organization ON ceds6sc_rdx.activity IS '';

ALTER TABLE ceds6sc_rdx.ae_course ADD CONSTRAINT fk_ae_course_ref_career_cluster FOREIGN KEY ( ref_career_cluster_id ) REFERENCES ceds6sc_rdx.ref_career_cluster( ref_career_cluster_id );

COMMENT ON CONSTRAINT fk_ae_course_ref_career_cluster ON ceds6sc_rdx.ae_course IS '';

ALTER TABLE ceds6sc_rdx.ae_staff ADD CONSTRAINT fk_ae_staff_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_ae_staff_organization_person_role ON ceds6sc_rdx.ae_staff IS '';

ALTER TABLE ceds6sc_rdx.ae_staff ADD CONSTRAINT fk_ae_staff_ref_ae_certification_type FOREIGN KEY ( ref_ae_certification_type_id ) REFERENCES ceds6sc_rdx.ref_ae_certification_type( ref_ae_certification_type_id );

COMMENT ON CONSTRAINT fk_ae_staff_ref_ae_certification_type ON ceds6sc_rdx.ae_staff IS '';

ALTER TABLE ceds6sc_rdx.ae_staff ADD CONSTRAINT fk_ae_staff_ref_ae_staff_classification FOREIGN KEY ( ref_ae_staff_classification_id ) REFERENCES ceds6sc_rdx.ref_ae_staff_classification( ref_ae_staff_classification_id );

COMMENT ON CONSTRAINT fk_ae_staff_ref_ae_staff_classification ON ceds6sc_rdx.ae_staff IS '';

ALTER TABLE ceds6sc_rdx.ae_staff ADD CONSTRAINT fk_ae_staff_ref_ae_staff_employment_status FOREIGN KEY ( ref_ae_staff_employment_status_id ) REFERENCES ceds6sc_rdx.ref_ae_staff_employment_status( ref_ae_staff_employment_status_id );

COMMENT ON CONSTRAINT fk_ae_staff_ref_ae_staff_employment_status ON ceds6sc_rdx.ae_staff IS '';

ALTER TABLE ceds6sc_rdx.ae_student_employment ADD CONSTRAINT fk_ae_student_employment_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_ae_student_employment_organization_person_role ON ceds6sc_rdx.ae_student_employment IS '';

ALTER TABLE ceds6sc_rdx.ae_student_employment ADD CONSTRAINT fk_ae_student_employment_ref_employed_after_exit FOREIGN KEY ( ref_employed_after_exit_id ) REFERENCES ceds6sc_rdx.ref_employed_after_exit( ref_employed_after_exit_id );

COMMENT ON CONSTRAINT fk_ae_student_employment_ref_employed_after_exit ON ceds6sc_rdx.ae_student_employment IS '';

ALTER TABLE ceds6sc_rdx.ae_student_employment ADD CONSTRAINT fk_ae_student_employment_ref_employed_while_enrolled FOREIGN KEY ( ref_employed_while_enrolled_id ) REFERENCES ceds6sc_rdx.ref_employed_while_enrolled( ref_employed_while_enrolled_id );

COMMENT ON CONSTRAINT fk_ae_student_employment_ref_employed_while_enrolled ON ceds6sc_rdx.ae_student_employment IS '';

ALTER TABLE ceds6sc_rdx.assessment_administration ADD CONSTRAINT fk_assessment_administration_ref_assessment_reporting_method FOREIGN KEY ( ref_assessment_reporting_method_id ) REFERENCES ceds6sc_rdx.ref_assessment_reporting_method( ref_assessment_reporting_method_id );

COMMENT ON CONSTRAINT fk_assessment_administration_ref_assessment_reporting_method ON ceds6sc_rdx.assessment_administration IS '';

ALTER TABLE ceds6sc_rdx.assessment_assessment_administration ADD CONSTRAINT fk_assessment_assessment_administration_assessment FOREIGN KEY ( assessment_id ) REFERENCES ceds6sc_rdx.assessment( assessment_id );

COMMENT ON CONSTRAINT fk_assessment_assessment_administration_assessment ON ceds6sc_rdx.assessment_assessment_administration IS '';

ALTER TABLE ceds6sc_rdx.assessment_assessment_administration ADD CONSTRAINT fk_assessment_assessment_administration_assessment_administration FOREIGN KEY ( assessment_administration_id ) REFERENCES ceds6sc_rdx.assessment_administration( assessment_administration_id );

COMMENT ON CONSTRAINT fk_assessment_assessment_administration_assessment_administration ON ceds6sc_rdx.assessment_assessment_administration IS '';

ALTER TABLE ceds6sc_rdx.assessment_el_developmental_domain ADD CONSTRAINT fk_assessment_assessment_el_developmental_domain_assessment FOREIGN KEY ( assessment_id ) REFERENCES ceds6sc_rdx.assessment( assessment_id );

COMMENT ON CONSTRAINT fk_assessment_assessment_el_developmental_domain_assessment ON ceds6sc_rdx.assessment_el_developmental_domain IS '';

ALTER TABLE ceds6sc_rdx.assessment_el_developmental_domain ADD CONSTRAINT fk_assessment_assessment_el_developmental_domain_ref_assessment_el_developmental_domain FOREIGN KEY ( ref_assessment_el_developmental_domain_id ) REFERENCES ceds6sc_rdx.ref_assessment_el_developmental_domain( ref_assessment_el_developmental_domain_id );

COMMENT ON CONSTRAINT fk_assessment_assessment_el_developmental_domain_ref_assessment_el_developmental_domain ON ceds6sc_rdx.assessment_el_developmental_domain IS '';

ALTER TABLE ceds6sc_rdx.assessment_form_assessment_asset ADD CONSTRAINT fk_assessment_form_assessment_asset_assessment_asset FOREIGN KEY ( assessment_asset_id ) REFERENCES ceds6sc_rdx.assessment_asset( assessment_asset_id );

COMMENT ON CONSTRAINT fk_assessment_form_assessment_asset_assessment_asset ON ceds6sc_rdx.assessment_form_assessment_asset IS '';

ALTER TABLE ceds6sc_rdx.assessment_form_assessment_asset ADD CONSTRAINT fk_assessment_form_assessment_asset_assessment_form FOREIGN KEY ( assessment_form_id ) REFERENCES ceds6sc_rdx.assessment_form( assessment_form_id );

COMMENT ON CONSTRAINT fk_assessment_form_assessment_asset_assessment_form ON ceds6sc_rdx.assessment_form_assessment_asset IS '';

ALTER TABLE ceds6sc_rdx.assessment_form_section ADD CONSTRAINT fk_form_section_form_section FOREIGN KEY ( child_of_form_section_id ) REFERENCES ceds6sc_rdx.assessment_form_section( assessment_form_section_id );

COMMENT ON CONSTRAINT fk_form_section_form_section ON ceds6sc_rdx.assessment_form_section IS '';

ALTER TABLE ceds6sc_rdx.assessment_form_section ADD CONSTRAINT fk_assessment_form_section_learning_resource FOREIGN KEY ( learning_resource_id ) REFERENCES ceds6sc_rdx.learning_resource( learning_resource_id );

COMMENT ON CONSTRAINT fk_assessment_form_section_learning_resource ON ceds6sc_rdx.assessment_form_section IS '';

ALTER TABLE ceds6sc_rdx.assessment_form_section ADD CONSTRAINT fk_assessment_form_section_ref_assessment_form_section_idtype FOREIGN KEY ( ref_assessment_form_section_identification_system_id ) REFERENCES ceds6sc_rdx.ref_assessment_form_section_identification_system( ref_assessment_form_section_identification_system_id );

COMMENT ON CONSTRAINT fk_assessment_form_section_ref_assessment_form_section_idtype ON ceds6sc_rdx.assessment_form_section IS '';

ALTER TABLE ceds6sc_rdx.assessment_form_section_assessment_item ADD CONSTRAINT fk_assessment_form_section_assessment_item_form_section FOREIGN KEY ( assessment_form_section_id ) REFERENCES ceds6sc_rdx.assessment_form_section( assessment_form_section_id );

COMMENT ON CONSTRAINT fk_assessment_form_section_assessment_item_form_section ON ceds6sc_rdx.assessment_form_section_assessment_item IS '';

ALTER TABLE ceds6sc_rdx.assessment_form_section_assessment_item ADD CONSTRAINT fk_assessment_form_section_assessment_item_assessment_item FOREIGN KEY ( assessment_item_id ) REFERENCES ceds6sc_rdx.assessment_item( assessment_item_id );

COMMENT ON CONSTRAINT fk_assessment_form_section_assessment_item_assessment_item ON ceds6sc_rdx.assessment_form_section_assessment_item IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_apip ADD CONSTRAINT fk_assessment_item_body_assessment_item1 FOREIGN KEY ( assessment_item_id ) REFERENCES ceds6sc_rdx.assessment_item( assessment_item_id );

COMMENT ON CONSTRAINT fk_assessment_item_body_assessment_item1 ON ceds6sc_rdx.assessment_item_apip IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_characteristic ADD CONSTRAINT fk_item_characteristic_item FOREIGN KEY ( assessment_item_id ) REFERENCES ceds6sc_rdx.assessment_item( assessment_item_id );

COMMENT ON CONSTRAINT fk_item_characteristic_item ON ceds6sc_rdx.assessment_item_characteristic IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_characteristic ADD CONSTRAINT fk_assessment_item_characteristic_ref_assess_item_char_type FOREIGN KEY ( ref_assessment_item_characteristic_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_item_characteristic_type( ref_assessment_item_characteristic_type_id );

COMMENT ON CONSTRAINT fk_assessment_item_characteristic_ref_assess_item_char_type ON ceds6sc_rdx.assessment_item_characteristic IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_response ADD CONSTRAINT fk_assessment_item_response_assessment_item FOREIGN KEY ( assessment_item_id ) REFERENCES ceds6sc_rdx.assessment_item( assessment_item_id );

COMMENT ON CONSTRAINT fk_assessment_item_response_assessment_item ON ceds6sc_rdx.assessment_item_response IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_response ADD CONSTRAINT fk_assessment_item_response_assessment_participant_session FOREIGN KEY ( assessment_participant_session_id ) REFERENCES ceds6sc_rdx.assessment_participant_session( assessment_participant_session_id );

COMMENT ON CONSTRAINT fk_assessment_item_response_assessment_participant_session ON ceds6sc_rdx.assessment_item_response IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_response ADD CONSTRAINT fk_assessment_item_response_ref_assessment_item_response_score_status FOREIGN KEY ( ref_assessment_item_response_score_status_id ) REFERENCES ceds6sc_rdx.ref_assessment_item_response_score_status( ref_assessment_item_response_score_status_id );

COMMENT ON CONSTRAINT fk_assessment_item_response_ref_assessment_item_response_score_status ON ceds6sc_rdx.assessment_item_response IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_response ADD CONSTRAINT fk_assessment_item_response_ref_assess_item_response_status FOREIGN KEY ( ref_assess_item_response_status_id ) REFERENCES ceds6sc_rdx.ref_assessment_item_response_status( ref_assessment_item_response_status_id );

COMMENT ON CONSTRAINT fk_assessment_item_response_ref_assess_item_response_status ON ceds6sc_rdx.assessment_item_response IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_response ADD CONSTRAINT fk_assessment_item_response_ref_proficiency_status FOREIGN KEY ( ref_proficiency_status_id ) REFERENCES ceds6sc_rdx.ref_proficiency_status( ref_proficiency_status_id );

COMMENT ON CONSTRAINT fk_assessment_item_response_ref_proficiency_status ON ceds6sc_rdx.assessment_item_response IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_rubric_criterion_result ADD CONSTRAINT fk_assess_item_rubric_criterion_result_assess_item_response FOREIGN KEY ( assessment_item_response_id ) REFERENCES ceds6sc_rdx.assessment_item_response( assessment_item_response_id );

COMMENT ON CONSTRAINT fk_assess_item_rubric_criterion_result_assess_item_response ON ceds6sc_rdx.assessment_item_rubric_criterion_result IS '';

ALTER TABLE ceds6sc_rdx.assessment_item_rubric_criterion_result ADD CONSTRAINT fk_assess_item_rubric_criterion_result_rubric_criterion_level FOREIGN KEY ( rubric_criterion_level_id ) REFERENCES ceds6sc_rdx.rubric_criterion_level( rubric_criterion_level_id );

COMMENT ON CONSTRAINT fk_assess_item_rubric_criterion_result_rubric_criterion_level ON ceds6sc_rdx.assessment_item_rubric_criterion_result IS '';

ALTER TABLE ceds6sc_rdx.assessment_levels_for_which_designed ADD CONSTRAINT fk_assessment_levels_for_which_designed_assessment FOREIGN KEY ( assessment_id ) REFERENCES ceds6sc_rdx.assessment( assessment_id );

COMMENT ON CONSTRAINT fk_assessment_levels_for_which_designed_assessment ON ceds6sc_rdx.assessment_levels_for_which_designed IS '';

ALTER TABLE ceds6sc_rdx.assessment_levels_for_which_designed ADD CONSTRAINT fk_assessment_levels_for_which_designed_ref_grade FOREIGN KEY ( ref_grade_level_id ) REFERENCES ceds6sc_rdx.ref_grade_level( ref_grade_level_id );

COMMENT ON CONSTRAINT fk_assessment_levels_for_which_designed_ref_grade ON ceds6sc_rdx.assessment_levels_for_which_designed IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_apip_control ADD CONSTRAINT fk_assess_need_apip_control_assessment_personal_needs_profile_control FOREIGN KEY ( assessment_personal_needs_profile_control_id ) REFERENCES ceds6sc_rdx.assessment_personal_needs_profile_control( assessment_personal_needs_profile_control_id );

COMMENT ON CONSTRAINT fk_assess_need_apip_control_assessment_personal_needs_profile_control ON ceds6sc_rdx.assessment_need_apip_control IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_apip_control ADD CONSTRAINT fk_assess_need_apip_control_ref_assessment_need_increased_whitespacing FOREIGN KEY ( ref_assessment_need_increased_whitespacing_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_increased_whitespacing_type( ref_assessment_need_increased_whitespacing_type_id );

COMMENT ON CONSTRAINT fk_assess_need_apip_control_ref_assessment_need_increased_whitespacing ON ceds6sc_rdx.assessment_need_apip_control IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_braille ADD CONSTRAINT fk_assessment_need_braille_assessment_personal_needs_profile_display FOREIGN KEY ( assessment_personal_needs_profile_display_id ) REFERENCES ceds6sc_rdx.assessment_personal_needs_profile_display( assessment_personal_needs_profile_display_id );

COMMENT ON CONSTRAINT fk_assessment_need_braille_assessment_personal_needs_profile_display ON ceds6sc_rdx.assessment_need_braille IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_braille ADD CONSTRAINT fk_assessment_need_braille_assessment_need_braille_grade_type_id FOREIGN KEY ( ref_assessment_need_braille_grade_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_braille_grade_type( ref_assessment_need_braille_grade_type_id );

COMMENT ON CONSTRAINT fk_assessment_need_braille_assessment_need_braille_grade_type_id ON ceds6sc_rdx.assessment_need_braille IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_braille ADD CONSTRAINT fk_assessment_need_braille_ref_assessment_need_braille_mark_type FOREIGN KEY ( ref_assessment_need_braille_mark_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_braille_mark_type( ref_assessment_need_braille_mark_type_id );

COMMENT ON CONSTRAINT fk_assessment_need_braille_ref_assessment_need_braille_mark_type ON ceds6sc_rdx.assessment_need_braille IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_braille ADD CONSTRAINT fk_assessment_need_braille_ref_assessment_need_braille_status_cell_type FOREIGN KEY ( ref_assessment_need_braille_status_cell_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_braille_status_cell_type( ref_assessment_need_braille_status_cell_type_id );

COMMENT ON CONSTRAINT fk_assessment_need_braille_ref_assessment_need_braille_status_cell_type ON ceds6sc_rdx.assessment_need_braille IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_braille ADD CONSTRAINT fk_assessment_need_braille_ref_assessment_need_number_of_braille_dots FOREIGN KEY ( ref_assessment_need_number_of_braille_dots_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_number_of_braille_dots( ref_assessment_need_number_of_braille_dots_id );

COMMENT ON CONSTRAINT fk_assessment_need_braille_ref_assessment_need_number_of_braille_dots ON ceds6sc_rdx.assessment_need_braille IS '';

ALTER TABLE ceds6sc_rdx.assessment_need_braille ADD CONSTRAINT fk_assessment_need_braille_ref_assessment_need_usage_type FOREIGN KEY ( ref_assessment_need_usage_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_usage_type( ref_assessment_need_usage_type_id );

COMMENT ON CONSTRAINT fk_assessment_need_braille_ref_assessment_need_usage_type ON ceds6sc_rdx.assessment_need_braille IS '';

ALTER TABLE ceds6sc_rdx.assessment_participant_session ADD CONSTRAINT fk_assessment_participant_session_assessment_form_section FOREIGN KEY ( assessment_form_section_id ) REFERENCES ceds6sc_rdx.assessment_form_section( assessment_form_section_id );

COMMENT ON CONSTRAINT fk_assessment_participant_session_assessment_form_section ON ceds6sc_rdx.assessment_participant_session IS '';

ALTER TABLE ceds6sc_rdx.assessment_participant_session ADD CONSTRAINT fk_assessment_participant_session_assessment_registration FOREIGN KEY ( assessment_registration_id ) REFERENCES ceds6sc_rdx.assessment_registration( assessment_registration_id );

COMMENT ON CONSTRAINT fk_assessment_participant_session_assessment_registration ON ceds6sc_rdx.assessment_participant_session IS '';

ALTER TABLE ceds6sc_rdx.assessment_participant_session ADD CONSTRAINT fk_assessment_participant_session_assessment_session FOREIGN KEY ( assessment_session_id ) REFERENCES ceds6sc_rdx.assessment_session( assessment_session_id );

COMMENT ON CONSTRAINT fk_assessment_participant_session_assessment_session ON ceds6sc_rdx.assessment_participant_session IS '';

ALTER TABLE ceds6sc_rdx.assessment_participant_session ADD CONSTRAINT fk_assessment_participant_session_location FOREIGN KEY ( location_id ) REFERENCES ceds6sc_rdx.location( location_id );

COMMENT ON CONSTRAINT fk_assessment_participant_session_location ON ceds6sc_rdx.assessment_participant_session IS '';

ALTER TABLE ceds6sc_rdx.assessment_participant_session ADD CONSTRAINT fk_assess_participant_session_ref_assessment_participant_session_plat FOREIGN KEY ( ref_assessment_platform_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_platform_type( ref_assessment_platform_type_id );

COMMENT ON CONSTRAINT fk_assess_participant_session_ref_assessment_participant_session_plat ON ceds6sc_rdx.assessment_participant_session IS '';

ALTER TABLE ceds6sc_rdx.assessment_participant_session ADD CONSTRAINT fk_assess_participant_session_ref_assessment_session_special_circumst FOREIGN KEY ( ref_assessment_session_special_circumstance_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_session_special_circumstance_type( ref_assessment_session_special_circumstance_type_id );

COMMENT ON CONSTRAINT fk_assess_participant_session_ref_assessment_session_special_circumst ON ceds6sc_rdx.assessment_participant_session IS '';

ALTER TABLE ceds6sc_rdx.assessment_participant_session ADD CONSTRAINT fk_assessment_participant_session_ref_language FOREIGN KEY ( ref_language_id ) REFERENCES ceds6sc_rdx.ref_language( ref_language_id );

COMMENT ON CONSTRAINT fk_assessment_participant_session_ref_language ON ceds6sc_rdx.assessment_participant_session IS '';

ALTER TABLE ceds6sc_rdx.assessment_performance_level ADD CONSTRAINT fk_performance_level_assessment_sub_test FOREIGN KEY ( assessment_subtest_id ) REFERENCES ceds6sc_rdx.assessment_subtest( assessment_subtest_id );

COMMENT ON CONSTRAINT fk_performance_level_assessment_sub_test ON ceds6sc_rdx.assessment_performance_level IS '';

ALTER TABLE ceds6sc_rdx.assessment_personal_need_screen_reader ADD CONSTRAINT fk_apnscreen_reader_assessment_personal_needs_profile_display FOREIGN KEY ( assessment_personal_needs_profile_display_id ) REFERENCES ceds6sc_rdx.assessment_personal_needs_profile_display( assessment_personal_needs_profile_display_id );

COMMENT ON CONSTRAINT fk_apnscreen_reader_assessment_personal_needs_profile_display ON ceds6sc_rdx.assessment_personal_need_screen_reader IS '';

ALTER TABLE ceds6sc_rdx.assessment_personal_need_screen_reader ADD CONSTRAINT fk_assessment_personal_need_screen_reader_ref_assessment_need_usage FOREIGN KEY ( ref_assessment_need_usage_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_usage_type( ref_assessment_need_usage_type_id );

COMMENT ON CONSTRAINT fk_assessment_personal_need_screen_reader_ref_assessment_need_usage ON ceds6sc_rdx.assessment_personal_need_screen_reader IS '';

ALTER TABLE ceds6sc_rdx.assessment_personal_needs_profile_content ADD CONSTRAINT fk_assessment_needs_profile_content_assessment_needs_profile FOREIGN KEY ( assessment_personal_needs_profile_id ) REFERENCES ceds6sc_rdx.assessment_personal_needs_profile( assessment_personal_needs_profile_id );

COMMENT ON CONSTRAINT fk_assessment_needs_profile_content_assessment_needs_profile ON ceds6sc_rdx.assessment_personal_needs_profile_content IS '';

ALTER TABLE ceds6sc_rdx.assessment_personal_needs_profile_content ADD CONSTRAINT fk_assessment_personal_needs_profile_content_ref_assessment_need_hazrd FOREIGN KEY ( ref_assessment_need_hazard_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_hazard_type( ref_assessment_need_hazard_type_id );

COMMENT ON CONSTRAINT fk_assessment_personal_needs_profile_content_ref_assessment_need_hazrd ON ceds6sc_rdx.assessment_personal_needs_profile_content IS '';

ALTER TABLE ceds6sc_rdx.assessment_personal_needs_profile_content ADD CONSTRAINT fk_apn_profile_content_ref_assessment_need_support_tool FOREIGN KEY ( ref_assessment_need_support_tool_id ) REFERENCES ceds6sc_rdx.ref_assessment_need_support_tool( ref_assessment_need_support_tool_id );

COMMENT ON CONSTRAINT fk_apn_profile_content_ref_assessment_need_support_tool ON ceds6sc_rdx.assessment_personal_needs_profile_content IS '';

ALTER TABLE ceds6sc_rdx.assessment_personal_needs_profile_content ADD CONSTRAINT fk_assessment_personal_needs_profile_content_ref_language FOREIGN KEY ( ref_keyword_translations_language_id ) REFERENCES ceds6sc_rdx.ref_language( ref_language_id );

COMMENT ON CONSTRAINT fk_assessment_personal_needs_profile_content_ref_language ON ceds6sc_rdx.assessment_personal_needs_profile_content IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_registration_assessment_administration FOREIGN KEY ( assessment_administration_id ) REFERENCES ceds6sc_rdx.assessment_administration( assessment_administration_id );

COMMENT ON CONSTRAINT fk_assessment_registration_assessment_administration ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_regirstration_ref_assessment_form FOREIGN KEY ( assessment_form_id ) REFERENCES ceds6sc_rdx.assessment_form( assessment_form_id );

COMMENT ON CONSTRAINT fk_assessment_regirstration_ref_assessment_form ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_registration_course_section FOREIGN KEY ( course_section_organization_id ) REFERENCES ceds6sc_rdx.course_section( organization_id );

COMMENT ON CONSTRAINT fk_assessment_registration_course_section ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_registration_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT fk_assessment_registration_organization ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_organization1 FOREIGN KEY ( school_organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT fk_assessment_registration_ref_organization1 ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_organization2 FOREIGN KEY ( lea_organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT fk_assessment_registration_ref_organization2 ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_registration_person FOREIGN KEY ( assigned_by_person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT fk_assessment_registration_person ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_registration_person2 FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT fk_assessment_registration_person2 ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_assessment_participation_indicator FOREIGN KEY ( ref_assessment_participation_indicator_id ) REFERENCES ceds6sc_rdx.ref_assessment_participation_indicator( ref_assessment_participation_indicator_id );

COMMENT ON CONSTRAINT fk_assessment_registration_ref_assessment_participation_indicator ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_assessment_purpose FOREIGN KEY ( ref_assessment_purpose_id ) REFERENCES ceds6sc_rdx.ref_assessment_purpose( ref_assessment_purpose_id );

COMMENT ON CONSTRAINT fk_assessment_registration_ref_assessment_purpose ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_assessment_reason_not_completing FOREIGN KEY ( ref_assessment_reason_not_completing_id ) REFERENCES ceds6sc_rdx.ref_assessment_reason_not_completing( ref_assessment_reason_not_completing_id );

COMMENT ON CONSTRAINT fk_assessment_registration_ref_assessment_reason_not_completing ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_assessment_reason_not_tested FOREIGN KEY ( ref_assessment_reason_not_tested_id ) REFERENCES ceds6sc_rdx.ref_assessment_reason_not_tested( ref_assessment_reason_not_tested_id );

COMMENT ON CONSTRAINT fk_assessment_registration_ref_assessment_reason_not_tested ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_assessment_registration_completion_status FOREIGN KEY ( ref_assessment_registration_completion_status_id ) REFERENCES ceds6sc_rdx.ref_assessment_registration_completion_status( ref_assessment_registration_completion_status_id );

COMMENT ON CONSTRAINT fk_assessment_registration_ref_assessment_registration_completion_status ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_grade_level FOREIGN KEY ( ref_grade_level_when_assessed_id ) REFERENCES ceds6sc_rdx.ref_grade_level( ref_grade_level_id );

COMMENT ON CONSTRAINT fk_assessment_registration_ref_grade_level ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_registration ADD CONSTRAINT fk_assessment_registration_ref_grade_level1 FOREIGN KEY ( ref_grade_level_to_be_assessed_id ) REFERENCES ceds6sc_rdx.ref_grade_level( ref_grade_level_id );

COMMENT ON CONSTRAINT fk_assessment_registration_ref_grade_level1 ON ceds6sc_rdx.assessment_registration IS '';

ALTER TABLE ceds6sc_rdx.assessment_result ADD CONSTRAINT fk_assessment_result_assessment_registration FOREIGN KEY ( assessment_registration_id ) REFERENCES ceds6sc_rdx.assessment_registration( assessment_registration_id );

COMMENT ON CONSTRAINT fk_assessment_result_assessment_registration ON ceds6sc_rdx.assessment_result IS '';

ALTER TABLE ceds6sc_rdx.assessment_result ADD CONSTRAINT fk_assessment_result_assessment_sub_test FOREIGN KEY ( assessment_subtest_id ) REFERENCES ceds6sc_rdx.assessment_subtest( assessment_subtest_id );

COMMENT ON CONSTRAINT fk_assessment_result_assessment_sub_test ON ceds6sc_rdx.assessment_result IS '';

ALTER TABLE ceds6sc_rdx.assessment_result ADD CONSTRAINT fk_assessment_result_ref_assessment_pretest_outcome FOREIGN KEY ( ref_assessment_pretest_outcome_id ) REFERENCES ceds6sc_rdx.ref_assessment_pretest_outcome( ref_assessment_pretest_outcome_id );

COMMENT ON CONSTRAINT fk_assessment_result_ref_assessment_pretest_outcome ON ceds6sc_rdx.assessment_result IS '';

ALTER TABLE ceds6sc_rdx.assessment_result ADD CONSTRAINT fk_assessment_result_ref_assessment_result_data_type FOREIGN KEY ( ref_assessment_result_data_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_result_data_type( ref_assessment_result_data_type_id );

COMMENT ON CONSTRAINT fk_assessment_result_ref_assessment_result_data_type ON ceds6sc_rdx.assessment_result IS '';

ALTER TABLE ceds6sc_rdx.assessment_result ADD CONSTRAINT fk_assessment_result_ref_assessment_result_score_type FOREIGN KEY ( ref_assessment_result_score_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_result_score_type( ref_assessment_result_score_type_id );

COMMENT ON CONSTRAINT fk_assessment_result_ref_assessment_result_score_type ON ceds6sc_rdx.assessment_result IS '';

ALTER TABLE ceds6sc_rdx.assessment_result ADD CONSTRAINT fk_assessment_result_ref_el_outcome_measurement FOREIGN KEY ( ref_el_outcome_measurement_level_id ) REFERENCES ceds6sc_rdx.ref_el_outcome_measurement_level( ref_el_outcome_measurement_level_id );

COMMENT ON CONSTRAINT fk_assessment_result_ref_el_outcome_measurement ON ceds6sc_rdx.assessment_result IS '';

ALTER TABLE ceds6sc_rdx.assessment_result ADD CONSTRAINT fk_assessment_result_ref_outcome_time_point FOREIGN KEY ( ref_outcome_time_point_id ) REFERENCES ceds6sc_rdx.ref_outcome_time_point( ref_outcome_time_point_id );

COMMENT ON CONSTRAINT fk_assessment_result_ref_outcome_time_point ON ceds6sc_rdx.assessment_result IS '';

ALTER TABLE ceds6sc_rdx.assessment_result ADD CONSTRAINT fk_assessment_result_ref_score_metric_type FOREIGN KEY ( ref_score_metric_type_id ) REFERENCES ceds6sc_rdx.ref_score_metric_type( ref_score_metric_type_id );

COMMENT ON CONSTRAINT fk_assessment_result_ref_score_metric_type ON ceds6sc_rdx.assessment_result IS '';

ALTER TABLE ceds6sc_rdx.assessment_result_rubric_criterion_result ADD CONSTRAINT fk_assessment_result_rubric_criterion_result_assessment_result FOREIGN KEY ( assessment_result_id ) REFERENCES ceds6sc_rdx.assessment_result( assessment_result_id );

COMMENT ON CONSTRAINT fk_assessment_result_rubric_criterion_result_assessment_result ON ceds6sc_rdx.assessment_result_rubric_criterion_result IS '';

ALTER TABLE ceds6sc_rdx.assessment_result_rubric_criterion_result ADD CONSTRAINT fk_assessment_result_rubric_criterion_result_rubric_criterion_level FOREIGN KEY ( rubric_criterion_level_id ) REFERENCES ceds6sc_rdx.rubric_criterion_level( rubric_criterion_level_id );

COMMENT ON CONSTRAINT fk_assessment_result_rubric_criterion_result_rubric_criterion_level ON ceds6sc_rdx.assessment_result_rubric_criterion_result IS '';

ALTER TABLE ceds6sc_rdx.assessment_session_staff_role ADD CONSTRAINT fk_assessment_session_staff_role_assessment_participant_session FOREIGN KEY ( assessment_participant_session_id ) REFERENCES ceds6sc_rdx.assessment_participant_session( assessment_participant_session_id );

COMMENT ON CONSTRAINT fk_assessment_session_staff_role_assessment_participant_session ON ceds6sc_rdx.assessment_session_staff_role IS '';

ALTER TABLE ceds6sc_rdx.assessment_session_staff_role ADD CONSTRAINT fk_assessment_session_staff_role_assessment_session FOREIGN KEY ( assessment_session_id ) REFERENCES ceds6sc_rdx.assessment_session( assessment_session_id );

COMMENT ON CONSTRAINT fk_assessment_session_staff_role_assessment_session ON ceds6sc_rdx.assessment_session_staff_role IS '';

ALTER TABLE ceds6sc_rdx.assessment_session_staff_role ADD CONSTRAINT fk_assessment_session_staff_role_person FOREIGN KEY ( person_id ) REFERENCES ceds6sc_rdx.person( person_id );

COMMENT ON CONSTRAINT fk_assessment_session_staff_role_person ON ceds6sc_rdx.assessment_session_staff_role IS '';

ALTER TABLE ceds6sc_rdx.assessment_session_staff_role ADD CONSTRAINT fk_assessment_session_staff_role_ref_assessment_session_staff_role_type FOREIGN KEY ( ref_assessment_session_staff_role_type_id ) REFERENCES ceds6sc_rdx.ref_assessment_session_staff_role_type( ref_assessment_session_staff_role_type_id );

COMMENT ON CONSTRAINT fk_assessment_session_staff_role_ref_assessment_session_staff_role_type ON ceds6sc_rdx.assessment_session_staff_role IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest_assessment_item ADD CONSTRAINT fk_assessment_subtest_ai_assessment_item FOREIGN KEY ( assessment_item_id ) REFERENCES ceds6sc_rdx.assessment_item( assessment_item_id );

COMMENT ON CONSTRAINT fk_assessment_subtest_ai_assessment_item ON ceds6sc_rdx.assessment_subtest_assessment_item IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest_assessment_item ADD CONSTRAINT fk_assessment_subtest_items_assessment_sub_test FOREIGN KEY ( assessment_subtest_id ) REFERENCES ceds6sc_rdx.assessment_subtest( assessment_subtest_id );

COMMENT ON CONSTRAINT fk_assessment_subtest_items_assessment_sub_test ON ceds6sc_rdx.assessment_subtest_assessment_item IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest_learning_standard_item ADD CONSTRAINT fk_assessment_subtest_learning_standard_item_assessment_subtest FOREIGN KEY ( assessment_subtest_id ) REFERENCES ceds6sc_rdx.assessment_subtest( assessment_subtest_id );

COMMENT ON CONSTRAINT fk_assessment_subtest_learning_standard_item_assessment_subtest ON ceds6sc_rdx.assessment_subtest_learning_standard_item IS '';

ALTER TABLE ceds6sc_rdx.assessment_subtest_learning_standard_item ADD CONSTRAINT fk_assessment_sub_test_learning_standard_item_learning_standard_item FOREIGN KEY ( learning_standard_item_id ) REFERENCES ceds6sc_rdx.learning_standard_item( learning_standard_item_id );

COMMENT ON CONSTRAINT fk_assessment_sub_test_learning_standard_item_learning_standard_item ON ceds6sc_rdx.assessment_subtest_learning_standard_item IS '';

ALTER TABLE ceds6sc_rdx.authentication ADD CONSTRAINT fk_authentication_organization_person_role FOREIGN KEY ( organization_person_role_id ) REFERENCES ceds6sc_rdx.organization_person_role( organization_person_role_id );

COMMENT ON CONSTRAINT fk_authentication_organization_person_role ON ceds6sc_rdx.authentication IS '';

ALTER TABLE ceds6sc_rdx.competency_set ADD CONSTRAINT fk_competency_set_learning_standard_item_set FOREIGN KEY ( child_of_competency_set ) REFERENCES ceds6sc_rdx.competency_set( competency_set_id );

COMMENT ON CONSTRAINT fk_competency_set_learning_standard_item_set ON ceds6sc_rdx.competency_set IS '';

ALTER TABLE ceds6sc_rdx.competency_set ADD CONSTRAINT fk_competency_set_ref_competency_set_completion_criteria FOREIGN KEY ( ref_completion_criteria_id ) REFERENCES ceds6sc_rdx.ref_competency_set_completion_criteria( ref_competency_set_completion_criteria_id );

COMMENT ON CONSTRAINT fk_competency_set_ref_competency_set_completion_criteria ON ceds6sc_rdx.competency_set IS '';

ALTER TABLE ceds6sc_rdx.course ADD CONSTRAINT fk_course_organization FOREIGN KEY ( organization_id ) REFERENCES ceds6sc_rdx.organization( organization_id );

COMMENT ON CONSTRAINT fk_course_organization ON ceds6sc_rdx.course IS '';

ALTER TABLE ceds6sc_rdx.course ADD CONSTRAINT fk_course_ref_course_applicable_education_level FOREIGN KEY ( ref_course_applicable_education_level_id ) REFERENCES ceds6sc_rdx.ref_course_applicable_education_level( ref_course_applicable_education_level_id );

COMMENT ON CONSTRAINT fk_course_ref_course_applicable_education_level ON ceds6sc_rdx.course IS '';

ALTER TABLE ceds6sc_rdx.course ADD CONSTRAINT fk_course_ref_course_credit_unit FOREIGN KEY ( ref_course_credit_unit_id ) REFERENCES ceds6sc_rdx.ref_course_credit_unit( ref_course_credit_unit_id );

COMMENT ON CONSTRAINT fk_course_ref_course_credit_unit ON ceds6sc_rdx.course IS '';

ALTER TABLE ceds6sc_rdx.course ADD CONSTRAINT fk_course_ref_course_level_characteristic FOREIGN KEY ( ref_course_level_characteristics_id ) REFERENCES ceds6sc_rdx.ref_course_level_characteristic( ref_course_level_characteristic_id );

COMMENT ON CONSTRAINT fk_course_ref_course_level_characteristic ON ceds6sc_rdx.course IS '';

ALTER TABLE ceds6sc_rdx.course ADD CONSTRAINT fk_course_ref_language FOREIGN KEY ( ref_instruction_language ) REFERENCES ceds6sc_rdx.ref_language( ref_language_id );

COMMENT ON CONSTRAINT fk_course_ref_language ON ceds6sc_rdx.course IS '';

