 CREATE SCHEMA ceds6sc_rdx;

CREATE TABLE ceds6sc_rdx.assessment_personal_needs_profile ( 
	assessment_personal_needs_profile_id integer  NOT NULL,
	assessment_need_type text  NOT NULL,
	assigned_support_flag bool  ,
	activate_by_default bool  ,
	CONSTRAINT pk_assessment_needs_profile PRIMARY KEY ( assessment_personal_needs_profile_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_personal_needs_profile IS 'Identifies a type of need identified for a learner as part of an assessment need profile.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile.assessment_personal_needs_profile_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile.assessment_need_type IS 'A type of need identified for a learner as part of an assessment need profile. [CEDS Element: Assessment Need Type, ID:001127]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile.assigned_support_flag IS 'Defines whether or not the individual needs the kind of support defined by the entity. [CEDS Element: Assessment Personal Needs Profile Assigned Support, ID:001004]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile.activate_by_default IS 'Determines if the alternative accessible content is rendered as the default content for the learner. [CEDS Element: Assessment Personal Needs Profile Activate By Default, ID:001005]';

CREATE TABLE ceds6sc_rdx.assessment_personal_needs_profile_control ( 
	assessment_personal_needs_profile_control_id integer  NOT NULL,
	assessment_personal_needs_profile_id integer  NOT NULL,
	CONSTRAINT pk_assessment_personal_needs_profile_control PRIMARY KEY ( assessment_personal_needs_profile_control_id ),
	CONSTRAINT fk_assessment_needs_profile_control_assessment_needs_profile FOREIGN KEY ( assessment_personal_needs_profile_id ) REFERENCES ceds6sc_rdx.assessment_personal_needs_profile( assessment_personal_needs_profile_id )    
 );

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile_control.assessment_personal_needs_profile_control_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile_control.assessment_personal_needs_profile_id IS 'Foreign key - Assessment_Personal_Needs_Profile';

CREATE TABLE ceds6sc_rdx.assessment_personal_needs_profile_screen_enhancement ( 
	assessment_personal_needs_profile_screen_enhancement_id integer  NOT NULL,
	assessment_personal_needs_profile_id integer  NOT NULL,
	CONSTRAINT pk_assessment_personal_needs_profile_screen_enhancement PRIMARY KEY ( assessment_personal_needs_profile_screen_enhancement_id ),
	CONSTRAINT fk_anp_screen_enhancement_assessment_needs_profile FOREIGN KEY ( assessment_personal_needs_profile_id ) REFERENCES ceds6sc_rdx.assessment_personal_needs_profile( assessment_personal_needs_profile_id )    
 );

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile_screen_enhancement.assessment_personal_needs_profile_screen_enhancement_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile_screen_enhancement.assessment_personal_needs_profile_id IS 'Foreign key - Assessment_Personal_Needs_Profile';

CREATE TABLE ceds6sc_rdx.peer_rating_system ( 
	peer_rating_system_id integer  NOT NULL,
	name               varchar(60)  NOT NULL,
	maximum_value      numeric(18,4)  ,
	minimum_value      numeric(18,4)  NOT NULL,
	optimum_value      numeric(18,4)  ,
	CONSTRAINT pk_peer_rating_system PRIMARY KEY ( peer_rating_system_id )
 );

COMMENT ON TABLE ceds6sc_rdx.peer_rating_system IS 'The peer rating / scaling system used to rate a Learning Resource.';

COMMENT ON COLUMN ceds6sc_rdx.peer_rating_system.peer_rating_system_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.peer_rating_system.name IS 'The name of the scaling system used to specify the Peer Rating. [CEDS Element: Peer Rating System Name, ID:001147]';

COMMENT ON COLUMN ceds6sc_rdx.peer_rating_system.maximum_value IS 'The maximum value allowed by the Peer Rating System. [CEDS Element: Peer Rating System Maximum Value, ID:001149]';

COMMENT ON COLUMN ceds6sc_rdx.peer_rating_system.minimum_value IS 'The minimum value allowed by the Peer Rating System. [CEDS Element: Peer Rating System Minimum Value, ID:001150]';

COMMENT ON COLUMN ceds6sc_rdx.peer_rating_system.optimum_value IS 'The optimum value allowed by the Peer Rating System.  The optimum or best rating may be the maximum value, the minimum value, or something in between. [CEDS Element: Peer Rating System Optimum Value, ID:001151]';

CREATE TABLE ceds6sc_rdx.ref_employment_location ( 
	ref_employment_location_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_employment_location PRIMARY KEY ( ref_employment_location_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_employment_location IS 'The state or other location in which an individual is found employed. [CEDS Element: Employment Location, ID:000990]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_location.ref_employment_location_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_location.description IS 'The state or other location in which an individual is found employed. [CEDS Element: Employment Location, ID:000990]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_location.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_location.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_state_ansi_code ( 
	code               char(2)  NOT NULL,
	state_name         varchar(100)  ,
	CONSTRAINT pk_ref_state_ansi_code PRIMARY KEY ( code )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_state_ansi_code IS 'The American National Standards Institute (ANSI) two-digit code for the state. [CEDS Element: State ANSI Code, ID:000424]';

COMMENT ON COLUMN ceds6sc_rdx.ref_state_ansi_code.code IS 'The American National Standards Institute (ANSI) two-digit code for the state. [CEDS Element: State ANSI Code, ID:000424]';

COMMENT ON COLUMN ceds6sc_rdx.ref_state_ansi_code.state_name IS 'State name';

CREATE TABLE ceds6sc_rdx.rubric ( 
	rubric_id          integer  NOT NULL,
	identifier         varchar(40)  ,
	title              varchar(30)  ,
	url_reference      varchar(300)  ,
	description        text  ,
	CONSTRAINT pk_rubric PRIMARY KEY ( rubric_id )
 );

COMMENT ON TABLE ceds6sc_rdx.rubric IS 'A rubric that may be utilized for scoring an assessment.';

COMMENT ON COLUMN ceds6sc_rdx.rubric.rubric_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.rubric.identifier IS 'An identifier assigned to a rubric. [CEDS Element: Assessment Rubric Identifier, ID:000422]';

COMMENT ON COLUMN ceds6sc_rdx.rubric.title IS 'The title of the rubric. [CEDS Element: Assessment Rubric Title, ID:000421]';

COMMENT ON COLUMN ceds6sc_rdx.rubric.url_reference IS 'The URL location where the rubric may be found. [CEDS Element: Assessment Rubric URL Reference, ID:000423]';

COMMENT ON COLUMN ceds6sc_rdx.rubric.description IS 'Text describing the intended use of the rubric. [CEDS Element: Rubric Description, ID: 001479]';

CREATE TABLE ceds6sc_rdx.application ( 
	application_id       integer  NOT NULL,
	name                 varchar(120)  NOT NULL,
	uri                  varchar(300)  ,
	CONSTRAINT pk_application PRIMARY KEY ( application_id )
 );

COMMENT ON TABLE ceds6sc_rdx.application IS 'A data system or application.';

COMMENT ON COLUMN ceds6sc_rdx.application.application_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.application.name IS 'The name of a data system or application which an authenticated person may access. [CEDS Element: Authorization Application Name, ID:001173]';

COMMENT ON COLUMN ceds6sc_rdx.application.uri IS 'The Uniform Resource Identifier (URI) of a data system or application which an authenticated person may access. [CEDS Element: Authorization Application URI, ID:001174]';

CREATE TABLE ceds6sc_rdx.assessment_personal_needs_profile_display ( 
	assessment_personal_needs_profile_display_id integer  NOT NULL,
	assessment_personal_needs_profile_id integer  NOT NULL,
	CONSTRAINT pk_assessment_personal_needs_profile_display PRIMARY KEY ( assessment_personal_needs_profile_display_id ),
	CONSTRAINT fk_assessment_needs_profile_display_assessment_needs_profile FOREIGN KEY ( assessment_personal_needs_profile_id ) REFERENCES ceds6sc_rdx.assessment_personal_needs_profile( assessment_personal_needs_profile_id )    
 );

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile_display.assessment_personal_needs_profile_display_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile_display.assessment_personal_needs_profile_id IS 'Foreign key - Assessment_Personal_Needs_Profile';

CREATE TABLE ceds6sc_rdx.financial_account_program ( 
	financial_account_program_id integer  NOT NULL,
	name                 varchar(100)  ,
	program_number       varchar(30)  ,
	CONSTRAINT pk_financial_account_program PRIMARY KEY ( financial_account_program_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.financial_account_program.financial_account_program_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.financial_account_program.name IS 'The name given to the program area in an educational institution''s accounting system. [CEDS Element: Financial Account Program Name, ID:001645]';

COMMENT ON COLUMN ceds6sc_rdx.financial_account_program.program_number IS 'A number given to a program area within an educational institution''s accounting system. [CEDS Element: Financial Account Program Number, ID:001646]';

CREATE TABLE ceds6sc_rdx.location ( 
	location_id          integer  NOT NULL,
	CONSTRAINT pk_location PRIMARY KEY ( location_id )
 );

COMMENT ON TABLE ceds6sc_rdx.location IS 'A location such as a physical address or mailing address.';

COMMENT ON COLUMN ceds6sc_rdx.location.location_id IS 'Surrogate Key';

CREATE TABLE ceds6sc_rdx.ref_assessment_accommodation_category ( 
	ref_assessment_accommodation_category_id integer  NOT NULL,
	description          varchar(100)  NOT NULL,
	code                 varchar(50)  ,
	definition           varchar(4000)  ,
	ref_jurisdiction_id  integer  ,
	sort_order           decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_accommodation_category PRIMARY KEY ( ref_assessment_accommodation_category_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_accommodation_category IS 'A category of accommodations needed for a given assessment. [CEDS Element: Assessment Accommodation Category, ID:000383]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_accommodation_category.ref_assessment_accommodation_category_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_accommodation_category.description IS 'A category of accommodations needed for a given assessment. [CEDS Element: Assessment Accommodation Category, ID:000383]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_accommodation_category.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_accommodation_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.rubric_criterion ( 
	rubric_criterion_id  integer  NOT NULL,
	category             varchar(30)  ,
	title                varchar(30)  ,
	description          text  ,
	weight               decimal(18,0)  ,
	position           integer  ,
	rubric_id            integer  NOT NULL,
	CONSTRAINT pk_rubric_criterion PRIMARY KEY ( rubric_criterion_id ),
	CONSTRAINT fk_rubric_criterion_rubric FOREIGN KEY ( rubric_id ) REFERENCES ceds6sc_rdx.rubric( rubric_id )    
 );

COMMENT ON COLUMN ceds6sc_rdx.rubric_criterion.rubric_criterion_id IS 'Surrogate key.';

COMMENT ON COLUMN ceds6sc_rdx.rubric_criterion.category IS 'A textual label for category by which Rubric Criterion may be grouped. [CEDS Element: Rubric Criterion Category, ID:001469]';

COMMENT ON COLUMN ceds6sc_rdx.rubric_criterion.title IS 'The title of the rubric criterion. [CEDS Element: Rubric Criterion Title, ID:001477]';

COMMENT ON COLUMN ceds6sc_rdx.rubric_criterion.description IS 'Text describing a criterion that must be met to demonstrate quality for a product, process, or performance task. [CEDS Element: Rubric Criterion Description, ID:001470]';

COMMENT ON COLUMN ceds6sc_rdx.rubric_criterion.weight IS 'A numeric weight assigned to this Rubric Criterion, used for scored rubrics. [CEDS Element: Rubric Criterion Weight, ID: 001478]';

COMMENT ON COLUMN ceds6sc_rdx.rubric_criterion.position IS 'A numeric value representing this criterion''s position in the criteria list for this rubric. [CEDS Element: Rubric Criteriod Position, ID: 001476]';

CREATE TABLE ceds6sc_rdx.assessment_need_screen_enhancement ( 
	assessment_need_screen_enhancement_id integer  NOT NULL,
	assessment_personal_needs_profile_display_id integer  NOT NULL,
	invert_color_choice bool  ,
	magnification      decimal(10,4)  ,
	assessment_personal_needs_profile_screen_enhancement_id integer  ,
	foreground_color   char(6)  ,
	CONSTRAINT pk_assessment_need_screen_enhancement PRIMARY KEY ( assessment_need_screen_enhancement_id ),
	CONSTRAINT fk_assess_need_screen_enhancement_assess_personal_need_profile_display FOREIGN KEY ( assessment_personal_needs_profile_display_id ) REFERENCES ceds6sc_rdx.assessment_personal_needs_profile_display( assessment_personal_needs_profile_display_id )    ,
	CONSTRAINT fk_assess_need_screen_enhancement_apnprofile_screen_enhancement FOREIGN KEY ( assessment_personal_needs_profile_screen_enhancement_id ) REFERENCES ceds6sc_rdx.assessment_personal_needs_profile_screen_enhancement( assessment_personal_needs_profile_screen_enhancement_id )    
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_need_screen_enhancement IS 'Defines as part of an Assessment Personal Needs Profile the attributes for screen enhancement.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_screen_enhancement.assessment_need_screen_enhancement_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_screen_enhancement.assessment_personal_needs_profile_display_id IS 'Foreign key - Assessment_Personal_Needs_Profile_Display';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_screen_enhancement.invert_color_choice IS 'Defines as part of an Assessment Personal Needs Profile the Access for All (Af_A) preference to invert the foreground and background Colors. [CEDS Element: Assessment Need Invert Color Choice, ID:001030]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_screen_enhancement.magnification IS 'Defines as part of an Assessment Personal Needs Profile the preferred magnification of the screen as a factor of a screen’s original size. [CEDS Element: Assessment Need Magnification, ID:001031]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_screen_enhancement.assessment_personal_needs_profile_screen_enhancement_id IS 'Foreign key - Assessment_Personal_Needs_Profile_Screen_Enhancement';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_screen_enhancement.foreground_color IS 'This is the preferred Foreground color for screen enhancement defined as part of an Assessment Personal Needs Profile. [CEDS Element: Assessment Need Foreground Color, ID:001052]';

CREATE TABLE ceds6sc_rdx.rubric_criterion_level ( 
	rubric_criterion_level_id integer  NOT NULL,
	description        text  ,
	quality            text  ,
	score              decimal(18,0)  ,
	feedback           text  ,
	position           integer  ,
	rubric_criterion_id integer  NOT NULL,
	CONSTRAINT pk_rubric_criterion_level PRIMARY KEY ( rubric_criterion_level_id ),
	CONSTRAINT fk_rubric_criterion_level_rubric_criterion FOREIGN KEY ( rubric_criterion_id ) REFERENCES ceds6sc_rdx.rubric_criterion( rubric_criterion_id )    
 );

COMMENT ON COLUMN ceds6sc_rdx.rubric_criterion_level.rubric_criterion_level_id IS 'Surrogate key.';

COMMENT ON COLUMN ceds6sc_rdx.rubric_criterion_level.description IS 'Text describing one or more benchmarks that must be met to achieve a degree of achievement on a product, process, or performance task. [CEDS Element: Rubric Criterion Level Description, ID:001471]';

COMMENT ON COLUMN ceds6sc_rdx.rubric_criterion_level.quality IS 'A qualitative description of this degree of achievement used for column headers or row labels in tabular rubrics. [CEDS Element: Rubric Criterion Level Quality Label, ID: 001474]';

COMMENT ON COLUMN ceds6sc_rdx.rubric_criterion_level.score IS 'The points awarded for achieving this level. [CEDS Element: Rubric Criterion Level Score, ID: 001475]';

COMMENT ON COLUMN ceds6sc_rdx.rubric_criterion_level.feedback IS 'Pre-defined feedback text to be relayed to the person or organization being evaluated.  This may include guidance and suggestions for improvement or development. [CEDS Element: Rubric Criterion Level Feedback, ID: 001472]';

COMMENT ON COLUMN ceds6sc_rdx.rubric_criterion_level.position IS 'A numeric value representing the level''s position in the list of levels defined for the Rubric Criterion. [CEDS Element: Rubric Criterion Level Position, ID: 001473]';

CREATE TABLE ceds6sc_rdx.classroom ( 
	location_id          integer  NOT NULL,
	classroom_identifier varchar(40)  ,
	CONSTRAINT pk_classroom PRIMARY KEY ( location_id ),
	CONSTRAINT fk_classroom_location FOREIGN KEY ( location_id ) REFERENCES ceds6sc_rdx.location( location_id )    
 );

COMMENT ON TABLE ceds6sc_rdx.classroom IS 'A room where educational services are provided by a school, school system, state, or other agency or entity.';

COMMENT ON COLUMN ceds6sc_rdx.classroom.location_id IS 'Foreign key - Location';

COMMENT ON COLUMN ceds6sc_rdx.classroom.classroom_identifier IS 'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity. [CEDS Element: Classroom Identifier, ID:000364]';

CREATE TABLE ceds6sc_rdx.achievement_evidence ( 
	achievement_evidence_id integer  NOT NULL,
	achievement_id     integer  ,
	statement          varchar(300)  ,
	assessment_subtest_result_id integer  ,
	CONSTRAINT pk_achievement_evidence PRIMARY KEY ( achievement_evidence_id )
 );

COMMENT ON TABLE ceds6sc_rdx.achievement_evidence IS 'A statement or reference describing the evidence that the learner met the criteria for attainment  of the achievement. [CEDS Element: Achievement Evidence Statement, ID:000901]';

COMMENT ON COLUMN ceds6sc_rdx.achievement_evidence.achievement_evidence_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.achievement_evidence.achievement_id IS 'Foreign key - Achievement';

COMMENT ON COLUMN ceds6sc_rdx.achievement_evidence.statement IS 'A statement or reference describing the evidence that the learner met the criteria for attainment  of the achievement. [CEDS Element: Achievement Evidence Statement, ID:000901]';

COMMENT ON COLUMN ceds6sc_rdx.achievement_evidence.assessment_subtest_result_id IS 'Foreign key - Assessment_Subtest_Result';

CREATE TABLE ceds6sc_rdx.activity_recognition ( 
	activity_recognition_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_activity_recognition_type_id integer  NOT NULL,
	CONSTRAINT pk_activity_recognition PRIMARY KEY ( activity_recognition_id )
 );

COMMENT ON TABLE ceds6sc_rdx.activity_recognition IS 'Recognition given to the student for accomplishments in a co-curricular, or extra-curricular activity. [CEDS Element: Recognition for Participation or Performance in an Activity, ID:000229]';

COMMENT ON COLUMN ceds6sc_rdx.activity_recognition.activity_recognition_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.activity_recognition.organization_person_role_id IS 'Surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.activity_recognition.ref_activity_recognition_type_id IS 'The nature of recognition given to the student for accomplishments in a co-curricular, or extra-curricular activity. [CEDS Element: Recognition for Participation or Performance in an Activity, ID:000229]';

CREATE TABLE ceds6sc_rdx.ae_provider ( 
	organization_id    integer  NOT NULL,
	ref_level_of_institution_id integer  NOT NULL,
	CONSTRAINT pk_ae_provider PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ae_provider IS 'Information on an adult education provider organization.';

COMMENT ON COLUMN ceds6sc_rdx.ae_provider.organization_id IS 'Inherited surrogate key from Organization.';

COMMENT ON COLUMN ceds6sc_rdx.ae_provider.ref_level_of_institution_id IS 'A classification of whether a postsecondary institution''s highest level of offering is a program of 4-years or higher (4 year), 2-but-less-than 4-years (2 year), or less than 2-years. [CEDS Element: Level of Institution, ID:000178]  (Foreign key - Ref_Level_Of_Institution)';

CREATE TABLE ceds6sc_rdx.ae_student_academic_record ( 
	organization_person_role_id integer  NOT NULL,
	ref_high_school_diploma_type_id integer  ,
	diploma_or_credential_award_date char(7)  ,
	ref_professional_technical_credential_type_id integer  ,
	CONSTRAINT pk_ae_student_academic_record PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ae_student_academic_record IS 'Adult education student''s academic information attributes.';

COMMENT ON COLUMN ceds6sc_rdx.ae_student_academic_record.organization_person_role_id IS 'Inherited surrogate Key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.ae_student_academic_record.ref_high_school_diploma_type_id IS 'The type of diploma/credential that is awarded to a person in recognition of his/her completion of the curricular requirements. [CEDS Element: High School Diploma Type, ID:000138]  (Foreign key - Ref_High_School_Diploma_Type)';

COMMENT ON COLUMN ceds6sc_rdx.ae_student_academic_record.diploma_or_credential_award_date IS 'The month and year on which the diploma/credential is awarded to a student in recognition of his/her completion of the curricular requirements. [CEDS Element: Diploma or Credential Award Date, ID:000081]';

COMMENT ON COLUMN ceds6sc_rdx.ae_student_academic_record.ref_professional_technical_credential_type_id IS 'An indicator of the category of credential conferred by a state occupational licensing entity or industry organization for competency in a specific area measured by a set of pre-established standards. [CEDS Element: Professional or Technical Credential Conferred, ID:000783]  (Foreign key - Ref_Professional_Technical_Credential_Type)';

CREATE TABLE ceds6sc_rdx.apip_interaction ( 
	apip_interaction_id integer  NOT NULL,
	assessment_item_id integer  NOT NULL,
	ref_apip_interaction_type_id integer  ,
	xml                text  ,
	sequence_number    integer  ,
	apip_interaction_sequence_number decimal(9,2)  ,
	CONSTRAINT pk_apip_interaction PRIMARY KEY ( apip_interaction_id )
 );

COMMENT ON TABLE ceds6sc_rdx.apip_interaction IS 'Accessible portable item protocol interaction.';

COMMENT ON COLUMN ceds6sc_rdx.apip_interaction.apip_interaction_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.apip_interaction.assessment_item_id IS 'Foreign key - Assessment_Item';

COMMENT ON COLUMN ceds6sc_rdx.apip_interaction.ref_apip_interaction_type_id IS 'The assessment item body interaction type as defined by IMS Global specifications. [CEDS Element: Assessment Item Interaction Type, ID:001158]  (Foreign key - Ref_Apip_Interaction_Type)';

COMMENT ON COLUMN ceds6sc_rdx.apip_interaction.xml IS 'The custom (001102) or associate (001123) interaction provides an opportunity for extensibility of this specification to include support for interactions not currently documented.  The XML from the IMS Global APIP Specification would be included. [CEDS Element: Assessment Item Body Custom Interaction XML, ID:001102]';

COMMENT ON COLUMN ceds6sc_rdx.apip_interaction.apip_interaction_sequence_number IS 'The position of this APIP Interaction in a sequence of interactions. [CEDS Element: APIP Interaction Sequence Number, ID:001529]';

CREATE TABLE ceds6sc_rdx.assessment ( 
	assessment_id      integer  NOT NULL,
	identifier         varchar(40)  ,
	identification_system integer  ,
	guid               varchar(40)  ,
	title              varchar(60)  ,
	short_name         varchar(30)  ,
	ref_academic_subject_id integer  NOT NULL,
	objective          varchar(100)  ,
	provider           varchar(30)  ,
	ref_assessment_purpose_id integer  ,
	ref_assessment_type_id integer  ,
	ref_assessment_type_children_with_disabilities_id integer  ,
	assessment_revision_date date  ,
	assessment_family_title varchar(60)  NOT NULL,
	assessment_family_short_name varchar(30)  ,
	CONSTRAINT pk_assessment PRIMARY KEY ( assessment_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment IS 'An instrument used to evaluate a person with at least one form, section, and Assessment Item. (A summative assessment typically addresses a particular level, subject, and date range. A person''s individual responses during the summative assessment administration are evaluated then the results are scored using one or more Assessment Sub Test Scoring Rules.) ';

COMMENT ON COLUMN ceds6sc_rdx.assessment.assessment_id IS 'PK';

COMMENT ON COLUMN ceds6sc_rdx.assessment.identifier IS 'A unique number or alphanumeric code assigned to an assessment by a school, school system, a state, or other agency or entity.  This may be the publisher identifier. [CEDS Element: Assessment Identifier, ID:001067]';

COMMENT ON COLUMN ceds6sc_rdx.assessment.identification_system IS 'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to an assessment. [CEDS Element: Assessment Identification System, ID:000365]';

COMMENT ON COLUMN ceds6sc_rdx.assessment.guid IS 'The globally unique identifier of an Assessment using a RFC 4122 compliant 32-character hexadecimal string, such as 21EC2020-3AEA-1069-A2DD-08002B30309D. [CEDS Element: Assessment GUID, ID:000981]';

COMMENT ON COLUMN ceds6sc_rdx.assessment.title IS 'The title or name of the assessment. [CEDS Element: Assessment Title, ID:000028]';

COMMENT ON COLUMN ceds6sc_rdx.assessment.short_name IS 'An abbreviated title for an assessment. [CEDS Element: Assessment Short Name, ID:000931]';

COMMENT ON COLUMN ceds6sc_rdx.assessment.ref_academic_subject_id IS 'The description of the academic content or subject area (e.g., arts, mathematics, reading, or a foreign language) being evaluated. [CEDS Element: Assessment Academic Subject, ID:000021]  (Foreign key - Ref_Academic_Subject)';

COMMENT ON COLUMN ceds6sc_rdx.assessment.objective IS 'This is the objective that the assessment is measuring. [CEDS Element: Assessment Objective, ID:000382]';

COMMENT ON COLUMN ceds6sc_rdx.assessment.provider IS 'Identifies the provider or publisher of the assessment. [CEDS Element: Assessment Provider, ID:001006]';

COMMENT ON COLUMN ceds6sc_rdx.assessment.ref_assessment_purpose_id IS 'The reason for which an assessment is designed or delivered. [CEDS Element: Assessment Purpose, ID:000026]  (Foreign key - Ref_Assessment_Purpose)';

COMMENT ON COLUMN ceds6sc_rdx.assessment.ref_assessment_type_id IS 'The category of an assessment based on format and content. [CEDS Element: Assessment Type, ID:000029]  (Foreign key - Ref_Assessment_Type)';

COMMENT ON COLUMN ceds6sc_rdx.assessment.ref_assessment_type_children_with_disabilities_id IS 'The types of assessments administered to children with disabilities. [CEDS Element: Assessment Type Administered to Children With Disabilities, ID:000415]  (Foreign key - Ref_Assessment_Type_Children_With_Disabilities)';

COMMENT ON COLUMN ceds6sc_rdx.assessment.assessment_revision_date IS 'The month, day, and year that the conceptual design for the assessment was most recently revised substantially. [CEDS Element: Assessment Revision Date, ID:001544]';

COMMENT ON COLUMN ceds6sc_rdx.assessment.assessment_family_title IS 'The full title of the Assessment Family. An Assessment Family is a set of assessments with a common name, jurisdiction, or focus, such as Graduate Record Exam or National Assessment of Educational Progress. [CEDS Element: Assessment Family Title, ID:000932]';

COMMENT ON COLUMN ceds6sc_rdx.assessment.assessment_family_short_name IS 'The abbreviated title of the Assessment Family. An Assessment Family is a set of assessments with a common name, jurisdiction, or focus. [CEDS Element: Assessment Family Short Name, ID:000933]';

CREATE TABLE ceds6sc_rdx.assessment_administration_organization ( 
	assessment_administration_organization_id integer  NOT NULL,
	assessment_administration_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	CONSTRAINT pk_assessment_administration_organization PRIMARY KEY ( assessment_administration_organization_id ),
	CONSTRAINT ix_assessment_administration_organization UNIQUE ( assessment_administration_id, organization_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_administration_organization IS 'Association of an Assessment Administration to one or more Organizations.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_administration_organization.assessment_administration_organization_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_administration_organization.assessment_administration_id IS 'Foreign key - Assessment_Administration';

COMMENT ON COLUMN ceds6sc_rdx.assessment_administration_organization.organization_id IS 'Foreign key - Organization';

CREATE TABLE ceds6sc_rdx.assessment_asset ( 
	assessment_asset_id integer  NOT NULL,
	version            varchar(30)  ,
	published_date     date  ,
	identifier         varchar(40)  ,
	ref_assessment_assest_identifier_type integer  ,
	name               varchar(60)  ,
	ref_assessment_asset_type_id integer  ,
	owner              varchar(60)  ,
	ref_assessment_language_id integer  ,
	content_xml        text  ,
	content_mime_type  text  ,
	content_url        varchar(300)  ,
	learning_resource_id integer  ,
	CONSTRAINT pk_assessment_asset PRIMARY KEY ( assessment_asset_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_asset IS 'Content used to compose an assessment item, is referenced by an item but not part of the item content itself, or is content that is included as part of a section within an assessment form. Assets can be static content such as art work or dynamic assets such as calculators or other tools.
';

COMMENT ON COLUMN ceds6sc_rdx.assessment_asset.assessment_asset_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_asset.version IS 'A version number or label defined by the publisher. [CEDS Element: Assessment Asset Version, ID:001195]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_asset.published_date IS 'The date that this version of the asset was made available for use. [CEDS Element: Assessment Asset Published Date, ID:001197]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_asset.identifier IS 'A unique code identifying the Assessment Asset provided by the authoring system. [CEDS Element: Assessment Asset Identifier, ID:001198]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_asset.ref_assessment_assest_identifier_type IS 'The type of identifier that is provided for this asset. [CEDS Element: Assessment Asset Identifier Type, ID:001199]  (Foreign key - Ref_Assessment_Asset_Identifier_Type)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_asset.name IS 'The name of the Assessment Asset. [CEDS Element: Assessment Asset Name, ID:001200]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_asset.ref_assessment_asset_type_id IS 'Specifies a predominant type of assessment asset represented by the Learning Resource.  Assessment assets represent any content used to compose an assessment item, is referenced by an item but not part of the item content itself, or is content that is included as part of a section within an assessment form. Assets can be static content such as art work or dynamic assets such as calculators. [CEDS Element: Assessment Asset Type, ID:001196]  (Foreign key - Ref_Assessment_Asset_Type)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_asset.owner IS 'The name of the ownership rights holder or publisher of the asset. [CEDS Element: Assessment Asset Owner, ID:001201]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_asset.ref_assessment_language_id IS 'Surrogate key from Ref_Language.  The language in which the assessment form is designed to be delivered. [CEDS Element: Assessment Language, ID:001089]  (Foreign key - Ref_Language)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_asset.content_xml IS 'XML encoded in UTF-8 representing the content of the Assessment Asset. [CEDS Element: Assessment Asset Content XML, ID:001202]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_asset.content_mime_type IS 'MIME type to specifically indicate the Assessment Asset content type. [CEDS Element: Assessment Asset Content Mime Type, ID:001203]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_asset.content_url IS 'The Uniform Resource Locator (URL) location of the external Assessment Asset content. [CEDS Element: Assessment Asset Content URL, ID:001204]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_asset.learning_resource_id IS 'Foreign key - Learning_Resource.';

CREATE TABLE ceds6sc_rdx.assessment_form ( 
	assessment_form_id integer  NOT NULL,
	assessment_id      integer  NOT NULL,
	form_number        varchar(30)  ,
	name               varchar(40)  ,
	version            varchar(30)  ,
	published_date     date  ,
	accommodation_list text  ,
	intended_administration_start_date date  ,
	intended_administration_end_date date  ,
	assessment_item_bank_identifier varchar(40)  ,
	assessment_item_bank_name varchar(60)  ,
	platforms_supported text  ,
	ref_assessment_language_id integer  ,
	assessment_secure_indicator bool  ,
	learning_resource_id integer  ,
	assessment_form_adaptive_indicator bool  ,
	assessment_form_algorithm_identifier varchar(40)  ,
	assessment_form_algorithm_version varchar(40)  ,
	assessment_form_guid varchar(40)  ,
	CONSTRAINT pk_assessment_form PRIMARY KEY ( assessment_form_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_form IS 'An instance of an assessment that can equate scores with another instance of that same assessment. ';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.assessment_form_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.assessment_id IS 'Foreign key - Assessment';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.form_number IS 'The number of a given assessment form. [CEDS Element: Assessment Form Number, ID:000366]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.name IS 'The name of a given assessment form. [CEDS Element: Assessment Form Name, ID:000024]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.version IS 'The version number of the Assessment Form. [CEDS Element: Assessment Form Version, ID:001183]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.published_date IS 'The published date of an educational resource, such as instructional media, an assessment form, or section of an assessment form. [CEDS Element: Learning Resource Published Date, ID:001184]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.accommodation_list IS 'The human readable list of one or more of the specific accommodations available. If no accommodations are provided, then this list will not be present. [CEDS Element: Assessment Form Accommodation List, ID:001185]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.intended_administration_start_date IS 'The beginning date of the time period in which the form is intended to be administered. [CEDS Element: Intended Administration Start Date, ID:001186]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.intended_administration_end_date IS 'The ending date of the time period in which the form is intended to be administered. [CEDS Element: Assessment Form Intended Administration End Date, ID:001187]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.assessment_item_bank_identifier IS 'If the assessment is provided with an item bank, then this identifies the item bank: a unique code or number used by the item banking system. [CEDS Element: Assessment Item Bank Identifier, ID:001181]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.assessment_item_bank_name IS 'If the assessment is provided with an item bank, then this is the name of the item bank. [CEDS Element: Assessment Item Bank Name, ID:001182]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.platforms_supported IS 'A human readable list of delivery platforms the form will support. [CEDS Element: Assessment Form Platforms Supported, ID:001188]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.ref_assessment_language_id IS 'The language in which the assessment form is designed to be delivered. [CEDS Element: Assessment Language, ID:001089]  (Foreign key - Ref_Language)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.assessment_secure_indicator IS 'Indicates whether or not the assessment is a secure assessment. [CEDS Element: Assessment Secure Indicator, ID:000384]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.learning_resource_id IS 'Foreign key - Learning_Resouce';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.assessment_form_adaptive_indicator IS 'Indicates that the assessment form was generated using an algorithm rather than a fixed form. [CEDS Element: Assessment Form Adaptive Indicator, ID:001532]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.assessment_form_algorithm_identifier IS 'An identifier for algorithm used to generate a custom form for an adaptive test. [CEDS Element: Assessment Form Algorithm Identifier, ID:001533]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.assessment_form_algorithm_version IS 'The version of the algorithm used to generate a custom form for an adaptive test. [CEDS Element: Assessment Form Algorithm Version, ID:001534]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form.assessment_form_guid IS 'The globally unique identifier of an Assessment Form. [CEDS Element: Assessment Form GUID, ID:001535]';

CREATE TABLE ceds6sc_rdx.assessment_form_assessment_form_section ( 
	assessment_form_assessment_form_section_id integer  NOT NULL,
	assessment_form_id integer  NOT NULL,
	assessment_form_section_id integer  NOT NULL,
	sequence_number    integer  ,
	CONSTRAINT pk_assessment_form_assessment_form_section PRIMARY KEY ( assessment_form_assessment_form_section_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_form_assessment_form_section IS 'The association of an Assessment_Form to one or many Assessment_Form_Sections.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_assessment_form_section.assessment_form_assessment_form_section_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_assessment_form_section.assessment_form_id IS 'Foreign key - Assessment_Form.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_assessment_form_section.assessment_form_section_id IS 'Foreign key - Assessment_Form_Section';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_assessment_form_section.sequence_number IS 'The position of the assessment section presented in the sequence of sections within an assessment form. [CEDS Element: Assessment Form Section Sequence Number, ID:000979]';

CREATE TABLE ceds6sc_rdx.assessment_form_section_assessment_asset ( 
	assessment_form_section_assessment_asset_id integer  NOT NULL,
	assessment_form_section_id integer  NOT NULL,
	assessment_asset_id integer  NOT NULL,
	CONSTRAINT pk_assessment_form_section_assessment_asset_1 PRIMARY KEY ( assessment_form_section_assessment_asset_id ),
	CONSTRAINT ix_assessment_form_section_assessment_asset UNIQUE ( assessment_form_section_id, assessment_asset_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_form_section_assessment_asset IS 'The association of an Assessment Form Section to an Assessment Asset.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section_assessment_asset.assessment_form_section_assessment_asset_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section_assessment_asset.assessment_form_section_id IS 'Foreign key - Assessment_Form_Section';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section_assessment_asset.assessment_asset_id IS 'Foreign key - Assessment_Asset';

CREATE TABLE ceds6sc_rdx.assessment_item ( 
	assessment_item_id integer  NOT NULL,
	identifier         varchar(40)  ,
	assessment_item_bank_identifier varchar(40)  ,
	assessment_item_bank_name varchar(60)  ,
	ref_assessment_item_type_id integer  ,
	body_text          text  ,
	stimulus           text  ,
	stem               text  ,
	adaptive_indicator bool  ,
	maximum_score      varchar(300)  ,
	minimum_score      varchar(300)  ,
	distractor_analysis varchar(100)  ,
	allotted_time      time  ,
	ref_naep_math_complexity_level_id integer  ,
	ref_naep_aspects_of_reading_id integer  ,
	difficulty         decimal(5,2)  ,
	ref_text_complexity_system_id integer  ,
	text_complexity_value varchar(30)  ,
	linking_item_indicator bool  ,
	release_status     bool  ,
	rubric_id          integer  ,
	learning_resource_id integer  ,
	assessment_form_section_item_field_test_indicator bool  ,
	CONSTRAINT pk_assessment_item PRIMARY KEY ( assessment_item_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_item IS 'A specific prompt, that defines a question or protocol for a measurable activity that triggers a response from a person used to determine whether the person has mastered a learning objective. ';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.assessment_item_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.identifier IS 'The identifier that uniquely identifies an assessment item. [CEDS Element: Assessment Item Identifier, ID:000630]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.assessment_item_bank_identifier IS 'If the assessment is provided with an item bank, then this identifies the item bank: a unique code or number used by the item banking system. [CEDS Element: Assessment Item Bank Identifier, ID:001181]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.assessment_item_bank_name IS 'If the assessment is provided with an item bank, then this is the name of the item bank. [CEDS Element: Assessment Item Bank Name, ID:001182]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.ref_assessment_item_type_id IS 'The specific type of assessment item. [CEDS Element: Assessment Item Type, ID:000390]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.body_text IS 'The complete text of an assessment item including all applicable parts such as stimulus, stem, and possible response options presented. [CEDS Element: Assessment Item Body Text, ID:001267]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.stimulus IS 'The text, source (e.g., video clip), and/or graphic about which the assessment item is written. The stimulus provides the context of the item/task to which the student must respond. [CEDS Element: Assessment Item Stimulus, ID:001268]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.stem IS 'The statement of the question or prompt for an Assessment Item to which the student responds. [CEDS Element: Assessment Item Stem, ID:000400]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.adaptive_indicator IS 'This indicator determines whether an assessment item is an adaptive item. [CEDS Element: Assessment Item Adaptive Indicator, ID:001139]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.maximum_score IS 'The maximum number of points possible for the assessment item. [CEDS Element: Assessment Item Maximum Score, ID:000707]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.minimum_score IS 'The minimum number of points possible for the assessment item. [CEDS Element: Assessment Item Minimum Score, ID:000708]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.distractor_analysis IS 'The analysis of the distractors provided for a specific assessment. [CEDS Element: Assessment Item Distractor Analysis, ID:000398]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.allotted_time IS 'The amount of time allotted for a specific item. [CEDS Element: Assessment Item Allotted Time, ID:000403]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.ref_naep_math_complexity_level_id IS 'Complexity levels defined by the National Assessment of Educational Progress (NAEP 2005a Framework). [CEDS Element NAEP Mathematical Complexity Level, ID:001088]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.ref_naep_aspects_of_reading_id IS 'Aspects of reading defined by the National Assessment of Educational Progress (NAEP 2005b Framework). [CEDS Element: NAEP Aspects of Reading, ID:001122]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.difficulty IS 'The percentage of students who answered the item correctly during trial testing of the item. [CEDS Element: Assessment Item Difficulty, ID:000391]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.ref_text_complexity_system_id IS 'The scaling system used to specify the text complexity of an assessment item. [CEDS Element: Assessment Item Text Complexity System, ID:000907]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.text_complexity_value IS 'The complexity of the text using the scaling system defined by Text Complexity System, e.g. Lexile™ for assessment items with a reading passage. [CEDS Element: Assessment Item Text Complexity Value, ID:000906]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.linking_item_indicator IS 'Indicates that the item is intended to be administered in two different grades for the goal of establishing cross grade comparison. [CEDS Element: Assessment Item Linking Item Indicator, ID:001261]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.release_status IS 'Indicates that the assessment item has been released to the public. [CEDS Element: Assessment Item Release Status, ID:001263]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.rubric_id IS 'Foreign key - Assessment_Item_Rubric';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.learning_resource_id IS 'Foreign key - Learning_Resource';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item.assessment_form_section_item_field_test_indicator IS 'Indicates that the assessment item is being field tested on this form of the test, and is not to be included for scoring. [CEDS Element: Assessment Form Section Item Field Test Indicator, ID:001536]';

CREATE TABLE ceds6sc_rdx.assessment_item_apip_description ( 
	assessment_item_id integer  NOT NULL,
	ref_hazard_type_id integer  ,
	ref_support_tool_type_id integer  ,
	cognitive_guidance_activate_by_default_indicator bool  ,
	cognitive_guidance_assigned_support_indicator bool  ,
	scaffolding_assigned_support_indicator bool  ,
	scaffolding_activate_by_default_indicator bool  ,
	chunking_assigned_support_indicator bool  ,
	chunking_activate_by_default_indicator bool  ,
	keyword_emphasis_assigned_support_indicator bool  ,
	keyword_emphasis_activate_by_default_indicator bool  ,
	reduced_answers_assigned_support_indicator bool  ,
	reduced_answers_activate_by_default_indicator bool  ,
	negatives_removed_assigned_support_indicator bool  ,
	negatives_removed_activate_by_default_indicator bool  ,
	ref_keyword_translation_language_id integer  ,
	keyword_translations_assigned_support_indicator bool  ,
	keyword_translations_activate_by_default_indicator bool  ,
	braille_indicator  bool  ,
	text_only_indicator bool  ,
	text_only_on_demand_indicator bool  ,
	text_graphics_indicator bool  ,
	graphics_only_indicator bool  ,
	non_visual_indicator bool  ,
	asl_indicator      bool  ,
	asl_on_demand_indicator bool  ,
	signed_english_indicator bool  ,
	signed_english_on_demand_indicator bool  ,
	CONSTRAINT pk_assessment_item_apip_description PRIMARY KEY ( assessment_item_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_apip_description.assessment_item_id IS 'Surrogate key from Assessment_Item';

CREATE TABLE ceds6sc_rdx.assessment_item_possible_response ( 
	assessment_item_possible_response_id integer  NOT NULL,
	assessment_item_id integer  NOT NULL,
	possible_response_option text  ,
	value              varchar(300)  ,
	correct_indicator  bool  ,
	feedback_message   varchar(300)  ,
	sequence_number    integer  ,
	CONSTRAINT pk_assessment_item_possible_response PRIMARY KEY ( assessment_item_possible_response_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_item_possible_response IS 'The collection of possible response options and values for an assessment item.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_possible_response.assessment_item_possible_response_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_possible_response.assessment_item_id IS 'Foreign key - Assessment_Item.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_possible_response.possible_response_option IS 'The possible response presented to the participant within a selected-response/multiple-choice assessment item. [CEDS Element: Assessment Item Possible Response Option, ID:001269]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_possible_response.value IS 'The description of each distracter on an assessment item, explaining why it is there, what misunderstandings it exposes. [CEDS Element: Assessment Item Possible Response Value, ID:000908]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_possible_response.correct_indicator IS 'Indicates that the possible response is the correct response. [CEDS Element: Assessment Item Possible Response Correct Indicator, ID:001217]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_possible_response.feedback_message IS 'A message provided to the person being assessed after giving a response that matches the possible response. [CEDS Element: Assessment Item Possible Response Feedback Message, ID:000904]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_possible_response.sequence_number IS 'The position of this response in the list of responses displayed, such as for a multiple choice item type. [CEDS Element: Assessment Item Possible Response Sequence Number, ID:000905]';

CREATE TABLE ceds6sc_rdx.assessment_item_response_theory ( 
	assessment_item_id integer  NOT NULL,
	parameter_a        integer  ,
	parameter_b        integer  ,
	ref_item_response_theory_difficulty_category_id integer  ,
	parameter_c        integer  ,
	parameter_d1       integer  ,
	parameter_d2       integer  ,
	parameter_d3       integer  ,
	parameter_d4       integer  ,
	parameter_d5       integer  ,
	parameter_d6       integer  ,
	point_biserial_correlation_value integer  ,
	dif_value          integer  ,
	kappa_value        integer  ,
	ref_item_response_theory_kappa_algorithm_id integer  ,
	CONSTRAINT pk_assessment_item_response_theory PRIMARY KEY ( assessment_item_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.assessment_item_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.parameter_a IS 'The Item Response Theory value representing the discrimination of the item. The a parameter is found by taking the slope of the line tangent to the item characteristic curve at the inflection point, B. The parameter is the steepness of the curve at its steepest point. [CEDS Element: Assessment Item Response Theory Parameter A, ID:001251]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.parameter_b IS 'The Item Response Theory value representing the difficulty of the item.   It is the Theta value for the location of the inflection point of the item characteristic curve. [CEDS Element: Assessment Item Response Theory Parameter B, ID:001252]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.ref_item_response_theory_difficulty_category_id IS 'A category for the difficulty of the item based on the Item Response Theory value. [CEDS Element: Assessment Item Response Theory Parameter Difficulty Category, ID:001253]  (Foreign key - Ref_Item_Response_Theory_Difficulty_Category)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.parameter_c IS 'The Item Response Theory value for multiple choice items representing the guessing of the item.  The c parameter is a lower asymptote. It is the low point of the curve as it move to negative infinity on the horizontal axis. You can think of c as the probability that a chicken would get the item right. [CEDS Element: Assessment Item Response Theory Parameter C, ID:001254]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.parameter_d1 IS 'For   polytomous assessment items with more than two possible responses, this is the item response theory value representing the threshold between the first and second item characteristic functions. [CEDS Element: Assessment Item Response Theory Parameter D1, ID:001255]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.parameter_d2 IS 'For   polytomous assessment items with more than two possible responses, this is the item response theory value representing the threshold between the second and third item characteristic functions. [CEDS Element: Assessment Item Response Theory Parameter D2, ID:001256]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.parameter_d3 IS 'For   polytomous assessment items with more than three possible responses, this is the item response theory value representing the threshold between the third and fourth item characteristic functions. [CEDS Element: Assessment Item Response Theory Parameter D3, ID:001257]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.parameter_d4 IS 'For   polytomous assessment items with more than four possible responses, this is the item response theory value representing the threshold between the fourth and fifth item characteristic functions. [CEDS Element: Assessment Item Response Theory Parameter D4, ID:001258]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.parameter_d5 IS 'For   polytomous assessment items with more than five possible responses, this is the item response theory value representing the threshold between the fifth and sixth item characteristic functions. [CEDS Element: Assessment Item Response Theory Parameter D5, ID:001259]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.parameter_d6 IS 'For   polytomous assessment items with more than six possible responses, this is the item response theory value representing the threshold between the sixth and seventh item characteristic functions. [CEDS Element: Assessment Item Response Theory Parameter D6, ID:001260]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.point_biserial_correlation_value IS 'The correlation between correct answers on this item and total correct answers on the test during a previous administration.  [CEDS Element: Assessment Item Response Theory Point Biserial Correlation Value, ID:001262]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.dif_value IS 'A value representing the Differential Item Functioning, also referred to as  measurement bias, for the assessment item.  The value represents differences in the functioning of the item across groups which are matched on the attribute being measure by the item.  The value is calculated using Mantel-Haenszel approach or a comparable algorithm so that a value of 1.0 represents no bias. [CEDS Element: Assessment Item Response Theory DIF Value, ID:001264]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.kappa_value IS 'The measure used to represent the degree of agreement among raters. [CEDS Element: Assessment Item Response Theory Kappa Value, ID:001265]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response_theory.ref_item_response_theory_kappa_algorithm_id IS 'The algorithm used to derive the Assessment Item Kappa Value [CEDS Element: Assessment Item Response Theory Kappa Algorithm, ID:001266]  (Foreign key - Ref_Item_Response_Theory_Kappa_Algorithm)';

CREATE TABLE ceds6sc_rdx.assessment_language ( 
	assessment_language_id integer  NOT NULL,
	assessment_id      integer  NOT NULL,
	ref_language_id    integer  NOT NULL,
	CONSTRAINT pk_assessment_language_1 PRIMARY KEY ( assessment_language_id ),
	CONSTRAINT ix_assessment_language UNIQUE ( assessment_id, ref_language_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_language IS 'The association of an Assessment to one or more languages.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_language.assessment_language_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_language.assessment_id IS 'Foreign key - Assessment';

COMMENT ON COLUMN ceds6sc_rdx.assessment_language.ref_language_id IS 'Foreign key - Ref_Language';

CREATE TABLE ceds6sc_rdx.assessment_need_apip_content ( 
	assessment_need_apip_content_id integer  NOT NULL,
	assessment_personal_needs_profile_content_id integer  NOT NULL,
	item_translation_display_language_type_id integer  ,
	keyword_translation_language_type_id integer  ,
	ref_assessment_need_signing_type_id integer  ,
	ref_assessment_need_alternative_representation_type_id integer  ,
	ref_assessment_need_spoken_source_preference_type_id integer  ,
	read_at_start_preference_indicator bool  ,
	ref_assessment_need_user_spoken_preference_type_id integer  ,
	assessment_need_directions_only_indicator bool  ,
	CONSTRAINT pk_assessment_need_apip_content PRIMARY KEY ( assessment_need_apip_content_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_need_apip_content IS 'Used as part of an Assessment Personal Needs Profile to define the content preferences and representation.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_content.assessment_need_apip_content_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_content.assessment_personal_needs_profile_content_id IS 'Foreign key - Assessment_Personal_Needs_Profile_Content';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_content.item_translation_display_language_type_id IS 'Defines as part of an Assessment Personal Needs Profile the default language for the displayed translation. [CEDS Element: Assessment Need Item Translation Display Language Type, ID:001038]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_content.keyword_translation_language_type_id IS 'Defines as part of an Assessment Personal Needs Profile the default language for the keyword translation. [CEDS Element: Assessment Need Keyword Translation Language Type, ID:001039]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_content.ref_assessment_need_signing_type_id IS 'Defines as part of an Assessment Personal Needs Profile the type of signing preferred by the user. [CEDS Element: Assessment Need Signing Type, ID:001040]  (Foreign key - Assessment_Need_Apip_Content)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_content.ref_assessment_need_alternative_representation_type_id IS 'Defines as part of an Assessment Personal Needs Profile the default presentation mode of the associated Alternative Representations accessibility. [CEDS Element: Assessment Need Alternative Representation Type, ID:001041]  (Foreign key - Ref_Assessment_Need_Alternative_Representation_Type)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_content.ref_assessment_need_spoken_source_preference_type_id IS 'Defines as part of an Assessment Personal Needs Profile the preferred spoken audio form. [CEDS Element: Assessment Need Spoken Source Preference Type, ID:001042] (Foreign key - Assessment_Need_Spoken_Source_Preference_Type)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_content.read_at_start_preference_indicator IS 'Used as part of an Assessment Personal Needs Profile to define if the spoken play-back should commence from the start of a recording or not. [CEDS Element: Assessment Need Read At Start Preference, ID:001043]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_content.ref_assessment_need_user_spoken_preference_type_id IS 'Used as part of an Assessment Personal Needs Profile to define the type of material that should be rendered using the read aloud alternative content. [CEDS Element: Assessment Need User Spoken Preference Type, ID:001044]  (Foreign key - Ref_Assessment_Need_User_Spoken_Preference_Type)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_content.assessment_need_directions_only_indicator IS 'Defines as part of an Assessment Personal Needs Profile whether or not the verbal alternative content presentation should be applied to directive content only. [CEDS Element: Assessment Need Directions Only, ID:001045]';

CREATE TABLE ceds6sc_rdx.assessment_need_apip_display ( 
	assessment_need_apip_display_id integer  NOT NULL,
	assessment_personal_needs_profile_display_id integer  NOT NULL,
	masking_assigned_support_indicator bool  ,
	masking_activate_by_default_indicator bool  ,
	ref_assessment_need_masking_type_id integer  ,
	encouragement_assigned_support_indicator bool  ,
	encouragement_activate_by_default_indicator bool  ,
	encouragement_text_messaging_string varchar(4000)  ,
	encouragement_sound_file_url varchar(300)  ,
	CONSTRAINT pk_assessment_need_apip_display PRIMARY KEY ( assessment_need_apip_display_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_need_apip_display IS 'Used as part of an Assessment Personal Needs Profile to define the display attributes.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_display.assessment_need_apip_display_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_display.assessment_personal_needs_profile_display_id IS 'Foreign key - Assessment_Personal_Needs_Profile_Display';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_display.masking_assigned_support_indicator IS 'Defines whether or not the individual needs the kind of support defined by the entity. [CEDS Element: Assessment Personal Needs Profile Assigned Support, ID:001004]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_display.masking_activate_by_default_indicator IS 'Determines if the alternative accessible content is rendered as the default content for the learner. [CEDS Element: Assessment Personal Needs Profile Activate By Default, ID:001005]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_display.ref_assessment_need_masking_type_id IS 'Specifies as part of an Assessment Personal Needs Profile the type of masks the user is able to create  to cover portions of the question until needed. [CEDS Element: Assessment Need Masking Type, ID:001046]  (Foreign key Ref_Assessment_Need_Masking_Type)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_display.encouragement_assigned_support_indicator IS 'Defines whether or not the individual needs the kind of support defined by the entity. [CEDS Element: Assessment Personal Needs Profile Assigned Support, ID:001004]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_display.encouragement_activate_by_default_indicator IS 'Determines if the alternative accessible content is rendered as the default content for the learner. [CEDS Element: Assessment Personal Needs Profile Activate By Default, ID:001005]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_display.encouragement_text_messaging_string IS 'The text string that is to be displayed to the user as an expression of encouragement when Masking is specified as part of an Assessment Personal Needs Profile.  It is left to the system to determine when to display this string. [CEDS Element: Assessment Need Text Messaging String, ID:001047]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_display.encouragement_sound_file_url IS 'The URI of the sound file that is to be played to the user as an expression of encouragement when Masking is specified as part of an Assessment Personal Needs Profile. It is left to the system to determine when to play this audio file. [CEDS Element: Assessment Need Sound File URL, ID:001048]';

CREATE TABLE ceds6sc_rdx.assessment_participant_session_accommodation ( 
	assessment_participant_session_accommodation_id integer  NOT NULL,
	assessment_participant_session_id integer  NOT NULL,
	ref_assessment_accommodation_type_id integer  NOT NULL,
	ref_assessment_accommodation_category_id integer  ,
	CONSTRAINT pk_assessment_participant_session_accomodation PRIMARY KEY ( assessment_participant_session_accommodation_id ),
	CONSTRAINT ix_assessment_participant_session_accomodation UNIQUE ( assessment_participant_session_id, ref_assessment_accommodation_type_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_participant_session_accommodation IS 'The association of an Assessment Participant Session to one or more Accommodations.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session_accommodation.assessment_participant_session_accommodation_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session_accommodation.assessment_participant_session_id IS 'Foreign key - Assessment_Participant_Session';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session_accommodation.ref_assessment_accommodation_type_id IS 'Foreign key - Ref_Assessment_Accommodation_Type';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session_accommodation.ref_assessment_accommodation_category_id IS 'A category of accommodations needed for a given assessment. [CEDS Element: Assessment Accommodation Category, ID:000383]';

CREATE TABLE ceds6sc_rdx.assessment_personal_need_language_learner ( 
	assessment_personal_need_language_learner_id integer  NOT NULL,
	assessment_needs_profile_content_id integer  NOT NULL,
	assigned_support   bool  ,
	activate_by_default bool  ,
	ref_assessment_needs_profile_content_language_learner_type_id integer  NOT NULL,
	CONSTRAINT pk_assessment_needs_profile_content_language_learner PRIMARY KEY ( assessment_personal_need_language_learner_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_need_language_learner.assessment_personal_need_language_learner_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_need_language_learner.assessment_needs_profile_content_id IS 'Foreign key - Assessment_Needs_Profile_Content';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_need_language_learner.assigned_support IS 'Defines whether or not the individual needs the kind of support defined by the entity. [CEDS Element: Assessment Personal Needs Profile Assigned Support, ID:001004]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_need_language_learner.activate_by_default IS 'Determines if the alternative accessible content is rendered as the default content for the learner. [CEDS Element: Assessment Personal Needs Profile Activate By Default, ID:001005]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_need_language_learner.ref_assessment_needs_profile_content_language_learner_type_id IS 'Foreign key - Ref_Assessment_Need_Language_Learner_Type';

CREATE TABLE ceds6sc_rdx.assessment_registration_accommodation ( 
	assessment_registration_accommodation_id integer  NOT NULL,
	assessment_registration_id integer  NOT NULL,
	ref_assessment_accommodation_type_id integer  NOT NULL,
	other_description  varchar(30)  ,
	ref_assessment_accommodation_category_id integer  ,
	CONSTRAINT pk_assessment_registration_accommodation PRIMARY KEY ( assessment_registration_accommodation_id ),
	CONSTRAINT ix_assessment_registration_accommodation UNIQUE ( assessment_registration_id, ref_assessment_accommodation_type_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_registration_accommodation IS 'The accommodation(s) associated to an Assessment Registration.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration_accommodation.assessment_registration_accommodation_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration_accommodation.assessment_registration_id IS 'Foreign key - Assessment_Registration';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration_accommodation.ref_assessment_accommodation_type_id IS 'Foreign key - Ref_Assessment_Accommodation_Type';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration_accommodation.other_description IS 'The description of the accommodation when ''Assessment Accommodation Type'' is set to ''Other''. [CEDS Element: Assessment Accommodation Other Description, ID:001157]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration_accommodation.ref_assessment_accommodation_category_id IS 'A category of accommodations needed for a given assessment. [CEDS Element: Assessment Accommodation Category, ID:000383]';

CREATE TABLE ceds6sc_rdx.assessment_result_performance_level ( 
	assessment_result_performance_level_id integer  NOT NULL,
	assessment_result_id integer  NOT NULL,
	assessment_performance_level_id integer  NOT NULL,
	CONSTRAINT pk_assessment_result_performance_level PRIMARY KEY ( assessment_result_performance_level_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.assessment_result_performance_level.assessment_result_id IS 'Foreign key to Assessment_Result.  [Related CEDS Elements: Developmental Evaluation Finding (000315), Early Learning Child Developmental Screening Status (000314)]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result_performance_level.assessment_performance_level_id IS 'Foreign key to Assessment_Performance_Level.  [Related CEDS Elements: Developmental Evaluation Finding (000315), Early Learning Child Developmental Screening Status (000314)]';

CREATE TABLE ceds6sc_rdx.assessment_session ( 
	assessment_session_id integer  NOT NULL,
	assessment_administration_id integer  ,
	scheduled_start_date_time date  ,
	scheduled_end_date_time date  ,
	actual_start_date_time date  ,
	actual_end_date_time date  ,
	allotted_time      time  ,
	ref_assessment_session_type_id integer  ,
	security_issue     varchar(300)  ,
	ref_assessment_session_special_circumstance_type_id integer  ,
	special_event_description varchar(60)  ,
	location           varchar(45)  ,
	organization_id    integer  ,
	lea_organization_id integer  ,
	school_organization_id integer  ,
	CONSTRAINT pk_assessment_session PRIMARY KEY ( assessment_session_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_session IS 'Information related to an instance of delivering an assessment during a specific period of time. ';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.assessment_session_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.assessment_administration_id IS 'Foreign key - Assessment_Administration.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.scheduled_start_date_time IS 'Date and time the assessment is scheduled to begin. [CEDS Element: Assessment Session Scheduled Start Date Time, ID:001019]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.scheduled_end_date_time IS 'Date and time the assessment is scheduled to end. [CEDS Element: Assessment Session Scheduled End Date Time, ID:001020]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.actual_start_date_time IS 'Date and time the assessment actually began. [CEDS Element: Assessment Session Actual Start Date Time, ID:001021]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.actual_end_date_time IS 'Date and time the assessment actually ended. [CEDS Element: Assessment Session Actual End Date Time, ID:001022]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.allotted_time IS 'The duration of time allotted for the assessment session. [CEDS Element: Assessment Session Allotted Time, ID:000408]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.ref_assessment_session_type_id IS 'The type of session that is scheduled. [CEDS Element: Assessment Session Type, ID:001018]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.security_issue IS 'The description of a security issue, if any, discovered for an administration of an assessment, such as suspected cheating by a student or a teacher changing answers after a student takes the test. [CEDS Element: Assessment Session Security Issue, ID:000968]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.ref_assessment_session_special_circumstance_type_id IS 'An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc. [CEDS Element: Assessment Session Special Circumstance Type, ID:000389]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.special_event_description IS 'Describes special events that occur before during or after the assessment session that may impact use of results according to rules related to the Assessment Registration Testing Indicator. [CEDS Element: Assessment Session Special Event Description, ID:001093]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.location IS 'The description of the place where an assessment is administered. [CEDS Element: Assessment Session Location, ID:000597]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.lea_organization_id IS 'Foreign key - Organization : Local Education Agency';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session.school_organization_id IS 'Foreign key - Organization : School';

CREATE TABLE ceds6sc_rdx.assessment_subtest ( 
	assessment_subtest_id integer  NOT NULL,
	identifier         varchar(40)  ,
	ref_assessment_subtest_identifier_type_id integer  ,
	title              varchar(60)  ,
	version            varchar(30)  ,
	published_date     date  ,
	abbreviation       varchar(30)  ,
	ref_score_metric_type_id integer  ,
	minimum_value      varchar(30)  ,
	maximum_value      varchar(30)  ,
	optimal_value      varchar(30)  ,
	tier               integer  ,
	container_only     varchar(30)  ,
	ref_assessment_purpose_id integer  ,
	description        varchar(60)  ,
	rules              text  ,
	ref_content_standard_type_id integer  ,
	ref_academic_subject_id integer  ,
	child_of_assessment_subtest_id integer  ,
	assessment_form_id integer  ,
	CONSTRAINT xpk_assessment_sub_test PRIMARY KEY ( assessment_subtest_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_subtest IS 'Information for scoring an Assessment Form based on a set of Assessment Item responses with explicit rules to produce an Assessment Subtest Result, which may be for the entire Assessment Form or one aspect of evaluation based on a subset of Assessment Items. ';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.assessment_subtest_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.identifier IS 'A unique number or alphanumeric code assigned to an assessment subtest. [CEDS Element: Assessment Subtest Identifier, ID:000367]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.ref_assessment_subtest_identifier_type_id IS 'The type of identifier that is provided for a Subtest. [CEDS Element: Assessment Subtest Identifier Type, ID:001014]  (Foreign key - Assessment_Subtest_Identifier_Type)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.title IS 'The name or title of the subtest. [CEDS Element: Assessment Subtest Title, ID:000275]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.version IS 'The version of the subtest that is included for the assessment. [CEDS Element: Assessment Subtest Version, ID:000388]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.published_date IS 'The date on which the Subtest was published. [CEDS Element: Assessment Subtest Published Date, ID:001091]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.abbreviation IS 'The shortened name identifying the assessment for use in reference and/or reports. [CEDS Element: Assessment Subtest Abbreviation, ID:000368]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.ref_score_metric_type_id IS 'The specific method used to report the performance and achievement of the assessment. This is the metric that is being used to derive the scores. [CEDS Element: Assessment Score Metric Type, ID:000369]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.minimum_value IS 'The maximum value for the measurement. [CEDS Element: Assessment Subtest Maximum Value, ID:000396]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.maximum_value IS 'The minimum value possible for the measurement. [CEDS Element: Assessment Subtest Minimum Value, ID:000395]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.optimal_value IS 'The optimal value for this measurement. [CEDS Element: Assessment Subtest Optimal Value, ID:000397]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.tier IS 'In a hierarchy of subtests, this element represents the level of the sub test in the hierarchy.  The top tier and default is zero. [CEDS Element: Assessment Form Subtest Tier, ID:001214]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.container_only IS 'In a hierarchy of subtests, this indicates that this tier is only used as a level in the hierarchy and does not represent a scoring model. [CEDS Element: Assessment Form Subtest Container Only, ID:001215]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.ref_assessment_purpose_id IS 'The reason for which an assessment is designed or delivered. [CEDS Element: Assessment Purpose, ID:000026]  (Foreign key - Ref_Assessment_Purpose)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.description IS 'The description of the subtest (e.g., vocabulary, measurement, or geometry). [CEDS Element: Assessment Subtest Description, ID:000274]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.rules IS 'A description of the rules to produce a student test/subtest score from for a grouping of student item scores. [CEDS Element: Assessment Subtest Rules, ID:000719]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.ref_content_standard_type_id IS 'An indication as to whether an assessment conforms to a standard. [CEDS Element: Assessment Content Standard Type, ID:000605]  (Foreign key - Ref_Content_Standard_Type)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.ref_academic_subject_id IS 'The description of the academic content or subject area (e.g., arts, mathematics, reading, or a foreign language) being evaluated. [CEDS Element: Assessment Academic Subject, ID:000021]  (Foreign key - Ref_Academic_Subject)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.child_of_assessment_subtest_id IS 'Foreign key - Assessment_Subtest ';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest.assessment_form_id IS 'Foreign key - Assessment_Form';

CREATE TABLE ceds6sc_rdx.assessment_subtest_el_developmental_domain ( 
	assessment_subtest_el_developmental_domain_id integer  NOT NULL,
	assessment_subtest_id integer  NOT NULL,
	ref_assessment_el_developmental_domain_id integer  NOT NULL,
	CONSTRAINT pk_assessment_subtest_el_developmental_domain PRIMARY KEY ( assessment_subtest_el_developmental_domain_id ),
	CONSTRAINT ix_assessment_subtest_el_developmental_domain UNIQUE ( assessment_subtest_id, ref_assessment_el_developmental_domain_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_subtest_el_developmental_domain IS 'Developmental domains related to early learning and used for assessing a child''s kindergarten readiness. [CEDS Element: Assessment Early Learning Developmental Domain, ID:001000]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_el_developmental_domain.assessment_subtest_el_developmental_domain_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_el_developmental_domain.assessment_subtest_id IS 'Foreign key - Assessment';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_el_developmental_domain.ref_assessment_el_developmental_domain_id IS 'Foreign key - Ref_Assessment_EL_Developmental_Domain';

CREATE TABLE ceds6sc_rdx.assessment_subtest_levels_for_which_designed ( 
	assessment_subtest_levels_for_which_designed_id integer  NOT NULL,
	assessment_sub_test_id integer  NOT NULL,
	ref_grade_id       integer  NOT NULL,
	CONSTRAINT pk_assessment_subtest_levels_for_which_designed PRIMARY KEY ( assessment_subtest_levels_for_which_designed_id ),
	CONSTRAINT ix_assessment_subtest_levels_for_which_designed UNIQUE ( assessment_sub_test_id, ref_grade_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_subtest_levels_for_which_designed IS 'Association of an Assessment Subtest to one or more Grade Levels.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_levels_for_which_designed.assessment_subtest_levels_for_which_designed_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_levels_for_which_designed.assessment_sub_test_id IS 'Foreign key - Assessment_Subtest';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_levels_for_which_designed.ref_grade_id IS 'Foreign key - Ref_Grade_Level';

CREATE TABLE ceds6sc_rdx.authorization ( 
	authorization_id   integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	application_id     integer  ,
	application_role_name varchar(60)  NOT NULL,
	start_date         date  ,
	end_date           date  ,
	CONSTRAINT pk_authorization PRIMARY KEY ( authorization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.authorization IS 'The CEDS entity that includes information about a data system or application which an authenticated person may access. ';

COMMENT ON COLUMN ceds6sc_rdx.authorization.authorization_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.authorization.organization_person_role_id IS 'Foreign key - Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.authorization.application_id IS 'Foreign key - Application';

COMMENT ON COLUMN ceds6sc_rdx.authorization.application_role_name IS 'The user role for which the person is allowed. [CEDS Element: Authorization Application Role Name, ID:001175]';

COMMENT ON COLUMN ceds6sc_rdx.authorization.start_date IS 'The date on which the  an associated person  is authorized to start using the application with the specified role. [CEDS Element: Authorization Start Date, ID:001176]';

COMMENT ON COLUMN ceds6sc_rdx.authorization.end_date IS 'The date after which the  an associated person is no longer allowed to use the application with the specified role. [CEDS Element: Authorization End Date, ID:001177]';

CREATE TABLE ceds6sc_rdx.competency_item_competency_set ( 
	competency_item_competency_set_id integer  NOT NULL,
	learning_standard_item_id integer  NOT NULL,
	competency_set_id  integer  NOT NULL,
	CONSTRAINT pk_competency_item_competency_set PRIMARY KEY ( competency_item_competency_set_id ),
	CONSTRAINT ix_competency_item_competency_set UNIQUE ( learning_standard_item_id, competency_set_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.competency_item_competency_set IS 'The association of a learning standard item (competency item) to a competency set.';

COMMENT ON COLUMN ceds6sc_rdx.competency_item_competency_set.competency_item_competency_set_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.competency_item_competency_set.learning_standard_item_id IS 'Foreign key - Learning_Standard_Item';

COMMENT ON COLUMN ceds6sc_rdx.competency_item_competency_set.competency_set_id IS 'Foreign key - Competency_Set';

CREATE TABLE ceds6sc_rdx.core_knowledge_area ( 
	core_knowledge_area_id integer  NOT NULL,
	professional_development_activity_id integer  NOT NULL,
	ref_core_knowledge_area_id integer  NOT NULL,
	CONSTRAINT pk_core_knowledge_area PRIMARY KEY ( core_knowledge_area_id ),
	CONSTRAINT ix_core_knowledge_area UNIQUE ( professional_development_activity_id, ref_core_knowledge_area_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.core_knowledge_area IS 'The core knowledge areas addressed by a professional development activity.';

COMMENT ON COLUMN ceds6sc_rdx.core_knowledge_area.core_knowledge_area_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.core_knowledge_area.professional_development_activity_id IS 'Foreign key - Ref_Professional_Development_Activity';

COMMENT ON COLUMN ceds6sc_rdx.core_knowledge_area.ref_core_knowledge_area_id IS 'A description of the core knowledge areas addressed by professional development. [CEDS Element: Early Learning Core Knowledge Area, ID:000813]';

CREATE TABLE ceds6sc_rdx.course_section ( 
	organization_id    integer  NOT NULL,
	available_carnegie_unit_credit decimal(9,2)  ,
	ref_course_section_delivery_mode_id integer  ,
	ref_single_sex_class_status_id integer  ,
	time_required_for_completion decimal(9,0)  ,
	course_id          integer  NOT NULL,
	ref_additional_credit_type_id integer  ,
	ref_instruction_language_id integer  ,
	virtual_indicator  bool  ,
	organization_calendar_session_id integer  ,
	ref_credit_type_earned_id integer  ,
	related_learning_standards varchar(60)  ,
	ref_advanced_placement_course_code_id integer  ,
	maximum_capacity   integer  ,
	CONSTRAINT pk_course_section PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.course_section IS 'A setting in which organized instruction of course content is provided to one or more students (including cross-age groupings) for a given period of time. (A course may be offered to more than one class/section.) Instruction, provided by one or more teachers or other staff members, may be delivered in person or via a different medium. Classes/Sections that share space should be considered as separate classes/sections if they function as separate units for more than 50 percent of the time. ';

COMMENT ON COLUMN ceds6sc_rdx.course_section.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN ceds6sc_rdx.course_section.available_carnegie_unit_credit IS 'Measured in Carnegie units, the amount of credit available to a student who successfully meets the objectives of the course. A course meeting every day for one period of the school day over the span of a school year offers one Carnegie unit. A Carnegie unit is thus a measure of seat time rather than a measure of attainment of the course objectives. [CEDS Element: Available Carnegie Unit Credit, ID:000030]';

COMMENT ON COLUMN ceds6sc_rdx.course_section.ref_course_section_delivery_mode_id IS 'The primary setting or medium of delivery for the course. [CEDS Element: Course Section Instructional Delivery Mode, ID:001161]';

COMMENT ON COLUMN ceds6sc_rdx.course_section.ref_single_sex_class_status_id IS 'Class in a co-educational school where only male or only female students are permitted to take the class. [CEDS Element: Class Section Single Sex Class Status, ID:000258]  (Foreign key - Ref_Single_Sex_Class_Status)';

COMMENT ON COLUMN ceds6sc_rdx.course_section.time_required_for_completion IS 'The actual or estimated number of clock minutes required for class completion. This number is especially important for career and technical education classes and may represent (in minutes) the clock hour requirement of the class, the number of minutes (or clock hours) of class time per week, times the number of equivalent weeks the class typically meets. [CEDS Element: Class Section Time Required For Completion, ID:000101]';

COMMENT ON COLUMN ceds6sc_rdx.course_section.course_id IS 'Foreign key - Course.';

COMMENT ON COLUMN ceds6sc_rdx.course_section.ref_additional_credit_type_id IS 'The type of credits or units of value available for the completion of a course in addition to Carnegie Units. [CEDS Element: Additional Credit Type, ID:000596]';

COMMENT ON COLUMN ceds6sc_rdx.course_section.ref_instruction_language_id IS 'Surrogate key from Ref_Language. The language of instruction, other than English, used in the program or course. [CEDS Element: Instruction Language, ID:000448]  (Foreign key - Ref_Language)';

COMMENT ON COLUMN ceds6sc_rdx.course_section.virtual_indicator IS 'Indicates a school, institution, program, or class/section focuses primarily on instruction in which students and teachers are separated by time and/or location and interact through the use of computers and/or telecommunications technologies. [CEDS Element: Virtual Indicator, ID:001160]';

COMMENT ON COLUMN ceds6sc_rdx.course_section.organization_calendar_session_id IS 'The session during which the Class/Section is held. [CEDS Elements: Course Begin Date (000054), Course End Date (000059)]';

COMMENT ON COLUMN ceds6sc_rdx.course_section.ref_credit_type_earned_id IS 'Foreign key - Ref_Credit_Type_Earned';

COMMENT ON COLUMN ceds6sc_rdx.course_section.related_learning_standards IS 'An indication of the state or local standard(s) addressed in the Class Section. [CEDS Element: Related Learning Standards, ID:000231]';

COMMENT ON COLUMN ceds6sc_rdx.course_section.ref_advanced_placement_course_code_id IS 'Course areas for advanced placement or credit. For a list of codes see http://apcentral.collegeboard.com/apc/public/courses/teachers_corner/index.html . [CEDS Element: Advanced Placement Course Code, ID:001278]';

COMMENT ON COLUMN ceds6sc_rdx.course_section.maximum_capacity IS 'The maximum number of students the Course Section can maintain. [CEDS Element: Course Section Maximum Capacity, ID:001655]';

CREATE TABLE ceds6sc_rdx.course_section_location ( 
	course_section_location_id integer  NOT NULL,
	location_id        integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_instruction_location_type_id integer  ,
	CONSTRAINT pk_course_section_location PRIMARY KEY ( course_section_location_id )
 );

COMMENT ON TABLE ceds6sc_rdx.course_section_location IS 'The location where a Course Section meets.';

COMMENT ON COLUMN ceds6sc_rdx.course_section_location.course_section_location_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.course_section_location.location_id IS 'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity. [CEDS Element: Classroom Identifier, ID:000364]';

COMMENT ON COLUMN ceds6sc_rdx.course_section_location.organization_id IS 'Surrogate key from Course_Section.';

COMMENT ON COLUMN ceds6sc_rdx.course_section_location.ref_instruction_location_type_id IS 'The type of location at which instruction or service takes place. [CEDS Element: Receiving Location of Instruction, ID:000524]';

CREATE TABLE ceds6sc_rdx.cte_course ( 
	organization_id    integer  NOT NULL,
	available_carnegie_unit_credit decimal(9,2)  ,
	ref_additional_credit_type_id integer  ,
	ref_credit_type_earned_id integer  ,
	high_school_course_requirement bool  ,
	ref_course_gpa_applicability_id integer  ,
	core_academic_course bool  ,
	ref_curriculum_framework_type_id integer  ,
	course_aligned_with_standards bool  ,
	sced_course_code   char(5)  ,
	ref_sced_course_level_id integer  ,
	ref_sced_course_subject_area_id integer  ,
	ref_career_cluster_id integer  ,
	course_department_name varchar(60)  ,
	CONSTRAINT pk_cte_course PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.cte_course IS 'The organization of subject matter and related learning experiences provided for the instruction of students on a regular or systematic basis, usually for a predetermined period of time (e.g., a semester or two-week workshop) to an individual or group of students (e.g., a class). ';

COMMENT ON COLUMN ceds6sc_rdx.cte_course.organization_id IS 'Inherited surrogate key from Course.';

COMMENT ON COLUMN ceds6sc_rdx.cte_course.available_carnegie_unit_credit IS 'Measured in Carnegie units, the amount of credit available to a student who successfully meets the objectives of the course. A course meeting every day for one period of the school day over the span of a school year offers one Carnegie unit. A Carnegie unit is thus a measure of seat time rather than a measure of attainment of the course objectives. [CEDS Element: Available Carnegie Unit Credit, ID:000030]';

COMMENT ON COLUMN ceds6sc_rdx.cte_course.ref_additional_credit_type_id IS 'The type of credits or units of value available for the completion of a course in addition to Carnegie Units. [CEDS Element: Additional Credit Type, ID:000596]';

COMMENT ON COLUMN ceds6sc_rdx.cte_course.ref_credit_type_earned_id IS 'The type of credits or units of value awarded for the completion of a course. [CEDS Element: Credit Type Earned, ID:000072]  (Foreign key - Ref_Credit_Type_Earned)';

COMMENT ON COLUMN ceds6sc_rdx.cte_course.high_school_course_requirement IS 'An indication that this course credit is required for a high school diploma. [CEDS Element: High School Course Requirement, ID:000137]';

COMMENT ON COLUMN ceds6sc_rdx.cte_course.ref_course_gpa_applicability_id IS 'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA). [CEDS Element: Course Grade Point Average Applicability, ID:000060] (Foreign key - Ref_Course_Gpa_Applicability)';

COMMENT ON COLUMN ceds6sc_rdx.cte_course.core_academic_course IS 'The course meets the state definition of a core academic course. [CEDS Element: Core Academic Course, ID:000518]';

COMMENT ON COLUMN ceds6sc_rdx.cte_course.ref_curriculum_framework_type_id IS 'An indication of the standard curriculum used for this course. [CEDS Element: Curriculum Framework Type, ID:000712]  (Foreign key - Ref_Curriculum_Framework)';

COMMENT ON COLUMN ceds6sc_rdx.cte_course.course_aligned_with_standards IS 'An indication whether a course is aligned with the state''s standards. [CEDS Element: Course Aligned with Standards, ID:000013]';

COMMENT ON COLUMN ceds6sc_rdx.cte_course.sced_course_code IS 'The five-digit SCED code. The first two-digits of the code represent the Course Subject Area and the next three digits identify the course number. These identifiers are fairly general but provide enough specificity to identify the course''s topic and to distinguish it from other courses in that subject area. [CEDS Element: School Courses for the Exchange of Data Course Code, ID:001517]';

COMMENT ON COLUMN ceds6sc_rdx.cte_course.ref_sced_course_level_id IS 'The course''s level of rigor. [CEDS Element: School Courses for the Exchange of Data Course Level, ID:001516]';

COMMENT ON COLUMN ceds6sc_rdx.cte_course.ref_sced_course_subject_area_id IS 'The intended major subject area of the education course. [CEDS Element: School Courses for the Exchange of Data Course Subject Area, ID:001518]';

COMMENT ON COLUMN ceds6sc_rdx.cte_course.ref_career_cluster_id IS 'The career cluster that defines the industry or occupational focus which may be associated with a career pathways program, plan of study, or course. [CEDS Element: Career Cluster, ID:001288]';

COMMENT ON COLUMN ceds6sc_rdx.cte_course.course_department_name IS 'Department with jurisdiction over this course. [CEDS Element: Course Department Name, ID:001549]';

CREATE TABLE ceds6sc_rdx.el_child_demographic ( 
	person_id          integer  NOT NULL,
	foster_care_start_date date  ,
	foster_care_end_date date  ,
	other_race_indicator bool  ,
	CONSTRAINT pk_el_child_demographic PRIMARY KEY ( person_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_child_demographic.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.el_child_demographic.foster_care_start_date IS 'The date a child or youth entered foster care. [CEDS Element: Foster Care Start Date, ID: 001523]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_demographic.foster_care_end_date IS 'The date a child or youth exited foster care. [CEDS Element: Foster Care Start Date, ID: 001522]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_demographic.other_race_indicator IS 'Race other than American Indian, Black, Asian, White, Native Pacific Islander. [CEDS Element: Other Race Indicator, ID: 001421]';

CREATE TABLE ceds6sc_rdx.el_child_health ( 
	person_id          integer  NOT NULL,
	well_child_screening_received_date date  ,
	ref_scheduled_well_child_screening_id integer  ,
	CONSTRAINT pk_el_child_health PRIMARY KEY ( person_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_child_health.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.el_child_health.well_child_screening_received_date IS 'The year, month and day of a well child visit. [CEDS Element: Well Child Screening Received Date, ID:001631]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_health.ref_scheduled_well_child_screening_id IS 'The individual well child visit scheduled according to the AAP recommended periodicity schedule. [CEDS Element: Scheduled Well Child Screening, ID:001623]';

CREATE TABLE ceds6sc_rdx.el_child_outcome_summary ( 
	person_id          integer  NOT NULL,
	cos_progress_a_indicator bool  ,
	cos_progress_b_indicator bool  ,
	cos_progress_c_indicator bool  ,
	cos_rating_a_id    integer  ,
	cos_rating_b_id    integer  ,
	cos_rating_c_id    integer  ,
	CONSTRAINT pk_el_child_outcome_summary PRIMARY KEY ( person_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_child_outcome_summary.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.el_child_outcome_summary.cos_progress_a_indicator IS 'Indicates that the child demonstrates progress in positive social-emotional skills (including social relationships). [CEDS Element: Child Outcomes Summary Progress A Indicator, ID: 001504]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_outcome_summary.cos_progress_b_indicator IS 'Indicates that the child demonstrates progress in acquisition and use of knowledge and skills (including early language/communication. [CEDS Element: Child Outcomes Summary Progress A Indicator, ID: 001505]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_outcome_summary.cos_progress_c_indicator IS 'Indicates that the child demonstrates progress in use of appropriate behaviors to meet their needs. [CEDS Element: Child Outcomes Summary Progress A Indicator, ID: 001506]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_outcome_summary.cos_rating_a_id IS 'Child''s level of functioning in positive social-emotional skills (including social relationships). [CEDS Element: Child Outcomes Summary Rating A, ID:001507]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_outcome_summary.cos_rating_b_id IS 'Child''s level of functioning in the acquisition and use of knowledge and skills (including early language/communication. [CEDS Element: Child Outcomes Summary Rating B, ID:001508]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_outcome_summary.cos_rating_c_id IS 'Child''s level of functioning in the use of appropriate behaviors to meet their needs. [CEDS Element: Child Outcomes Summary Rating C, ID:001509]';

CREATE TABLE ceds6sc_rdx.el_child_service ( 
	organization_person_role_id integer  NOT NULL,
	eceap_eligibility  bool  ,
	eligibility_priority_points varchar(100)  ,
	reason_for_declined_services text  ,
	service_date       date  ,
	ref_early_childhood_services_offered_id integer  ,
	ref_early_childhood_services_received_id integer  ,
	ref_el_service_type_id integer  ,
	CONSTRAINT pk_el_child_service PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_child_service.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.el_child_service.eceap_eligibility IS 'Denotes whether the family member can receive Early Childhood Education and Assistance Program (ECEAP) information for the child in question. [CEDS Element: Early Childhood Education and Assistance Program Eligibility, ID:001591]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_service.eligibility_priority_points IS 'Priority points used to determine eligibility and placement order [CEDS Element: Eligibility Priority Points, ID:001618]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_service.reason_for_declined_services IS 'The reason given for declining the recommended services. [CEDS Element: Reason for Declined Services, ID:001488]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_service.service_date IS 'The year, month, and day on which a service was provided. [CEDS Element: Service Date, ID:001635]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_service.ref_early_childhood_services_offered_id IS 'A type of service offered by an organization that adapts the curriculum, materials, or instruction for students identified as needing additional resources. [CEDS Element: Early Childhood Services Offered, ID: 001553]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_service.ref_early_childhood_services_received_id IS 'The types of service that adapts the curriculum, materials, or instruction for students identified as needing additional resources. [CEDS Element: Early Childhood Services Received, ID: 000321]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_service.ref_el_service_type_id IS 'A type of service provided to a child. [CEDS Element: Early Learning Service Type, ID:001604]';

CREATE TABLE ceds6sc_rdx.el_child_transition_plan ( 
	person_id          integer  NOT NULL,
	part_b619potential_eligibility_ind bool  ,
	idea_part_c_to_part_b_notification_date date  ,
	transition_conference_date date  ,
	transition_conference_decline_date date  ,
	date_of_transition_plan date  ,
	idea_part_c_to_part_b_notification_opt_out_date date  ,
	idea_part_c_to_part_b_notification_opt_out_indicator bool  ,
	ref_reason_delay_transition_conf_id integer  ,
	individualized_program_id integer  ,
	CONSTRAINT pk_el_child_idea PRIMARY KEY ( person_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_child_transition_plan.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.el_child_transition_plan.part_b619potential_eligibility_ind IS 'The determination of whether a child is potentially eligible for Part B 619 services. [CEDS Element: IDEA Part B 619 Potential Eligibility Indicator, ID: 001360]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_transition_plan.idea_part_c_to_part_b_notification_date IS 'The date that notification is provided to the State Education Agency (SEA) and local education agency (LEA) of residence for a child potentially eligible for Part B (619) preschool services. [CEDS Element: IDEA Part C to Part B Notification Date, ID:001500]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_transition_plan.transition_conference_date IS 'The date of the transition conference from IDEA Part C to Part B 619 or another early learning program or service. [CEDS Element: Transition Conference Date, ID:001365]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_transition_plan.transition_conference_decline_date IS 'The date the parents declined approval for the transition conference from IDEA Part C to Part B 619 or another early learning program or service. [CEDS Element: Transition Conference Decline Date, ID:001366]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_transition_plan.date_of_transition_plan IS 'The date transition steps and services were added to the individualized service plan. [CEDS Element: Date of Transition Plan, ID:001367]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_transition_plan.idea_part_c_to_part_b_notification_opt_out_date IS 'The date that parents of a child potentially eligible for Part B preschool services opt out of the impending notification to the local education agency. [CEDS Element: IDEA Part C to Part B Notification Opt Out Date, ID:001364]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_transition_plan.idea_part_c_to_part_b_notification_opt_out_indicator IS 'Indicates whether parents of a child potentially eligibel for Part B preschool services have opted out of the impending notification to the local education agency. [CEDS Element: IDEA Part C to Part B Notification Opt Out Indicator, ID:001363]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_transition_plan.ref_reason_delay_transition_conf_id IS 'The reasons for the delay of a transition conference. [CEDS Element: Reason for Delay of Transition Conference, ID:001521]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_transition_plan.individualized_program_id IS 'Foreign key - Individualized_Program';

CREATE TABLE ceds6sc_rdx.el_class_section_service ( 
	el_class_section_service_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	youngest_age_served integer  ,
	oldest_age_served  integer  ,
	serves_children_with_special_needs bool  ,
	ref_el_group_size_standard_met_id integer  ,
	el_class_group_curriculum_type varchar(60)  ,
	ref_frequency_of_service_id integer  ,
	CONSTRAINT pk_el_class_section_service PRIMARY KEY ( el_class_section_service_id )
 );

COMMENT ON TABLE ceds6sc_rdx.el_class_section_service IS 'The services provided in an early leaning class/section.';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section_service.el_class_section_service_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section_service.organization_id IS 'Foreign key - ELClass_Section';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section_service.youngest_age_served IS 'The youngest age of children a class/group is authorized or licensed to serve.  (Age is specified in months) [CEDS Element: Early Learning Youngest Age Authorized to Serve, ID:000633]';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section_service.oldest_age_served IS 'The oldest age of children a class/group is authorized or licensed to serve.  (Age is specified in months) [CEDS Element: Early Learning Oldest Age Authorized to Serve, ID:001225]';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section_service.serves_children_with_special_needs IS 'An indication of whether a class or group serves children with special needs. [CEDS Element: Serves Children with Special Needs, ID:000822]';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section_service.ref_el_group_size_standard_met_id IS 'An indication of whether a program meets NAEYC or NAFCC standards for infant group sizes. [CEDS Element: Early Learning Group Size Standards Met, ID:000824]  (Foreign key - Ref_EL_Group_Size_Standard_Met)';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section_service.el_class_group_curriculum_type IS 'The type of curriculum used in an early learning classroom or group. [CEDS Element: Early Learning Class Group Curriculum Type, ID:000823]  (Foreign key - Ref_EL_Class_Group_Curriculum_Type)';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section_service.ref_frequency_of_service_id IS 'The frequency at which a service is planned to occur. [CEDS Element: Frequency of Service, ID:001356]';

CREATE TABLE ceds6sc_rdx.el_enrollment_other_funding ( 
	el_enrollment_other_funding_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	ref_el_other_federal_funding_sources_id integer  NOT NULL,
	CONSTRAINT pk_el_enrollment_other_funding PRIMARY KEY ( el_enrollment_other_funding_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_enrollment_other_funding.el_enrollment_other_funding_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.el_enrollment_other_funding.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.el_enrollment_other_funding.ref_el_other_federal_funding_sources_id IS 'The other contributing funding sources. [CEDS Element: Early Learning Other Federal Funding Sources, ID:001335]';

CREATE TABLE ceds6sc_rdx.el_organization_availability ( 
	organization_id    integer  NOT NULL,
	days_available_per_week integer  ,
	hours_available_per_day integer  ,
	youngest_age_served integer  ,
	oldest_age_served  integer  ,
	age_unit           varchar(10)  ,
	ref_environment_setting_id integer  ,
	number_of_classrooms integer  ,
	ref_service_option_id integer  ,
	ref_population_served_id integer  ,
	annual_operating_weeks integer  ,
	CONSTRAINT pk_el_organization_availability PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.el_organization_availability IS 'Information on the early learning organization''s availability to include time, groups served, facilities, and environment.';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_availability.organization_id IS 'Surrogate key from Orgainzation.';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_availability.days_available_per_week IS 'The number of days per week the site, classroom, program, or classroom is available. [CEDS Element: Days Available Per Week, ID:000355]';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_availability.hours_available_per_day IS 'The number of hours per day the site, program or classroom is open for children to attend. [CEDS Element: Hours Available Per Day, ID:000354]';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_availability.youngest_age_served IS 'The youngest age of persons the organization is authorized or licensed to serve.  (Age is specified in months) [CEDS Element: Early Learning Youngest Age Authorized to Serve, ID:000633]';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_availability.oldest_age_served IS 'The oldest age of persons the orgaization is authorized or licensed to serve.  (Age is specified in months) [CEDS Element: Early Learning Oldest Age Authorized to Serve, ID:001225]';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_availability.age_unit IS 'The units of measure for ages served.  Typically Months or Years.';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_availability.ref_environment_setting_id IS 'The site or setting in which  a person receives care, education, and/or services are provided. [CEDS Element: Early Childhood Setting, ID:000356]  (Foreign key - Ref_Environment_Setting)';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_availability.number_of_classrooms IS 'The total number of classrooms for a program, facility, location, or other educational environment. [CEDS Element: Number of Classrooms, ID:000844]';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_availability.ref_service_option_id IS 'Nature of program, class or group in which a person is enrolled. [CEDS Element: Service Option Variation, ID:000353]  (Foreign key - Ref_Service_Option)';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_availability.ref_population_served_id IS 'The population served by the program, class, organization, etc. [CEDS Element: Special Circumstances Population Served, ID:000852]  (Foreign key - Ref_Population_Served)';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_availability.annual_operating_weeks IS 'The number of operating weeks per year for an early learning program. [CEDS Element: Early Learning Program Annual Operating Weeks, ID:000825]';

CREATE TABLE ceds6sc_rdx.el_organization_monitoring ( 
	el_organization_monitoring_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	visit_start_date   date  ,
	visit_end_date     date  ,
	ref_purpose_of_monitoring_visit_id integer  ,
	type_of_monitoring varchar(300)  ,
	ref_organization_monitoring_notifications_id integer  ,
	CONSTRAINT pk_el_organization_monitoring PRIMARY KEY ( el_organization_monitoring_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_organization_monitoring.el_organization_monitoring_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_monitoring.organization_id IS 'Surrogate key from Organization.';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_monitoring.visit_start_date IS 'The date that monitoring visit began. [CEDS Element: Monitoring Visit Start Date, ID:001331 ]';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_monitoring.visit_end_date IS 'The date that monitoring visit ended. [CEDS Element: Monitoring Visit End Date, ID: 001332]';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_monitoring.ref_purpose_of_monitoring_visit_id IS 'The purpose for the monitoring visit. [CEDS Element: Purpose of Monitoring Visit, ID:001333]';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_monitoring.type_of_monitoring IS 'The type of monitoring on the organization. [CEDS Element: Organization Type of Monitoring, ID: 001334]';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_monitoring.ref_organization_monitoring_notifications_id IS 'Whether the organization received notification about monitoring [CEDS Element: Organization Monitoring Notifications, ID:001330]';

CREATE TABLE ceds6sc_rdx.el_quality_initiative ( 
	el_quality_initiative_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	maximum_score      varchar(30)  ,
	minimum_score      varchar(30)  ,
	score_level        varchar(30)  ,
	participation_indicator bool  ,
	participation_start_date date  ,
	participation_end_date date  ,
	CONSTRAINT pk_el_quality_initiative PRIMARY KEY ( el_quality_initiative_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_quality_initiative.el_quality_initiative_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.el_quality_initiative.organization_id IS 'Surrogate key from Organization.';

COMMENT ON COLUMN ceds6sc_rdx.el_quality_initiative.maximum_score IS 'The maximum score option for the QRIS or other quality initiative. [CEDS Element: Quality Initiative Maximum Score,ID: 001460]';

COMMENT ON COLUMN ceds6sc_rdx.el_quality_initiative.minimum_score IS 'The minimum score option for the QRIS or other quality initiative. [CEDS Element: Quality Initiative Minimum Score,ID: 001461]';

COMMENT ON COLUMN ceds6sc_rdx.el_quality_initiative.score_level IS 'The score, rating or level received by a program for its Quality Rating and Improvement System (QRIS) or other quality initiative. [CEDS Element: Quality Initiative Score Level,ID: 001462]';

COMMENT ON COLUMN ceds6sc_rdx.el_quality_initiative.participation_indicator IS 'Site participates in a quality improvement initiative component other than QRIS. [CEDS Element: Quality Initiative Participation Indicator,ID: 001463]';

COMMENT ON COLUMN ceds6sc_rdx.el_quality_initiative.participation_start_date IS 'The quality initiative start date. [CEDS Element: Quality Initiative Participation Start Date,ID: 001465]';

COMMENT ON COLUMN ceds6sc_rdx.el_quality_initiative.participation_end_date IS 'The quality initiative end date. [CEDS Element: Quality Initiative Participation End Date,ID: 001464]';

CREATE TABLE ceds6sc_rdx.el_service_partner ( 
	organization_id    integer  NOT NULL,
	service_partner_name varchar(100)  ,
	service_partner_description varchar(300)  ,
	memorandum_of_understanding_end_date date  ,
	memorandum_of_understanding_start_date date  ,
	CONSTRAINT pk_el_service_partner PRIMARY KEY ( organization_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_service_partner.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN ceds6sc_rdx.el_service_partner.service_partner_name IS 'The name of a non-person entity such as an organization, institution, agency or business, that partners with the Early Learning Organization to provide services to enrolled children/families. [CEDS Element: Service Partner Name, ID:001625]';

COMMENT ON COLUMN ceds6sc_rdx.el_service_partner.service_partner_description IS 'A description of the type of services that the partner organization provides. [CEDS Element: Service Partner Description, ID:001624]';

COMMENT ON COLUMN ceds6sc_rdx.el_service_partner.memorandum_of_understanding_end_date IS 'The date that a Memorandum of Understanding between the Early Learning Organization and the Service Partner is determined to expire. [CEDS Element: Memorandum of Understanding End Date, ID:001614]';

COMMENT ON COLUMN ceds6sc_rdx.el_service_partner.memorandum_of_understanding_start_date IS 'The effective date that a Memorandum of Understanding between the Early Learning Organization and the Service Partner Organization is effective. [CEDS Element: Memorandum of Understanding Start Date, ID:001615]';

CREATE TABLE ceds6sc_rdx.el_staff_assignment ( 
	organization_person_role_id integer  NOT NULL,
	itinerant_provider bool  NOT NULL,
	CONSTRAINT pk_el_staff_assignment PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_staff_assignment.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_assignment.itinerant_provider IS 'An indication of whether a person provides services at more than one site. [CEDS Element: Itinerant Provider, ID: 001384]';

CREATE TABLE ceds6sc_rdx.el_staff_employment ( 
	staff_employment_id integer  NOT NULL,
	ref_employment_status_id integer  ,
	hours_worked_per_week decimal(5,2)  ,
	hourly_wage        decimal(5,2)  ,
	ref_wage_collection_method_id integer  ,
	ref_wage_verification_id integer  ,
	union_membership_status bool  ,
	staff_approval_indicator bool  ,
	ref_el_education_staff_classification_id integer  ,
	ref_el_employment_separation_reason_id integer  ,
	ref_el_service_professional_staff_classification_id integer  ,
	CONSTRAINT pk_el_staff_employment PRIMARY KEY ( staff_employment_id )
 );

COMMENT ON TABLE ceds6sc_rdx.el_staff_employment IS 'Attributes for early learning staff employment.  Extends from Staff.';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_employment.staff_employment_id IS 'Inherited surrogate key from Staff_Employment.';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_employment.ref_employment_status_id IS 'The condition under which a person has agreed to serve an employer. [CEDS Element: Employment Status, ID:000347]  (Foreign key - Ref_Employment_Status)';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_employment.hours_worked_per_week IS 'The number of hours worked per week in employment. [CEDS Element: Hours Worked Per Week, ID:000796]';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_employment.hourly_wage IS 'Hourly wage associated with the employment position being reported. [CEDS Element: Hourly Wage, ID:000797]';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_employment.ref_wage_collection_method_id IS 'Method used for the collection of wage data for an employment record. [CEDS Element: Wage Collection Code, ID:000798]  (Foreign key - Ref_Wage_Collection_Method)';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_employment.ref_wage_verification_id IS 'An indication of whether the wage information has been verified. [CEDS Element: Wage Verification Code, ID:000819]  (Foreign key - Ref_Wage_Verification)';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_employment.union_membership_status IS 'An indication of whether the person is a member of a union. [CEDS Element: Union Membership Status, ID:000799]';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_employment.staff_approval_indicator IS 'Individual is approved to Work with Children [CEDS Element: Staff Approval Indicator, ID:001581]';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_employment.ref_el_education_staff_classification_id IS 'The title/role of employment, official status, or rank of education staff [CEDS Element: Early Learning Education Staff Classification, ID:001602]';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_employment.ref_el_employment_separation_reason_id IS 'The primary reason for the termination of the employment relationship. [CEDS Element: Early Learning Employment Separation Reason, ID:001632]';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_employment.ref_el_service_professional_staff_classification_id IS 'The title/role of employment, official status, or rank of early learning service professionals [CEDS Element: Early Learning Service Professional Staff Classification, ID:001636]';

CREATE TABLE ceds6sc_rdx.early_childhood_program_type_offered ( 
	early_childhood_program_type_offered_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_early_childhood_program_enrollment_type_id integer  NOT NULL,
	inclusive_setting_indicator bool  ,
	ref_community_based_type_id integer  ,
	CONSTRAINT pk_early_childhood_program_type_offered PRIMARY KEY ( early_childhood_program_type_offered_id ),
	CONSTRAINT ix_early_childhood_program_type_offered UNIQUE ( organization_id, ref_early_childhood_program_enrollment_type_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.early_childhood_program_type_offered IS 'The type(s) of  early childhood programs offered. [CEDS Element: Early Childhood Program Type Offered, ID:000829]';

COMMENT ON COLUMN ceds6sc_rdx.early_childhood_program_type_offered.early_childhood_program_type_offered_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.early_childhood_program_type_offered.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.early_childhood_program_type_offered.ref_early_childhood_program_enrollment_type_id IS 'The system outlining activities and procedures based on a set of required services and standards in which the child is enrolled. [CEDS Element: Early Childhood Program Enrollment Type, ID:000829]';

COMMENT ON COLUMN ceds6sc_rdx.early_childhood_program_type_offered.inclusive_setting_indicator IS 'A place where children of all abilities learn together. [CEDS Element: Inclusive Setting Indicator, ID:001634]';

COMMENT ON COLUMN ceds6sc_rdx.early_childhood_program_type_offered.ref_community_based_type_id IS 'Non domestic residence in which the early learning setting is located. [CEDS Element: Community-based Type, ID:001633]';

CREATE TABLE ceds6sc_rdx.financial_account ( 
	financial_account_id integer  NOT NULL,
	name               varchar(100)  NOT NULL,
	description        varchar(300)  ,
	account_number     varchar(30)  ,
	ref_financial_account_category_id integer  ,
	ref_financial_account_fund_classification_id integer  ,
	ref_financial_account_program_code_id integer  ,
	ref_financial_account_balance_sheet_code_id integer  ,
	ref_financial_expenditure_function_code_id integer  ,
	ref_financial_expenditure_object_code_id integer  ,
	financial_account_number varchar(30)  ,
	financial_expenditure_project_reporting_code decimal(3,0)  ,
	ref_financial_expenditure_level_of_instruction_code_id integer  ,
	ref_financial_account_revenue_code_id integer  ,
	CONSTRAINT pk_financial_account PRIMARY KEY ( financial_account_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.financial_account.financial_account_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.financial_account.name IS 'The name given to the financial account in an educational institution''s accounting system. [CEDS Element: Financial Account Name, ID: 001348]';

COMMENT ON COLUMN ceds6sc_rdx.financial_account.description IS 'The description for the financial account in an educational institution''s accounting system. [CEDS Element: Financial Account Description, ID: 001346]';

COMMENT ON COLUMN ceds6sc_rdx.financial_account.ref_financial_account_category_id IS 'A label for a grouping of financial accounts, based on type and purpose. [CEDS Element: Financial Account Category, ID:001345]';

COMMENT ON COLUMN ceds6sc_rdx.financial_account.ref_financial_account_fund_classification_id IS 'A separate fiscal and accounting entity with a self-balancing set of accounts recording cash and other financial resources, together with all related liabilities and residual equities or balances, or changes therein. [CEDS Element: Financial Account Fund Classification, ID:001347]';

COMMENT ON COLUMN ceds6sc_rdx.financial_account.ref_financial_account_program_code_id IS 'The code associated with the program category used for financial accounting -- a plan of activities and procedures designed to accomplish a predetermined objective or set of objectives. [CEDS Element: Financial Account Program Code, ID:001349]';

COMMENT ON COLUMN ceds6sc_rdx.financial_account.ref_financial_account_balance_sheet_code_id IS 'Balance sheet accounts and statement of net asset accounts are used to track financial transactions for each fund. Such financial statements report assets, liabilities, and equity accounts only and are considered snapshots of how these accounts stand as of a certain point in time.  Based on codes specified in the NCES Handbook financial accounting for local and state school systems: 2009 edition. [CEDS Element: Financial Account Balance Sheet Code, ID:001353]';

COMMENT ON COLUMN ceds6sc_rdx.financial_account.ref_financial_expenditure_function_code_id IS 'The function describes the activity for which a service or material object is acquired. The functions of a school district are classified into five broad areas: instruction, support services, operation of non-instructional services, facilities acquisition and construction, and debt service.  Functions are further classified into sub functions. [CEDS Element: Financial Expenditure Function Code, ID:001354]';

COMMENT ON COLUMN ceds6sc_rdx.financial_account.ref_financial_expenditure_object_code_id IS 'This classification is used to describe the service or commodity obtained as the result of a specific expenditure. [CEDS Element: Financial Expenditure Object Code, ID:001355]';

COMMENT ON COLUMN ceds6sc_rdx.financial_account.financial_account_number IS 'A number given to a financial account within a local source accounting system. The number may be a concatenation of a standard  prefix for the type of account with digits added that have specific meaning within the local system. [CEDS Element: Financial Account Number, ID:001554]';

COMMENT ON COLUMN ceds6sc_rdx.financial_account.financial_expenditure_project_reporting_code IS 'A three-digit code with the format 00X to accumulate expenditures to meet a variety of specialized reporting requirements at local, state, and federal levels. The first two digits identify the particular funding source, authority, or expenditure purpose for which a special record or report is required. The third digit is available to identify particular projects and the fiscal year of the appropriation within that funding source. Each classification is presented by a code range followed by a description. [CEDS Element: Financial Expenditure Project Reporting Code, ID:001556]';

COMMENT ON COLUMN ceds6sc_rdx.financial_account.ref_financial_expenditure_level_of_instruction_code_id IS 'A classification of the levels of instruction to which an expenditure is applied. [CEDS Element: Financial Expenditure Level of Instruction Code, ID:001555]';

COMMENT ON COLUMN ceds6sc_rdx.financial_account.ref_financial_account_revenue_code_id IS 'Codes are for recording revenue and other receivables by source. Based on codes specified in the NCES Handbook financial accounting for local and state school systems: 2009 edition [CEDS Element: Financial Account Revenue Code, ID:001468]';

CREATE TABLE ceds6sc_rdx.financial_aid_application ( 
	financial_aid_application_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_financial_aid_application_type_id integer  NOT NULL,
	financial_aid_year_designator char(9)  ,
	CONSTRAINT pk_financial_aid_application PRIMARY KEY ( financial_aid_application_id )
 );

COMMENT ON TABLE ceds6sc_rdx.financial_aid_application IS 'An application for financial aid submitted by a current or prospective student/learner.';

COMMENT ON COLUMN ceds6sc_rdx.financial_aid_application.financial_aid_application_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.financial_aid_application.organization_person_role_id IS 'Foreign key - Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.financial_aid_application.ref_financial_aid_application_type_id IS 'The type of financial application completed by an individual. [CEDS Element: Financial Aid Application Type, ID:001223]  (Foreign key - Ref_Financial_Aid_Application_Type)';

COMMENT ON COLUMN ceds6sc_rdx.financial_aid_application.financial_aid_year_designator IS 'The school year for which the student''s financial aid application and award data apply.  Generally, this is the 12-month period from July 1 to June 30. [CEDS Element: Financial Aid Year Designator, ID:001611]';

CREATE TABLE ceds6sc_rdx.incident ( 
	incident_id        integer  NOT NULL,
	incident_identifier varchar(40)  ,
	incident_date      date  ,
	incident_time      time  ,
	ref_incident_time_description_code_id integer  ,
	incident_description text  ,
	ref_incident_behavior_id integer  ,
	ref_incident_behavior_secondary_id integer  ,
	ref_incident_injury_type_id integer  ,
	ref_weapon_type_id integer  ,
	incident_cost      varchar(30)  ,
	organization_person_role_id integer  ,
	incident_reporter_id integer  ,
	ref_incident_reporter_type_id integer  ,
	ref_incident_location_id integer  ,
	ref_firearm_type_id integer  ,
	regulation_violated_description varchar(100)  ,
	related_to_disability_manifestation_ind bool  ,
	reported_to_law_enforcement_ind bool  ,
	ref_incident_multiple_offense_type_id integer  ,
	ref_incident_perpetrator_injury_type_id integer  ,
	CONSTRAINT pk_incident PRIMARY KEY ( incident_id )
 );

COMMENT ON TABLE ceds6sc_rdx.incident IS 'The details for an incident involving a student or school.';

COMMENT ON COLUMN ceds6sc_rdx.incident.incident_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.incident.incident_identifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific incident or occurrence. The same identifier should be used to document the entire incident even if it included multiple offenses and multiple offenders. [CEDS Element: Incident Identifier, ID:000501]';

COMMENT ON COLUMN ceds6sc_rdx.incident.incident_date IS 'The date on which the incident occurred. [CEDS Element: Incident Date, ID:000502]';

COMMENT ON COLUMN ceds6sc_rdx.incident.incident_time IS 'An indication of the time of day the incident took place. [CEDS Element: Incident Time, ID:000503]';

COMMENT ON COLUMN ceds6sc_rdx.incident.ref_incident_time_description_code_id IS 'A code for the description of the time of day that an incident took place. [CEDS Element: Incident Time Description Code, ID:000515]';

COMMENT ON COLUMN ceds6sc_rdx.incident.incident_description IS 'The description for an incident. [CEDS Element: Incident Description, ID:000508]';

COMMENT ON COLUMN ceds6sc_rdx.incident.ref_incident_behavior_id IS 'Categories of behavior coded for use in describing an incident. [CEDS Element: Incident Behavior, ID:000509]';

COMMENT ON COLUMN ceds6sc_rdx.incident.ref_incident_behavior_secondary_id IS 'Supplemental information about an incident when the primary offense is more serious in nature than alcohol or drug, etc. offenses. [CEDS Element: Secondary Incident Behavior, ID:000627]';

COMMENT ON COLUMN ceds6sc_rdx.incident.ref_incident_injury_type_id IS 'An indication of the occurrence of physical injury to participants involved in the incident and, if so, the level of injury sustained. [CEDS Element: Incident Injury Type, ID:000510]';

COMMENT ON COLUMN ceds6sc_rdx.incident.ref_weapon_type_id IS 'Identifies the type of weapon used during an incident. [CEDS Element: Weapon Type, ID:001211]';

COMMENT ON COLUMN ceds6sc_rdx.incident.incident_cost IS 'The value of any quantifiable monetary loss directly resulting from the incident. Examples include the value of repairs necessitated by vandalism of a school facility, the value of personnel resources used for repairs or consumed by the incident, the value of stolen items, and the value of time consumed by an incident (e.g., instructional time involved in evacuating a school during a false fire alarm).  Cost may be reported by specific monetary amount or range. [CEDS Element: Incident Cost, ID:000505]';

COMMENT ON COLUMN ceds6sc_rdx.incident.organization_person_role_id IS 'Foreign key - Organization_Person_Role_Id.';

COMMENT ON COLUMN ceds6sc_rdx.incident.incident_reporter_id IS 'Surrogate key from Person_Table for the reporter.  Identifies the reporter of the incident using  a pre-existing unique student identifier or unique staff identifier, when the reporter is a student or staff member. [CEDS Element: Reporter Identifier, ID:000507]';

COMMENT ON COLUMN ceds6sc_rdx.incident.ref_incident_reporter_type_id IS 'Information on the type of person who reported the incident. When known and/or if useful, use a more specific option code (e.g., counselor rather than professional staff). [CEDS Element: Incident Reporter Type, ID:000506]';

COMMENT ON COLUMN ceds6sc_rdx.incident.ref_incident_location_id IS 'Identifies where the incident occurred and whether or not it occurred on campus. [CEDS Element: Incident Location, ID:000617]';

COMMENT ON COLUMN ceds6sc_rdx.incident.ref_firearm_type_id IS 'The type of firearm. [CEDS Element: Firearm Type, ID:000557]';

COMMENT ON COLUMN ceds6sc_rdx.incident.regulation_violated_description IS 'A description of the rule‚ regulation‚ or standard that was violated when an incident occurred (e.g.‚ the identification of a relevant law‚ conduct standard‚ or acceptable use policy). [CEDS Element: Incident Regulation Violated Description, ID: 001374]';

COMMENT ON COLUMN ceds6sc_rdx.incident.related_to_disability_manifestation_ind IS 'An indication whether a student’s behavior (offense) was a manifestation of‚ or related to‚ a disability condition. [CEDS Element: Incident Related to Disability Manifestation, ID: 001375]';

COMMENT ON COLUMN ceds6sc_rdx.incident.reported_to_law_enforcement_ind IS 'An indication that the school resource officer or any other law enforcement official was notified about the incident‚ regardless of whether official action is taken. [CEDS Element: Incident Reported to Law Enforcement Indicator, ID: 001376]';

COMMENT ON COLUMN ceds6sc_rdx.incident.ref_incident_multiple_offense_type_id IS 'An indication of whether the offense was primary or secondary in nature when a single incident included more than one type of offense. [CEDS Element: Incident Multiple Offense Type, ID:001369]';

COMMENT ON COLUMN ceds6sc_rdx.incident.ref_incident_perpetrator_injury_type_id IS 'An indication of the occurrence of physical injury to the perpetrator(s) (participants) involved in the incident and‚ if so‚ the level of injury sustained. [CEDS Element: Incident Perpetrator Injury Type, ID:001371]';

CREATE TABLE ceds6sc_rdx.individualized_program ( 
	individualized_program_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_individualized_program_date_type integer  ,
	individualized_program_date date  ,
	non_inclusion_minutes_per_week integer  ,
	inclusion_minutes_per_week integer  ,
	ref_individualized_program_transition_type_id integer  ,
	ref_individualized_program_type_id integer  ,
	service_plan_date  date  ,
	ref_individualized_program_location_id integer  ,
	service_plan_meeting_participants varchar(4000)  ,
	service_plan_signed_by varchar(4000)  ,
	service_plan_signature_date date  ,
	service_plan_reevaluation_date date  ,
	ref_student_support_service_type_id integer  ,
	CONSTRAINT xpk_individualized_program PRIMARY KEY ( individualized_program_id )
 );

COMMENT ON TABLE ceds6sc_rdx.individualized_program IS 'Information on the type, design, dates, and participation of a student in an individualized program.';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.individualized_program_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.organization_person_role_id IS 'Surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.ref_individualized_program_date_type IS 'An indication of the significance of a date to an individualized program. [CEDS Element: Individualized Program Date Type, ID:001231]  (Foreign key - Ref_Individualized_Program_Date_Type)';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.individualized_program_date IS 'The date on which the status of an individualized program for a student is significantly altered. [CEDS Element: Individualized Program Date, ID:001232]';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.non_inclusion_minutes_per_week IS 'The number of minutes per week that a student with disabilities is served in a regular classroom with his or her non-disabled peers. [CEDS Element: Individualized Program Non_Inclusion Minutes Per Week, ID:001233]';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.inclusion_minutes_per_week IS 'The number of minutes per week that a student with disabilities is served in a special education setting separate from his or her non-disabled peers. [CEDS Element: Individualized Program Inclusion Minutes Per Week, ID:001234]';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.ref_individualized_program_transition_type_id IS 'The post-school transition plan for the student recorded on their Individualized Education Program. [CEDS Element: Individualized Program Transition Plan Type, ID:001235]  (Foreign key - Ref_Individualized_Program_Transition_Type)';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.ref_individualized_program_type_id IS 'A designation of the type of program developed for a student. [CEDS Element: Individualized Program Type, ID:000320]  (Foreign key - Ref_Individualized_Program_Type)';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.service_plan_date IS 'The date on which the status of the service plan for a child is established or significantly altered. [CEDS Element: Individualized Program Service Plan Date, ID:001236]';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.ref_individualized_program_location_id IS 'The place in which a child''s service plan meeting is held. [CEDS Element: Individualized Program Service Plan Meeting Location, ID:001237]  (Foreign key - Ref_Individualized_Program_Location)';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.service_plan_meeting_participants IS 'The position titles of individuals who attend the service plan meeting. [CEDS Element: Individualized Program Service Plan Meeting Participants, ID:001238]';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.service_plan_signed_by IS 'The position titles of individuals who sign a written service plan. [CEDS Element: Individualized Program Service Plan Signed By, ID:001239]';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.service_plan_signature_date IS 'The date on which the service plan document is signed. [CEDS Element: Individualized Program Service Plan Signature Date, ID:001240]';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.service_plan_reevaluation_date IS 'Date student will be reevaluated for continued placement in a support program(s). [CEDS Element: Individualized Program Service Plan Reevaluation Date, ID:001241]';

COMMENT ON COLUMN ceds6sc_rdx.individualized_program.ref_student_support_service_type_id IS 'Type of related or ancillary services provided to a person or a group of persons within the formal educational system or offered by an outside agency which provides non-instructional services to support the general welfare of students. This includes physical and emotional health, the ability to select an appropriate course of study, admission to appropriate educational programs, and the ability to adjust to and remain in school through the completion of programs. In serving a student with an identified disability, related services include developmental, corrective, or supportive services required to ensure that the person benefits from special education. [CEDS Element: Student Support Service Type, ID:000273]  (Foreign key - Ref_Student_Support_Service_Type)';

CREATE TABLE ceds6sc_rdx.k12_course ( 
	organization_id    integer  NOT NULL,
	high_school_course_requirement bool  ,
	ref_additional_credit_type_id integer  ,
	available_carnegie_unit_credit decimal(9,2)  ,
	ref_course_gpa_applicability_id integer  ,
	core_academic_course bool  ,
	ref_curriculum_framework_type_id integer  ,
	course_aligned_with_standards bool  ,
	ref_credit_type_earned_id integer  NOT NULL,
	funding_program    varchar(30)  ,
	family_consumer_sciences_course_ind bool  ,
	sced_course_code   char(5)  ,
	sced_grade_span    char(4)  ,
	ref_sced_course_level_id integer  ,
	ref_sced_course_subject_area_id integer  ,
	ref_career_cluster_id integer  ,
	ref_blended_learning_model_type_id integer  ,
	ref_course_interaction_mode_id integer  ,
	ref_k12_end_of_course_requirement_id integer  ,
	ref_workbased_learning_opportunity_type_id integer  ,
	course_department_name varchar(60)  ,
	CONSTRAINT pk_k12_course PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_course IS 'The organization of subject matter and related learning experiences provided for the instruction of students on a regular or systematic basis, usually for a predetermined period of time (e.g., a semester or two-week workshop) to an individual or group of students (e.g., a class). ';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.organization_id IS 'Surrogate key from Course.';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.high_school_course_requirement IS 'An indication that this course credit is required for a high school diploma. [CEDS Element: High School Course Requirement, ID:000137]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.ref_additional_credit_type_id IS 'The type of credits or units of value available for the completion of a course in addition to Carnegie Units. [CEDS Element: Additional Credit Type, ID:000596]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.available_carnegie_unit_credit IS 'Measured in Carnegie units, the amount of credit available to a student who successfully meets the objectives of the course. A course meeting every day for one period of the school day over the span of a school year offers one Carnegie unit. A Carnegie unit is thus a measure of seat time rather than a measure of attainment of the course objectives. [CEDS Element: Available Carnegie Unit Credit, ID:000030]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.ref_course_gpa_applicability_id IS 'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA). [CEDS Element: Course Grade Point Average Applicability, ID:000060] (Foreign key - Ref_Course_Gpa_Applicability)';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.core_academic_course IS 'The course meets the state definition of a core academic course. [CEDS Element: Core Academic Course, ID:000518]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.ref_curriculum_framework_type_id IS 'An indication of the standard curriculum used for this course. [CEDS Element: Curriculum Framework Type, ID:000712]  (Foreign key - Ref_Curriculum_Framework)';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.course_aligned_with_standards IS 'An indication whether a course is aligned with the state''s standards. [CEDS Element: Course Aligned with Standards, ID:000013]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.ref_credit_type_earned_id IS 'Foreign key - Ref_Credit_Type_Earned';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.funding_program IS 'A program through which the course is funded. [CEDS Elements: Course Funding Program, ID: 001306]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.family_consumer_sciences_course_ind IS 'An indication that the course is associated with the Family and Consumer Sciences plan of study. [CEDS Element: Family and Consumer Sciences Course Indicator, ID: 001344]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.sced_course_code IS 'The five-digit SCED code. The first two-digits of the code represent the Course Subject Area and the next three digits identify the course number. These identifiers are fairly general but provide enough specificity to identify the course''s topic and to distinguish it from other courses in that subject area. [CEDS Element: School Courses for the Exchange of Data Course Code, ID:001517]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.sced_grade_span IS 'The grade span for which the course is appropriate. [CEDS Element: School Courses for the Exchange of Data Grade Span, ID:001480]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.ref_sced_course_level_id IS 'The course''s level of rigor. [CEDS Element: School Courses for the Exchange of Data Course Level, ID:001516]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.ref_sced_course_subject_area_id IS 'The intended major subject area of the education course. [CEDS Element: School Courses for the Exchange of Data Course Subject Area, ID:001518]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.ref_career_cluster_id IS 'The career cluster that defines the industry or occupational focus which may be associated with a career pathways program, plan of study, or course. [CEDS Element: Career Cluster, ID:001288]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.ref_blended_learning_model_type_id IS 'A type of formal education program in which a student learns at least in part through online learning, with some element of student control over time, place, path, and/or pace; at least in part in a supervised brick-and-mortar location away from home; and the modalities along each student’s learning path within a course or subject are connected to provide an integrated learning experience. [CEDS Element: Blended Learning Model Type, ID:001287]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.ref_course_interaction_mode_id IS 'The primary type of interaction, synchronous or asynchronous, defined for the course. [CEDS Element: Course Interaction Mode, ID:001311]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.ref_k12_end_of_course_requirement_id IS 'An indication that this course has an end of course examination required by the SEA or LEA. [CEDS Element: K12 End of Course Requirement, ID:001386]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.ref_workbased_learning_opportunity_type_id IS 'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]';

COMMENT ON COLUMN ceds6sc_rdx.k12_course.course_department_name IS 'Department with jurisdiction over this course. [CEDS Element: Course Department Name, ID:001549]';

CREATE TABLE ceds6sc_rdx.k12_lea_federal_funds ( 
	organization_id    integer  NOT NULL,
	federal_programs_funding_allocation numeric(12,2)  ,
	ref_federal_program_funding_allocation_type_id integer  ,
	funds_transfer_amount numeric(12,2)  ,
	innovative_programs_funds_received numeric(12,2)  ,
	innovative_dollars_spent numeric(12,2)  ,
	innovative_dollars_spent_on_strategic_priorities numeric(12,2)  ,
	lea_transferability_of_funds bool  ,
	ref_lea_funds_transfer_type_id integer  ,
	public_school_choice_funds_spent numeric(12,2)  ,
	school_improvement_reserved_percent numeric(5,2)  ,
	school_improvement_allocation numeric(12,2)  ,
	ses_funds_spent    numeric(12,2)  ,
	ses_per_pupil_expenditure numeric(12,2)  ,
	ses_school_choice20percent_obligation numeric(12,2)  ,
	ref_rlis_program_use_id integer  ,
	ref_reap_alternative_funding_status_id integer  ,
	number_of_immigrant_program_subgrants integer  ,
	CONSTRAINT pk_k12_lea_federal_funds PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_lea_federal_funds IS 'Information on the federal funds received and distributed by the LEA under various programs.';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.organization_id IS 'Inherited surrogate key from K12Lea.';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.federal_programs_funding_allocation IS 'The amount of federal dollars distributed to local education agencies (LEAs), retained by the state education agency (SEA) for program administration or other approved state-level activities (including unallocated, transferred to another state agency, or distributed to entities other than LEAs). [CEDS Element: Federal Programs Funding Allocation, ID:000549]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.ref_federal_program_funding_allocation_type_id IS 'The type of federal program funding allocation or distribution made. [CEDS Element: Federal Programs Funding Allocation Type, ID:000548]  (Foreign key - Ref_Federal_Program_Funding_Allocation)';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.funds_transfer_amount IS 'The total amount of FY appropriated funds transferred from and to each eligible program. [CEDS Element: Funds Transfer Amount, ID:000452]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.innovative_programs_funds_received IS 'The total Title V, Part A funds received by LEAs. [CEDS Element: Innovative Programs Funds Received, ID:000464]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.innovative_dollars_spent IS 'The total Title V, Part A funds expended by LEAs. [CEDS Element: Innovative Dollars Spent, ID:000461]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.innovative_dollars_spent_on_strategic_priorities IS 'The total amount of Title V, Part A funds expended by LEAs for the four strategic priorities. [CEDS Element: Innovative Dollars Spent on Strategic Priorities, ID:000462]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.lea_transferability_of_funds IS 'LEA notified the State that they were transferring funds under the LEA Transferability authority of Section 6123(b). [CEDS Element: Local Education Agency Transferability of Funds, ID:000446]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.ref_lea_funds_transfer_type_id IS 'An indication of the type of transfer for an LEAs that transferred funds from an eligible program to another eligible program. [CEDS Element: Local Education Agency Funds Transfer Type, ID:000451]  (Foreign key - Ref_Lea_Funds_Transfer_Type)';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.public_school_choice_funds_spent IS 'The dollar amount spent on transportation for public school choice during the school year under Title I of ESEA as amended, Part A, Section 1116. [CEDS Element: Public School Choice Funds Spent, ID:000568]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.school_improvement_reserved_percent IS 'An indication of the percentage of the Title I, Part A allocation that the SEA reserved in accordance with Section 1003(a) of ESEA and §200.100(a) of ED''s regulations governing the reservation of funds for school improvement under Section 1003(a) of ESEA. [CEDS Element: School Improvement Reserved Funds Percentage, ID:000479]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.school_improvement_allocation IS 'The amount of Section 1003(a) and 1003(g) allocations to LEAs and Schools. [CEDS Element: School Improvement Allocation, ID:000480]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.ses_funds_spent IS 'The dollar amount spent on supplemental educational services during the school year under Title I, Part A, Section 1116 of ESEA as amended. [CEDS Element: Supplemental Educational Services Funds Spent, ID:000567]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.ses_per_pupil_expenditure IS 'The maximum dollar amount that may be spent per child for expenditures related to supplemental educational services under Title I of the ESEA. [CEDS Element: Supplemental Educational Services Per Pupil Expenditure, ID:000575]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.ses_school_choice20percent_obligation IS 'The dollar amount of the 20 percent reservation for supplemental educational services and choice-related transportation. [CEDS Element: Supplemental Education Services Public School Choice Twenty Percent Obligation, ID:000574]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.ref_rlis_program_use_id IS 'The type of use of the Rural Low-Income Schools Program (RLIS) (Title VI, Part B, Subpart 2) Grant Funds. [CEDS Element: Type of Use of the Rural Low-Income Schools Program, ID:000486]  (Foreign key - Ref_Rlis_Program_Use)';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.ref_reap_alternative_funding_status_id IS 'An indication that the local education agency (LEA) notified the state of the LEA''s intention to use REAP-Flex Alternative Uses of Funding Authority during the school year as specified in the Title VI, Section 6211 of ESEA as amended. [CEDS Element: Rural Education Achievement Program Alternative Funding Status, ID:000560]  (Foreign key - Ref_Reap_Alternative_Funding_Status)';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_federal_funds.number_of_immigrant_program_subgrants IS 'The number of immigrant program [3114(d)(1)] subgrants. [CEDS Element: Number of Immigrant Program Subgrants, ID:000470]';

CREATE TABLE ceds6sc_rdx.k12_lea_pre_k_eligibility ( 
	k12_lea_pre_k_eligibility_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_pre_kindergarten__eligibility_id integer  NOT NULL,
	CONSTRAINT pk_k12_lea_pre_k_eligibility PRIMARY KEY ( k12_lea_pre_k_eligibility_id ),
	CONSTRAINT ix_k12_lea_pre_k_eligibility UNIQUE ( organization_id, ref_pre_kindergarten__eligibility_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.k12_lea_pre_k_eligibility IS 'The groups of students for whom pre-kindergarten is available.';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_pre_k_eligibility.k12_lea_pre_k_eligibility_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_pre_k_eligibility.organization_id IS 'Foreign key - K12LEA';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_pre_k_eligibility.ref_pre_kindergarten__eligibility_id IS 'The groups of students for whom pre-kindergarten programs are available. [CEDS Element: Pre-kindergarten Eligibility, ID:000216]  (Foreign key - Ref_Pre_Kindergarten__Eligibility)';

CREATE TABLE ceds6sc_rdx.k12_lea_safe_drug_free ( 
	organization_id    integer  NOT NULL,
	baseline           varchar(60)  ,
	baseline_year      varchar(20)  ,
	collection_frequency varchar(60)  ,
	indicator_name     varchar(60)  ,
	instrument         varchar(100)  ,
	performance        varchar(20)  ,
	target             varchar(20)  ,
	most_recent_collection varchar(20)  ,
	CONSTRAINT xpk_k12school_safe_drug_free PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_lea_safe_drug_free IS 'Information about the LEA''s performance under the Safe and Drug-Free Schools and Communities act.';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_safe_drug_free.organization_id IS 'Inherited surrogate key from K12Lea.';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_safe_drug_free.baseline IS 'The baseline of the performance indicator of student behavior under the Safe and Drug-Free Schools and Communities Act. [CEDS Element: Safe and Drug Free Baseline, ID:000477]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_safe_drug_free.baseline_year IS 'The academic year the baseline was established. [CEDS Element: Safe and Drug Free Baseline Year, ID:000478]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_safe_drug_free.collection_frequency IS 'The frequency of data collection for performance indicator under the Safe and Drug-Free Schools and Communities Act. [CEDS Element: Safe and Drug Free Collection Frequency, ID:000473]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_safe_drug_free.indicator_name IS 'The name of the performance indicator for student behaviors under the Safe and Drug-Free Schools and Communities Act. [CEDS Element: Safe and Drug Free Indicator Name, ID:000471]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_safe_drug_free.instrument IS 'The instrument or data source for reported performance indicator of student behavior under the Safe and Drug-Free Schools and Communities Act. [CEDS Element: Safe and Drug Free Instrument, ID:000472]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_safe_drug_free.performance IS 'Actual performance for the given  indicator of student behavior under the Safe and Drug-Free Schools and Communities Act [CEDS Element: Safe and Drug Free Performance, ID:000476]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_safe_drug_free.target IS 'The targeted performance for the given  indicator of student behavior under the Safe and Drug-Free Schools and Communities Act. [CEDS Element: Safe and Drug Free Target, ID:000475]';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_safe_drug_free.most_recent_collection IS 'The academic year of the most recent collection of the performance indicator under the Sage and Drug-Free Schools and Communities Act. [CEDS Element: Safe and Drug Free Year Most Recent Collection, ID:000474]';

CREATE TABLE ceds6sc_rdx.k12_lea_title_i_support_service ( 
	k12_lea_title_i_support_service_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_k12_lea_title_i_support_service_id integer  NOT NULL,
	CONSTRAINT pk_k12_lea_title_i_support_service PRIMARY KEY ( k12_lea_title_i_support_service_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_lea_title_i_support_service IS 'The type of support services provided to students in Title I programs by an LEA. ';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_title_i_support_service.k12_lea_title_i_support_service_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_title_i_support_service.organization_id IS 'Foreign key - K12LEA';

COMMENT ON COLUMN ceds6sc_rdx.k12_lea_title_i_support_service.ref_k12_lea_title_i_support_service_id IS 'The type of support services provided to students in Title I programs. [CEDS Element: Title I Support Services, ID:000289]  (Foreign key - Ref_K12_Lea_Title_I_Support_Service)';

CREATE TABLE ceds6sc_rdx.k12_program_or_service ( 
	organization_id    integer  NOT NULL,
	ref_pre_kindergarten__daily_length_id integer  ,
	ref_kindergarten_daily_length_id integer  ,
	ref_program_gifted_eligibility_id integer  ,
	ref_mep_session_type_id integer  ,
	ref_mep_project_type_id integer  ,
	program_in_multiple_purpose_facility bool  ,
	ref_title_i_instructional_services_id integer  ,
	ref_title_i_program_type_id integer  ,
	CONSTRAINT pk_k12_lea_program PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_program_or_service IS 'Information on the programs and services offered by an LEA or school.';

COMMENT ON COLUMN ceds6sc_rdx.k12_program_or_service.organization_id IS 'Surrogate key from K12LEA.';

COMMENT ON COLUMN ceds6sc_rdx.k12_program_or_service.ref_pre_kindergarten__daily_length_id IS 'The portion of a day that a pre-kindergarten program is provided to the students it serves. [CEDS Element: Pre_Kindergarten_ Daily Length, ID:000490]  (Foreign key - Ref_Program_Day_Length)';

COMMENT ON COLUMN ceds6sc_rdx.k12_program_or_service.ref_kindergarten_daily_length_id IS 'The portion of a day that a kindergarten program is provided to the students it serves. [CEDS Element: Kindergarten Daily Length, ID:000491]  (Foreign key - Ref_Program_Day_Length)';

COMMENT ON COLUMN ceds6sc_rdx.k12_program_or_service.ref_program_gifted_eligibility_id IS 'State/local code used to determine a student''s eligibility for Gifted/Talented program. [CEDS Element: Program Gifted Eligibility Criteria, ID:001244]';

COMMENT ON COLUMN ceds6sc_rdx.k12_program_or_service.ref_mep_session_type_id IS 'The time of year that a Migrant Education Program operates. [CEDS Element: Migrant Education Program Session Type, ID:000187]  (Foreign key - Ref_Mep_Session_Type)';

COMMENT ON COLUMN ceds6sc_rdx.k12_program_or_service.ref_mep_project_type_id IS 'Type of project funded in whole or in part by MEP funds. [CEDS Element: Migrant Education Program Project Type, ID:000463]  (Foreign key - Ref_Mep_Project_Type)';

COMMENT ON COLUMN ceds6sc_rdx.k12_program_or_service.program_in_multiple_purpose_facility IS 'An institution/facility/program that serves more than one programming purpose.  For example, the same facility may run both a juvenile correction program and a juvenile detention program. [CEDS Element: Program in Multiple Purpose Facility, ID:000485]';

COMMENT ON COLUMN ceds6sc_rdx.k12_program_or_service.ref_title_i_instructional_services_id IS 'The type of instructional services provided to students in ESEA Title I programs. [CEDS Element: Title I Instructional Services, ID:000282]  (Foreign key - Ref_Title_I_Instuctional_Services)';

COMMENT ON COLUMN ceds6sc_rdx.k12_program_or_service.ref_title_i_program_type_id IS 'The type of Title I program offered in the school or district. [CEDS Element: Title I Program Type, ID:000284]  (Foreign key - Ref_Title_I_Program_Type)';

CREATE TABLE ceds6sc_rdx.k12_school_corrective_action ( 
	k12_school_corrective_action_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_corrective_action_type_id integer  NOT NULL,
	CONSTRAINT pk_k12_school_corrective_action PRIMARY KEY ( k12_school_corrective_action_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_school_corrective_action IS 'The types of corrective actions utilized by a K12 school under ESEA as amended.';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_corrective_action.k12_school_corrective_action_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_corrective_action.organization_id IS 'Foreign key - K12 School';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_corrective_action.ref_corrective_action_type_id IS 'The types of corrective actions under ESEA as amended. [CEDS Element: Corrective Action Type, ID:000049]  (Foreign key - Ref_Corrective_Action_Type)';

CREATE TABLE ceds6sc_rdx.k12_school_improvement ( 
	k12_school_improvement_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_school_improvement_status_id integer  ,
	ref_school_improvement_funds_id integer  ,
	ref_sig_intervention_type_id integer  ,
	school_improvement_exit_date date  ,
	CONSTRAINT xpk_k12school_improvement PRIMARY KEY ( k12_school_improvement_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_school_improvement IS 'Information on the improvement status for a K12 school.';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_improvement.k12_school_improvement_id IS 'Surrogate Key.';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_improvement.organization_id IS 'Foreign key - K12School.';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_improvement.ref_school_improvement_status_id IS 'An indication of the improvement stage of the school. [CEDS Element: School Improvement Status, ID:000240]  (Foreign key - Ref_School_Improvement_Status)';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_improvement.ref_school_improvement_funds_id IS 'An indication of whether the school received funds under Section 1003 of ESEA, as amended. [CEDS Element: School Improvement Funds Status, ID:000238]';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_improvement.ref_sig_intervention_type_id IS 'The type of intervention used by the school under the School Improvement Grant (SIG). [CEDS Element: School Improvement Grant Intervention Type, ID:000239]  (Foreign key - Ref_Sig_Intervention_Type)';

COMMENT ON COLUMN ceds6sc_rdx.k12_school_improvement.school_improvement_exit_date IS 'Date the school exited school improvement status. [CEDS Element: School Improvement Exit Date, ID:000481]';

CREATE TABLE ceds6sc_rdx.k12_sea ( 
	organization_id    integer  NOT NULL,
	ref_state_ansi_code char(2)  ,
	CONSTRAINT xpk_k12sea PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_sea IS 'The SEA is the state-level entity primarily responsible for the supervision of the state''s public elementary and secondary schools.';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea.organization_id IS 'Inherited surrogate key from Organization.';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea.ref_state_ansi_code IS 'The American National Standards Institute (ANSI) two-digit code for the state. [CEDS Element: State ANSI Code, ID:000424]  (Foreign key - Ref_State_ANSI_Code)';

CREATE TABLE ceds6sc_rdx.k12_sea_federal_fund_allocation ( 
	k12_sea_federal_fund_allocation_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	federal_program_code varchar(10)  NOT NULL,
	ref_federal_program_funding_allocation_type_id integer  ,
	federal_programs_funding_allocation numeric(18,2)  ,
	CONSTRAINT pk_k12_sea_federal_fund_allocation PRIMARY KEY ( k12_sea_federal_fund_allocation_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_sea_federal_fund_allocation IS 'The federal funds allocated by an SEA.';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea_federal_fund_allocation.k12_sea_federal_fund_allocation_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea_federal_fund_allocation.organization_id IS 'Foreign key - K12Sea';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea_federal_fund_allocation.federal_program_code IS 'The unique five-digit number assigned to each federal program as listed in the Catalog of Federal Domestic Assistance (CFDA) Programs.  See http://www.cfda.gov/. [CEDS Element: Federal Program Code, ID:000547]';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea_federal_fund_allocation.ref_federal_program_funding_allocation_type_id IS 'The type of federal program funding allocation or distribution made. [CEDS Element: Federal Programs Funding Allocation Type, ID:000548]  (Foreign key - Ref_Federal_Program_Funding_Allocation_Type)';

COMMENT ON COLUMN ceds6sc_rdx.k12_sea_federal_fund_allocation.federal_programs_funding_allocation IS 'The amount of federal dollars distributed to local education agencies (LEAs), retained by the state education agency (SEA) for program administration or other approved state-level activities (including unallocated, transferred to another state agency, or distributed to entities other than LEAs). [CEDS Element: Federal Programs Funding Allocation, ID:000549]';

CREATE TABLE ceds6sc_rdx.k12_staff_assignment ( 
	organization_person_role_id integer  NOT NULL,
	ref_k12_staff_classification_id integer  ,
	ref_professional_education_job_classification_id integer  ,
	ref_teaching_assignment_role_id integer  ,
	primary_assignment bool  ,
	teacher_of_record  bool  ,
	ref_classroom_position_type_id integer  ,
	full_time_equivalency decimal(5,4)  ,
	contribution_percentage decimal(5,2)  ,
	itinerant_teacher  bool  ,
	highly_qualified_teacher_indicator bool  ,
	special_education_teacher bool  ,
	ref_special_education_staff_category_id integer  ,
	special_education_related_services_personnel bool  ,
	special_education_paraprofessional bool  ,
	ref_special_education_age_group_taught_id integer  ,
	ref_mep_staff_category_id integer  ,
	ref_title_i_program_staff_category_id integer  ,
	CONSTRAINT pk_k12_staff_assignment PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_staff_assignment IS 'Describes a person''s assignment to a K12 organization.';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.organization_person_role_id IS 'Inherited surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.ref_k12_staff_classification_id IS 'The titles of employment, official status, or rank of education staff. [CEDS Element: K12 Staff Classification, ID:000087]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.ref_professional_education_job_classification_id IS 'A general job classification that describes staff that performs duties requiring a high degree of knowledge and skills generally acquired through at least a baccalaureate degree (or its equivalent obtained through special study and/or experience) including skills in the field of education, educational psychology, educational social work, or an education therapy field. [CEDS Element: Professional Educational Job Classification, ID:000220]  (Foreign key - Ref_Professional_Education_Job_Classification)';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.ref_teaching_assignment_role_id IS 'The role that the Staff Member has been assigned for a Class Section.  (A teacher may have the lead responsibility for one section and serve a supporting role for another section of the same course.) [CEDS Element: Teaching Assignment Role, ID:000648]  (Foreign key - Ref_Teaching_Assignment_Role)';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.primary_assignment IS 'An indication of whether the assignment is this the staff member''s primary assignment. [CEDS Element: Primary Assignment Indicator, ID:000525]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.teacher_of_record IS 'Staff member who has a Teacher of Record responsibility for a Class Section based upon the state''s definition of Teacher of Record. [CEDS Element: Teacher of Record, ID:000647]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.ref_classroom_position_type_id IS 'The type of position the staff member holds in the specific class/section. [CEDS Element: Classroom Position Type, ID:000622]  (Foreign key - Ref_Classroom_Positioin_Type)';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.full_time_equivalency IS 'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting. [CEDS Element: Staff Full Time Equivalency, ID:000118]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.contribution_percentage IS 'A percentage used to weight the educator''s assigned responsibility for student learning in a Class Section, particularly when more than one educator is assigned to the class section. [CEDS Element: Teaching Assignment Contribution Percentage, ID:000649]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.itinerant_teacher IS 'An indication of whether a teacher provides instruction in more than one instructional site. [CEDS Element: Itinerant Teacher, ID:000528]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.highly_qualified_teacher_indicator IS 'An indication that the teacher has been classified as highly qualified based on assignment. [CEDS Element: Highly Qualified Teacher Indicator, ID:000142]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.special_education_teacher IS 'An indication of whether a teacher is employed or contracted to work with children with disabilities who are ages 3 through 21. [CEDS Element: Special Education Teacher, ID:000264]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.ref_special_education_staff_category_id IS 'Titles of personnel employed and contracted to provide related services for children with disabilities. [CEDS Element: Special Education Staff Category, ID:000558]  (Foreign key - Ref_Special_Education_Staff_Category)';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.special_education_related_services_personnel IS 'An indication of whether a related services person is employed or contracted to work with children with disabilities who are ages 3 through 21. [CEDS Element: Special Education Related Services Personnel, ID:000262]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.special_education_paraprofessional IS 'An indication of whether a paraprofessional is employed or contracted to work with children with disabilities who are ages 3 through 21. [CEDS Element: Special Education Paraprofessional, ID:000261]';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.ref_special_education_age_group_taught_id IS 'The age range of special education students taught. [CEDS Element: Special Education Age Group Taught, ID:000564]  (Foreign key - Ref_Special_Education_Age_Group_Taught)';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.ref_mep_staff_category_id IS 'Titles of employment, official status, or rank of staff working in the Migrant Education Program (MEP). [CEDS Element: Migrant Education Program Staff Category, ID:000188]  (Foreign key - Ref_Mep_Staff_Category)';

COMMENT ON COLUMN ceds6sc_rdx.k12_staff_assignment.ref_title_i_program_staff_category_id IS 'Titles of employment, official status, or rank for staff working in a Title I program. [CEDS Element: Title I Program Staff Category, ID:000283]  (Foreign key - Ref_Title_I_Program_Staff_Category)';

CREATE TABLE ceds6sc_rdx.k12_student_academic_honor ( 
	k12_student_academic_honor_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_academic_honor_type_id integer  ,
	honor_description  varchar(80)  ,
	CONSTRAINT pk_k12_student_academic_honor PRIMARY KEY ( k12_student_academic_honor_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_student_academic_honor IS 'Academic distinctions earned or awarded to a K12 student.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_honor.k12_student_academic_honor_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_honor.organization_person_role_id IS 'Foreign key - Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_honor.ref_academic_honor_type_id IS 'A designation of the type of academic distinctions earned by or awarded to the student. [CEDS Element: Academic Honors Type, ID:000004]  (Foreign key - Ref_Academic_Honor_Type)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_academic_honor.honor_description IS 'A description of the type of academic distinctions earned by or awarded to the person. [CEDS Element: Honors Description, ID:000150]';

CREATE TABLE ceds6sc_rdx.k12_student_activity ( 
	organization_person_role_id integer  NOT NULL,
	activity_time_involved decimal(9,2)  ,
	ref_activity_time_measurement_type_id integer  ,
	CONSTRAINT pk_k12_student_activity PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.k12_student_activity.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_activity.activity_time_involved IS 'The amount of time the student participated in the events and procedures of an activity, such as a co-curricular or extra-curricular activity that is offered at an education institution. [CEDS Element: Activity Time Involved, ID:001527]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_activity.ref_activity_time_measurement_type_id IS 'The type of measurement for the amount of time the student participated in the events and procedures of an activity, such as a co-curricular or extra-curricular activity that is offered at an education institution. [CEDS Element: Activity Time Measurement Type, ID:001528]';

CREATE TABLE ceds6sc_rdx.k12_student_course_section ( 
	organization_person_role_id integer  NOT NULL,
	ref_course_repeat_code_id integer  ,
	ref_course_section_enrollment_status_type_id integer  ,
	ref_course_section_entry_type_id integer  ,
	ref_course_section_exit_type_id integer  ,
	ref_exit_or_withdrawal_status_id integer  ,
	ref_grade_level_when_course_taken_id integer  ,
	grade_earned       varchar(15)  ,
	grade_value_qualifier varchar(100)  ,
	number_of_credits_attempted decimal(9,2)  ,
	ref_credit_type_earned_id integer  ,
	ref_additional_credit_type_id integer  ,
	ref_pre_and_post_test_indicator_id integer  ,
	ref_progress_level_id integer  ,
	ref_course_gpa_applicability_id integer  ,
	number_of_credits_earned decimal(9,2)  ,
	tuition_funded     bool  ,
	CONSTRAINT pk_k12_student_course_section PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_student_course_section IS 'The attributes for a K12 student enrolled in a course section.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.organization_person_role_id IS 'Inherited surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.ref_course_repeat_code_id IS 'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average. [CEDS Element: Course Repeat Code, ID:000065]  (Foreign key - Ref_Course_Repeat_Code)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.ref_course_section_enrollment_status_type_id IS 'The status related to a student enrollment in an instance of a course. [CEDS Element: Course Section Enrollment Status Type, ID:000976]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.ref_course_section_entry_type_id IS 'The process by which a student enters a school (Course Section) during a given academic session. [CEDS Element: Course Section Entry Type, ID:000650]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.ref_course_section_exit_type_id IS 'The circumstances under which the student exited from membership in a course section. [CEDS Element: Course Section Exit Type, ID:000652]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.ref_exit_or_withdrawal_status_id IS 'An indication as to whether an instance of student exit/withdrawal is considered to be of a permanent or temporary nature. [CEDS Element: Exit or Withdrawal Status, ID:000108]  (Foreign key - Ref_Exit_Or_Withdrawal_Status)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.ref_grade_level_when_course_taken_id IS 'Student''s grade level at time of course. [CEDS Element: Grade Level When Course Taken, ID:000125]  (Foreign key - Ref_Grade_Level)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.grade_earned IS 'A final indicator of student performance in a course section as submitted by the instructor. [CEDS Element: Student Course Section Grade Earned, ID:000124]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.grade_value_qualifier IS 'The scale of equivalents, if applicable, for grades awarded as indicators of performance in schoolwork. For example, numerical equivalents for letter grades used in determining a student''s Grade Point Average (A=4, B=3, C=2, D=1 in a four-point system) or letter equivalents for percentage grades (90-100%=A, 80-90%=B, etc.) [CEDS Element: Grade Value Qualifier, ID:000616]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.number_of_credits_attempted IS 'The number of credits that a student can earn for enrolling in and completing a given course. [CEDS Element: Number of Credits Attempted, ID:000199]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.ref_credit_type_earned_id IS 'The type of credits or units of value awarded for the completion of a course. [CEDS Element: Credit Type Earned, ID:000072]  (Foreign key - Ref_Credit_Type_Earned)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.ref_additional_credit_type_id IS 'The type of credits or units of value available for the completion of a course in addition to Carnegie Units. [CEDS Element: Additional Credit Type, ID:000596]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.ref_pre_and_post_test_indicator_id IS 'An indication of whether students took both a pre-test and a post-test to measure academic improvement. [CEDS Element: Pre and Post Test Indicator, ID:000571]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.ref_progress_level_id IS 'The amount of progress shown in academic subjects. [CEDS Element: Progress Level, ID:000561]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.ref_course_gpa_applicability_id IS 'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA). [CEDS Element: Course Grade Point Average Applicability, ID:000060] (Foreign key - Ref_Course_Gpa_Applicability)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.number_of_credits_earned IS 'The number of credits an individual earns by the successful completion of a course. [CEDS Element: Number of Credits Earned, ID:000200]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_course_section.tuition_funded IS 'Indicates that tuition for person''s participation in a program, service, or course is funded or partially funded by an external grant program. [CEDS Element: Tuition Funded, ID:001575]';

CREATE TABLE ceds6sc_rdx.k12_student_discipline ( 
	k12_student_discipline_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	ref_discipline_reason_id integer  ,
	ref_disciplinary_action_taken_id integer  ,
	disciplinary_action_start_date date  ,
	disciplinary_action_end_date date  ,
	duration_of_disciplinary_action decimal(9,2)  ,
	ref_discipline_length_difference_reason_id integer  ,
	full_year_expulsion bool  ,
	shortened_expulsion bool  ,
	educational_services_after_removal bool  ,
	ref_idea_interim_removal_id integer  ,
	ref_idea_interim_removal_reason_id integer  ,
	related_to_zero_tolerance_policy bool  ,
	incident_id        integer  ,
	iep_placement_meeting_indicator bool  ,
	ref_discipline_method_firearms_id integer  ,
	ref_discipline_method_of_cwd_id integer  ,
	ref_idea_discipline_method_firearm_id integer  ,
	CONSTRAINT pk_k12_student_discipline PRIMARY KEY ( k12_student_discipline_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_student_discipline IS 'The detail information for the reason and action taken for a discipline event of a K12 student.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.k12_student_discipline_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.ref_discipline_reason_id IS 'The reason why the student was disciplined. [CEDS Element: Discipline Reason, ID:000545]  (Foreign key - Ref_Discipline_Reason)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.ref_disciplinary_action_taken_id IS 'Identifies the consequences of an incident for the student(s) involved in an incident as perpetrator(s). [CEDS Element: Disciplinary Action Taken, ID:000488]  (Foreign key - Ref_Disciplinary_Action_Taken)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.disciplinary_action_start_date IS 'The date on which a discipline action begins. [CEDS Element: Disciplinary Action Start Date, ID:000083]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.disciplinary_action_end_date IS 'The date on which a discipline action ends. [CEDS Element: Disciplinary Action End Date, ID:000082]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.duration_of_disciplinary_action IS 'The length, in school days, of the disciplinary action. [CEDS Element: Duration of Disciplinary Action, ID:000511]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.ref_discipline_length_difference_reason_id IS 'The reason for the difference, if any, between the official and actual lengths of a student’s disciplinary assignment. [CEDS Element: Discipline Action Length Difference Reason, ID:000609]  (Foreign key - Ref_Discipline_Length_Difference_Reason)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.full_year_expulsion IS 'An expulsion with or without services for a period of one full year (i.e., 365 days). [CEDS Element: Full Year Expulsion, ID:000513]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.shortened_expulsion IS 'An expulsion with or without services that is shortened to a term of less than one year by the superintendent or chief administrator of a school district. [CEDS Element: Shortened Expulsion, ID:000514]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.educational_services_after_removal IS 'Educational_Services_After_Removal';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.ref_idea_interim_removal_id IS 'The type of interim removal from current educational setting experienced by children with disabilities (IDEA). [CEDS Element: IDEA Interim Removal, ID:000541]  (Foreign key - Ref_Idea_Interim_Removal)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.ref_idea_interim_removal_reason_id IS 'The reasons why children with disabilities were unilaterally removed from their current educational placement to an interim alternative educational setting. [CEDS Element: IDEA Interim Removal Reason, ID:000539]  (Foreign key - Ref_Idea_Interim_Removal_Reason)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.related_to_zero_tolerance_policy IS 'An indication of whether or not any of the disciplinary actions taken against a student were imposed as a consequence of state or local zero tolerance policies. [CEDS Element: Related to Zero Tolerance Policy, ID:000512]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.incident_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.iep_placement_meeting_indicator IS 'An indication as to whether an offense and/or disciplinary action resulted in a meeting of a student’s Individualized Education Program (IEP) team to determine appropriate placement. [CEDS Element: Disciplinary Action IEP Placement Meeting Indicator, ID: 001322]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.ref_discipline_method_firearms_id IS 'The method used to discipline students who are not children with disabilities (IDEA) involved in firearms and other outcomes of firearms incidents. [CEDS Element: Discipline Method for Firearms Incidents, ID:000555]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.ref_discipline_method_of_cwd_id IS 'The type of suspension or expulsion used for the discipline of children with disabilities. [CEDS Element: Discipline Method of Children with Disabilities, ID:000538]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_discipline.ref_idea_discipline_method_firearm_id IS 'The methods used to discipline students who are children with disabilities (IDEA) involved in firearms and other outcomes of firearms incidents. [CEDS Element: IDEA Discipline Method for Firearms Incidents, ID:000556]';

CREATE TABLE ceds6sc_rdx.k12_student_enrollment ( 
	organization_person_role_id integer  NOT NULL,
	ref_entry_grade_level_id integer  ,
	ref_public_school_residence integer  ,
	ref_enrollment_status_id integer  ,
	ref_entry_type     integer  ,
	ref_exit_grade_level integer  ,
	ref_exit_or_withdrawal_status_id integer  ,
	ref_exit_or_withdrawal_type_id integer  ,
	displaced_student_status bool  ,
	ref_end_of_term_status_id integer  ,
	ref_promotion_reason_id integer  ,
	ref_non_promotion_reason_id integer  ,
	ref_food_service_eligibility_id integer  ,
	first_entry_date_into_usschool date  ,
	ref_directory_information_block_status_id integer  ,
	nslpdirect_certification_indicator bool  ,
	CONSTRAINT xpk_k12enrollment_member PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_student_enrollment IS 'Information about a student officially registered on the roll of a school or schools.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.organization_person_role_id IS 'Surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.ref_entry_grade_level_id IS 'Surrogate key to Ref_Grade_Level.  The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session. [CEDS Element: Entry Grade Level, ID:000100]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.ref_public_school_residence IS 'An indication of the location of a persons legal residence relative to (within or outside) the boundaries of the public school attended and its administrative unit. [CEDS Element: Public School Residence Status, ID:000532]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.ref_enrollment_status_id IS 'An indication as to whether a student''s name was, is, or will be officially registered on the roll of a school or schools. [CEDS Element: Enrollment Status, ID:000094]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.ref_entry_type IS 'The process by which a student enters a school during a given academic session. [CEDS Element: Entry Type, ID:000099]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.ref_exit_grade_level IS 'Surrogate key from Ref_Grade_Level.  The grade level or primary instructional level at which a student exits a school, program, or an educational institution. [CEDS Element: Exit Grade Level, ID:001210]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.ref_exit_or_withdrawal_status_id IS 'An indication as to whether an instance of student exit/withdrawal is considered to be of a permanent or temporary nature. [CEDS Element: Exit or Withdrawal Status, ID:000108]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.ref_exit_or_withdrawal_type_id IS 'The circumstances under which the student exited from membership in an educational institution.  [CEDS Element: Exit or Withdrawal Type, ID:000110]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.displaced_student_status IS 'A student who was enrolled, or eligible for enrollment, but has enrolled in another place because of a crisis. [CEDS Element: Displaced Student Status, ID:000610]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.ref_end_of_term_status_id IS 'The nature of the student''s progress at the end of a given school term. [CEDS Element: End of Term Status, ID:000093]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.ref_promotion_reason_id IS 'The nature of the student''s promotion or progress at the end of a given school term. [CEDS Element: Promotion Reason, ID:000530]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.ref_non_promotion_reason_id IS 'The primary reason as to why a staff member determined that a student should not be promoted (or be demoted). [CEDS Element: Nonpromotion Reason, ID:000531]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.ref_food_service_eligibility_id IS 'An indication of a student''s level of eligibility to participate in the National School Lunch Program for breakfast, lunch, snack, supper, and milk programs. [CEDS Element: Eligibility Status for School Food Service Programs, ID:000092]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.first_entry_date_into_usschool IS 'The date of a person''s initial enrollment into a United States school. [CEDS Element: First Entry Date into a US School, ID:000529]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.ref_directory_information_block_status_id IS 'An indication of whether a individual requested a Family Education Rights and Privacy Act (FERPA) block to withhold the release of the person''s directory information. [CEDS Element: Directory Information Block Status, ID:001590]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_enrollment.nslpdirect_certification_indicator IS 'Indicates that the student''s National School Lunch Program (NSLP) eligibility has been determined through direct certification. [CEDS Element: National School Lunch Program Direct Certification Indicator, ID:001654]';

CREATE TABLE ceds6sc_rdx.k12_student_literacy_assessment ( 
	organization_person_role_id integer  NOT NULL,
	ref_literacy_assessment_id integer  ,
	literacy_pre_test_status bool  ,
	literacy_post_test_status bool  ,
	literacy_goal_met_status bool  ,
	CONSTRAINT pk_k12_student_literacy_assessment PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.k12_student_literacy_assessment IS 'Information about literacy assessment given to a K12 student.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_literacy_assessment.organization_person_role_id IS 'Inherited surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_literacy_assessment.ref_literacy_assessment_id IS 'The type of literacy test administered. [CEDS Element: Literacy Assessment Administered Type, ID:000466]  (Foreign key - Ref_Literacy_Assessment)';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_literacy_assessment.literacy_pre_test_status IS 'The participant completed a literacy pre-test. [CEDS Element: Literacy Pre Test Status, ID:000469]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_literacy_assessment.literacy_post_test_status IS 'The participant completed a literacy post-test. [CEDS Element: Literacy Post Test Status, ID:000468]';

COMMENT ON COLUMN ceds6sc_rdx.k12_student_literacy_assessment.literacy_goal_met_status IS 'The participant showed significant learning gains on measures of reading, the definition of which is determined at the State level. [CEDS Element: Literacy Goal Met Status, ID:000467]';

CREATE TABLE ceds6sc_rdx.k12_title_iii_language_instruction ( 
	k12_title_iii_language_instruction_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_title_iii_language_instruction_program_type_id integer  NOT NULL,
	CONSTRAINT pk_k12_lea_title_iii_language_instr PRIMARY KEY ( k12_title_iii_language_instruction_id ),
	CONSTRAINT ix_k12_lea_title_iii_language_instruction UNIQUE ( organization_id, ref_title_iii_language_instruction_program_type_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.k12_title_iii_language_instruction IS 'The collection of Title III language instructional programs offered by an LEA.';

COMMENT ON COLUMN ceds6sc_rdx.k12_title_iii_language_instruction.k12_title_iii_language_instruction_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.k12_title_iii_language_instruction.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.k12_title_iii_language_instruction.ref_title_iii_language_instruction_program_type_id IS 'The type of Title III language instructional programs. [CEDS Element: Title III Language Instruction Program Type, ID:000447]';

CREATE TABLE ceds6sc_rdx.learner_activity ( 
	learner_activity_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	assessment_registration_id integer  ,
	course_section_id  integer  ,
	organization_calendar_session_id integer  ,
	title              varchar(30)  ,
	description        varchar(300)  ,
	prerequisite       varchar(300)  ,
	ref_learner_activity_type_id integer  ,
	rubric_url         varchar(300)  ,
	creation_date      date  ,
	maximum_time_allowed decimal(9,0)  ,
	ref_learner_activity_maximum_time_allowed_units_id integer  ,
	due_date           date  ,
	due_time           time  ,
	maximum_attempts_allowed decimal(9,0)  ,
	ref_learner_activity_add_to_grade_book_flag_id integer  ,
	release_date       date  ,
	weight             decimal(9,2)  ,
	possible_points    decimal(9,2)  ,
	ref_language_id    integer  ,
	assigned_by_person_id integer  ,
	school_organization_id integer  ,
	lea_organization_id integer  ,
	CONSTRAINT pk_learner_activity PRIMARY KEY ( learner_activity_id )
 );

COMMENT ON TABLE ceds6sc_rdx.learner_activity IS 'The work assigned to a learner and/or performed by a learner which can comprise of interaction with learning resources, and assessments. ';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.learner_activity_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.assessment_registration_id IS 'Foreign key - Assessment_Registration.';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.course_section_id IS 'Surrogate key from Course_Section.';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.organization_calendar_session_id IS 'Foreign key - Session';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.title IS 'The title for work assigned to the learner, which can comprise of learning resources, activities, and assessments. [CEDS Element: Learner Activity Title, ID:000939]';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.description IS 'The description and context for the assignment  described in a way that the learner can understand. [CEDS Element: Learner Activity Description, ID:000940]';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.prerequisite IS 'The description of the skills or competencies the student must have to engage in assignment. [CEDS Element: Learner Activity Prerequisite, ID:000941]';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.ref_learner_activity_type_id IS 'The type of work assigned to the learner. [CEDS Element: Learner Activity Type, ID:000942]  (Foreign key - Ref_Learner_Activity_Type)';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.rubric_url IS 'The Uniform Resource Locator pointing to a rubric that may be used to evaluate learner performance on the assignment. [CEDS Element: Learner Activity Rubric URL, ID:000953]';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.creation_date IS 'The creation date of the assignment. [CEDS Element: Learner Activity Creation Date, ID:000943]';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.maximum_time_allowed IS 'The time required to complete the assignment. [CEDS Element: Learner Activity Maximum Time Allowed, ID:000944]';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.ref_learner_activity_maximum_time_allowed_units_id IS 'The unit of time of the Maximum Time Allowed value. [CEDS Element: Learner Activity Maximum Time Allowed Unit, ID:000945]  (Foreign key - Ref_Learner_Activity_Maximum_Time_Allowe_Units)';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.due_date IS 'The date assignment is due. [CEDS Element: Learner Activity Due Date, ID:000946]';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.due_time IS 'The time the assignment is due. [CEDS Element: Learner Activity Due Time, ID:000947]';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.maximum_attempts_allowed IS 'The number attempts a student may make on this assignment. Assumed to be unlimited if zero or omitted. [CEDS Element: Learner Activity Maximum Attempts Allowed, ID:000948]';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.ref_learner_activity_add_to_grade_book_flag_id IS 'Identifies the assignment as one that is graded. [CEDS Element: Learner Activity Add To Grade Book Flag, ID:000949]';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.release_date IS 'The date the student was informed about an assignment or that an automated system displays the assignment. [CEDS Element: Learner Activity Release Date, ID:000950]';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.weight IS 'The percentage weight of the assignment during the particular course or term. [CEDS Element: Learner Activity Weight, ID:000951]';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.possible_points IS 'The number of possible points for an assignment. [CEDS Element: Learner Activity Possible Points, ID:000952]';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.ref_language_id IS 'The default language used for the assignment. [CEDS Element: Learner Activity Language, ID:000938]  (Foreign key - Ref_Language)';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.assigned_by_person_id IS 'Foreign key - Person';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.school_organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.learner_activity.lea_organization_id IS 'Foreign key - Organization';

CREATE TABLE ceds6sc_rdx.learning_goal ( 
	learning_goal_id   integer  NOT NULL,
	description        varchar(300)  ,
	success_criteria   varchar(300)  ,
	start_date         date  ,
	end_date           date  ,
	person_id          integer  ,
	competency_set_id  integer  ,
	CONSTRAINT pk_learning_goal PRIMARY KEY ( learning_goal_id )
 );

COMMENT ON TABLE ceds6sc_rdx.learning_goal IS 'An entity that specifies the learning that is intended for an individual learner and the success criteria use to indicate progress toward the learning goal.  In the formative assessment process a learning goal exists within the framework of a Learning Progression / Competency-based Pathway defined within the context of Learning Standards.';

COMMENT ON COLUMN ceds6sc_rdx.learning_goal.learning_goal_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.learning_goal.description IS 'A statement that specifies the learning that is intended in a way that both the educators and learners can understand. [CEDS Element: Learning Goal Description, ID:000903]';

COMMENT ON COLUMN ceds6sc_rdx.learning_goal.success_criteria IS 'One or more statements that describes the criteria used by teachers and students to check for attainment of a leaning goal. This criteria gives clear indications as to the  degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the learning goal. [CEDS Element: Learning Goal Success Criteria, ID:000902]';

COMMENT ON COLUMN ceds6sc_rdx.learning_goal.start_date IS 'The date on which the Learning Goal becomes active. [CEDS Element: Learning Goal Start Date, ID:001165]';

COMMENT ON COLUMN ceds6sc_rdx.learning_goal.end_date IS 'The date on which the Learning Goal expires or has been achieved. [CEDS Element: Learning Goal End Date, ID:001166]';

COMMENT ON COLUMN ceds6sc_rdx.learning_goal.person_id IS 'Foreign Key - Person';

COMMENT ON COLUMN ceds6sc_rdx.learning_goal.competency_set_id IS 'Foreign key - Competency_Set';

CREATE TABLE ceds6sc_rdx.learning_resource_adaptation ( 
	learning_resource_adaptation_id integer  NOT NULL,
	learning_resource_id integer  NOT NULL,
	adaptation_url     varchar(300)  NOT NULL,
	CONSTRAINT pk_learning_resource_adaptation PRIMARY KEY ( learning_resource_adaptation_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_adaptation.learning_resource_adaptation_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_adaptation.learning_resource_id IS 'Foreign key to Learning_Resource';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_adaptation.adaptation_url IS 'The Uniform Resource Locator of a learning resource that is an adaptation for this resource. [CEDS Element: Learning Resource Adaptation URL, ID: 001392]	';

CREATE TABLE ceds6sc_rdx.learning_resource_media_feature ( 
	learning_resource_media_feature_id integer  NOT NULL,
	learning_resource_id integer  NOT NULL,
	ref_learning_resource_media_feature_type_id integer  NOT NULL,
	CONSTRAINT pk_learning_resource_media_feature PRIMARY KEY ( learning_resource_media_feature_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_media_feature.learning_resource_media_feature_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_media_feature.learning_resource_id IS 'Foreign key to Learning_Resource';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_media_feature.ref_learning_resource_media_feature_type_id IS 'Accessible content features included with the learning resource. [CEDS Element: Learning Resource Media Feature Type, ID:001399]';

CREATE TABLE ceds6sc_rdx.learning_resource_physical_media ( 
	learning_resource_physical_media_id integer  NOT NULL,
	learning_resource_id integer  NOT NULL,
	ref_learning_resource_physical_media_type_id integer  NOT NULL,
	CONSTRAINT pk_learning_resource_physical_media PRIMARY KEY ( learning_resource_physical_media_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_physical_media.learning_resource_physical_media_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_physical_media.learning_resource_id IS 'Foreign key to Learning_Resource';

COMMENT ON COLUMN ceds6sc_rdx.learning_resource_physical_media.ref_learning_resource_physical_media_type_id IS 'A type of physical media on which the Learning Resource is delivered or available. [CEDS Element: Learning Resource Physical Media Type, ID:001401]';

CREATE TABLE ceds6sc_rdx.learning_standard_item ( 
	learning_standard_item_id integer  NOT NULL,
	identifier         varchar(40)  ,
	code               varchar(30)  ,
	url                varchar(300)  ,
	type               varchar(60)  ,
	statement          text  ,
	version            text  ,
	typical_age_range  varchar(20)  ,
	ref_language_id    integer  ,
	text_complexity_system varchar(30)  ,
	text_complexity_minimum_value decimal(18,4)  ,
	text_complexity_maximum_value decimal(18,4)  ,
	ref_blooms_taxonomy_domain_id integer  ,
	ref_multiple_intelligence_type_id integer  ,
	concept_term       varchar(30)  ,
	concept_keyword    varchar(300)  ,
	license            varchar(300)  ,
	notes              text  ,
	learning_standard_item_parent_id varchar(40)  ,
	learning_standard_item_parent_code varchar(30)  ,
	learning_standard_item_parent_url varchar(300)  ,
	child_of_learning_standard_item integer  ,
	learning_standard_document_id integer  NOT NULL,
	current_version_indicator bool  ,
	previous_version_identifier varchar(40)  ,
	valid_start_date   date  ,
	valid_end_date     date  ,
	node_name          varchar(30)  ,
	ref_learning_standard_item_node_accessibility_profile_id integer  ,
	ref_learning_standard_item_testability_type_id integer  ,
	learning_standard_item_sequence varchar(60)  ,
	CONSTRAINT xpk_learning_standard_item PRIMARY KEY ( learning_standard_item_id )
 );

COMMENT ON TABLE ceds6sc_rdx.learning_standard_item IS 'Content that either describes a specific competency (learning objective) or describes a grouping of competencies within the taxonomy of a Learning Standards Document. ';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.learning_standard_item_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.identifier IS 'The globally unique identifier (GUID) issued by the publisher of the competency framework that uniquely identifies the item in the hierarchy of learning standard items using a RFC 4122 compliant 32-character hexadecimal string, such as 21EC2020-3AEA-1069-A2DD-08002B30309D. [CEDS Element: Learning Standard Item Identifier, ID:000689]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.code IS 'A human-referenceable code designated by the publisher to identify the item in the hierarchy of learning standard items. [CEDS Element: Learning Standard Item Code, ID:000692]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.url IS 'A network-resolvable Uniform Resource Locator (URL) pointing to the authoritative reference for the learning standard item. [CEDS Element: Learning Standard Item URL, ID:000874]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.type IS 'The textual label identifying the class of the statement as designated by the promulgating body—e.g., standard, benchmark, strand, or topic. or level 1, level 2,... [CEDS Element: Learning Standard Item Type, ID:000691]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.statement IS 'The text of the statement. The textual content that either describes a specific competency  or describes a less granular group of competencies within the taxonomy of the standards document. [CEDS Element: Learning Standard Item Statement, ID:000690]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.version IS 'A label assigned by the publisher indicating the version of the learning standard statement. [CEDS Element: Learning Standard Item Version, ID:001250]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.typical_age_range IS 'The typical range of ages for the content’s intended end user. [CEDS Element: Learning Standard Item Typical Age Range, ID:000870]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.ref_language_id IS 'The default language of the text used for the content in the learning standard statement. [CEDS Element: Learning Standard Item Language, ID:000881]  (Foreign key - Ref_Language)';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.text_complexity_system IS 'The scaling system used to specify the text complexity of an learning standard item. [CEDS Element: Learning Standard Item Text Complexity System, ID:000910]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.text_complexity_minimum_value IS 'The minimum value in the range of text complexity applicable to a language learning standard using the scaling system defined by Text Complexity System, e.g. Lexile(tm). [CEDS Element: Learning Standard Item Text Complexity Minimum Value, ID:001154]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.text_complexity_maximum_value IS 'The maximum value in the range of text complexity applicable to a language learning standard using the scaling system defined by Text Complexity System, e.g. Lexile(tm). [CEDS Element: Learning Standard Item Text Complexity Maximum Value, ID:001155]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.ref_blooms_taxonomy_domain_id IS 'Classification of the Learning Standard Item using Bloom''s Taxonomy Domains.  [CEDS Element: Learning Standard Item Blooms Taxonomy Domain, ID:000875]  (Foreign key - Ref_Blooms_Taxonomy_Domain)';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.ref_multiple_intelligence_type_id IS 'Classification of the Learning Standard Item using intelligences defined for Howard Earl Gardner''s Theory of Multiple Intelligences. [CEDS Element: Learning Standard Item Multiple Intelligence, ID:000876]  (Foreign key - Ref_Multiple_Intelligenct_Type)';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.concept_term IS 'The topicality of the achievement standard, e.g. pythagorean theorem trigonometric functions forces and energy scientific method oral history etc. [CEDS Element: Learning Standard Item Concept Term, ID:000888]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.concept_keyword IS 'The significant topicality of the learning standard using free-text keywords and phrases. [CEDS Element: Learning Standard Item Concept Keyword, ID:000887]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.license IS 'The full text or URL reference to a legal document giving official permission to do something with the standards statement. [CEDS Element: Learning Standard Item License, ID:000883]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.notes IS 'Information about the derivation of a Learning Standard Item Statement. [CEDS Element: Learning Standard Item Notes, ID:001249]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.learning_standard_item_parent_id IS 'The globally unique identifier (GUID) issued by the publisher of the competency framework that uniquely identifies the parent  item in the hierarchy of learning standard items using a RFC 4122 compliant 32-character hexadecimal string, such as 21EC2020-3AEA-1069-A2DD-08002B30309D. [CEDS Element: Learning Standard Item Parent Identifier, ID:000872]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.learning_standard_item_parent_code IS 'A human-referenceable code designated by the publisher to identify the parent item in the hierarchy of learning standard items. [CEDS Element: Learning Standard Item Parent Code, ID:000873]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.learning_standard_item_parent_url IS 'A network-resolvable Uniform Resource Locator (URL) pointing to the authoritative reference for the hierarchal parent of the learning standard item. [CEDS Element: Learning Standard Item Parent URL, ID:001094]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.child_of_learning_standard_item IS 'FK';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.learning_standard_document_id IS 'FK';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.current_version_indicator IS 'Indicates that this is the most current version of the Learning Standard Item. [CEDS Element: Learning Standard Item Current Version Indicator, ID: 001525]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.previous_version_identifier IS 'The unique identifier of the previous version of the Learning Standard Item if the statement was modified. [CEDS Element: Learning Standard Item Previous Version Identifier, ID: 001524]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.valid_start_date IS 'The year, month and day the standards item was adopted by the jurisdiction in which it was intended to apply. [CEDS Element: Learning Standard Item Valid Start, ID: 001512]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.valid_end_date IS 'The year, month and day the standards item was deprecated/replaced by the jurisdiction in which it was intended to apply. [CEDS Element: Learning Standard Item Valid End Date, ID: 001511]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.node_name IS 'The name or label displayed on the node when this learning standard item is used in a learning map. [CEDS Element: Learning Standard Item Node Name, ID: 001409]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.ref_learning_standard_item_node_accessibility_profile_id IS 'When the Learning Standard Item is used as a node in a learning map, this element supports alternative pathways based on a learner''s accessibility profile.  The type selected indicates which accessibility profile the node is designed to address. [CEDS Element: Learning Standard Item Node Accessibility Profile, ID:001408]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.ref_learning_standard_item_testability_type_id IS 'Indicates if the competency described in the Learning Standard Item Statement can be tested using one or more assessment items. [CEDS Element: Learning Standard Item Testability Type, ID:001411]';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item.learning_standard_item_sequence IS 'A set of one or more alphanumeric characters and/or symbols denoting the positioning of the statement being described in a sequential listing of statements. [CEDS Element: Learning Standard Item Sequence, ID:001570]';

CREATE TABLE ceds6sc_rdx.learning_standard_item_education_level ( 
	learning_standard_item_education_level_id integer  NOT NULL,
	learning_standards_item_id integer  NOT NULL,
	ref_education_level_id integer  NOT NULL,
	CONSTRAINT pk_learning_standard_item_education_level PRIMARY KEY ( learning_standard_item_education_level_id ),
	CONSTRAINT ix_learning_standard_item_education_level UNIQUE ( learning_standards_item_id, ref_education_level_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.learning_standard_item_education_level IS 'The education level, grade level or primary instructional level at which a Learning Standard Item is intended.';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_education_level.learning_standard_item_education_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_education_level.learning_standards_item_id IS 'Foreign key - Learning_Standards_Item';

COMMENT ON COLUMN ceds6sc_rdx.learning_standard_item_education_level.ref_education_level_id IS 'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). [CEDS Elements: Highest Level of Education Completed (000141),  Learning Resource Education Level (001246)]';

CREATE TABLE ceds6sc_rdx.location_address ( 
	location_id        integer  NOT NULL,
	street_number_and_name varchar(40)  ,
	apartment_room_or_suite_number varchar(30)  ,
	building_site_number varchar(30)  ,
	city               varchar(30)  ,
	ref_state_id       integer  ,
	postal_code        varchar(17)  ,
	county_name        varchar(30)  ,
	ref_county_id      integer  ,
	ref_country_id     integer  ,
	latitude           varchar(20)  ,
	longitude          varchar(20)  ,
	ref_ers_rural_urban_continuum_code_id integer  ,
	CONSTRAINT pk_address PRIMARY KEY ( location_id )
 );

COMMENT ON TABLE ceds6sc_rdx.location_address IS 'Location that contains a address, city, state, zip.';

COMMENT ON COLUMN ceds6sc_rdx.location_address.location_id IS 'Inherited surrogate key from Location.';

COMMENT ON COLUMN ceds6sc_rdx.location_address.street_number_and_name IS 'The street number and street name or post office box number of an address. [CEDS Element: Address Street Number and Name, ID: 000269]';

COMMENT ON COLUMN ceds6sc_rdx.location_address.apartment_room_or_suite_number IS 'The apartment, room, or suite number of an address. [CEDS Element: Address Apartment Room or Suite Number, ID:000019]';

COMMENT ON COLUMN ceds6sc_rdx.location_address.building_site_number IS 'The number of the building on the site, if more than one building shares the same address. [CEDS Element: Building Site Number, ID:000602]';

COMMENT ON COLUMN ceds6sc_rdx.location_address.city IS 'The name of the city in which an address is located. [CEDS Element: Address City, ID:000040]';

COMMENT ON COLUMN ceds6sc_rdx.location_address.ref_state_id IS 'Surrogate key from Ref_State_Abbreviation identifying the state.';

COMMENT ON COLUMN ceds6sc_rdx.location_address.postal_code IS 'A number that identifies each postal delivery area in the United States used as a portion of an address. [CEDS Element: Address Postal Code, ID:000214]';

COMMENT ON COLUMN ceds6sc_rdx.location_address.county_name IS 'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located. [CEDS Element: Address County Name, ID:000190]';

COMMENT ON COLUMN ceds6sc_rdx.location_address.ref_county_id IS 'Surrogate key from Ref_County identifying the county code.';

COMMENT ON COLUMN ceds6sc_rdx.location_address.ref_country_id IS 'Surrogate key from Ref_Country identifying the country code.';

COMMENT ON COLUMN ceds6sc_rdx.location_address.latitude IS 'The north or south angular distance from the equator that, when combined with longitude, reflects an estimation of where the school is physically situated. [CEDS Element: Latitude, ID:000606]';

COMMENT ON COLUMN ceds6sc_rdx.location_address.longitude IS 'The east or west angular distance from the prime meridian that, when combined with latitude, reflects an estimation of where the school is physically situated. [CEDS Element: Longitude, ID:000607]';

COMMENT ON COLUMN ceds6sc_rdx.location_address.ref_ers_rural_urban_continuum_code_id IS 'Rural-Urban Continuum Codes form a classification scheme that distinguishes metropolitan (metro) counties by the population size of their metro area, and nonmetropolitan (nonmetro) counties by degree of urbanization and adjacency to a metro area or areas. The metro and nonmetro categories have been subdivided into three metro and six nonmetro groupings, resulting in a nine-part county codification. The codes allow researchers working with county data to break such data into finer residential groups beyond a simple metro-nonmetro dichotomy, particularly for the analysis of trends in nonmetro areas that may be related to degree of rurality and metro proximity. [CEDS Element: Economic Research Service Rural-Urban Continuum Code, ID:000862]';

CREATE TABLE ceds6sc_rdx.organization_accreditation ( 
	organization_accreditation_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	accreditation_status bool  ,
	ref_accreditation_agency_id integer  ,
	accreditation_award_date date  ,
	accreditation_expiration_date date  ,
	seeking_accreditation_date date  ,
	CONSTRAINT pk_organization_accreditation PRIMARY KEY ( organization_accreditation_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_accreditation IS 'The accreditation status of an organization and accreditation agency.';

COMMENT ON COLUMN ceds6sc_rdx.organization_accreditation.organization_accreditation_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_accreditation.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN ceds6sc_rdx.organization_accreditation.accreditation_status IS 'An indication of the accreditation status of a organization. [CEDS Element: Higher Education Institution Accreditation Status, ID:000818]';

COMMENT ON COLUMN ceds6sc_rdx.organization_accreditation.ref_accreditation_agency_id IS 'Surrogate key from Ref_Accreditation_Agency.  The agency that accredited a program. [CEDS Element: Accreditation Agency, ID:000982]  (Foreign key - Ref_Accreditation_Agency)';

COMMENT ON COLUMN ceds6sc_rdx.organization_accreditation.accreditation_award_date IS 'The date when an accreditation was awarded. [CEDS Element: Accreditation Award Date, ID:000840]';

COMMENT ON COLUMN ceds6sc_rdx.organization_accreditation.accreditation_expiration_date IS 'The date when an accreditation expires. [CEDS Element: Accreditation Expiration Date, ID:000841]';

COMMENT ON COLUMN ceds6sc_rdx.organization_accreditation.seeking_accreditation_date IS 'The date in which accreditation process was started (but not officially approved or denied) [CEDS Element: Organization Seeking Accreditation Date ID: 001419]';

CREATE TABLE ceds6sc_rdx.organization_calendar_crisis ( 
	organization_calendar_crisis_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	code               varchar(30)  ,
	name               varchar(50)  ,
	start_date         date  ,
	end_date           date  ,
	type               varchar(50)  ,
	crisis_description varchar(300)  ,
	crisis_end_date    date  ,
	CONSTRAINT pk_organization_calendar_crisis PRIMARY KEY ( organization_calendar_crisis_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_calendar_crisis IS 'Information about a crisis that caused the displacement of students';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_crisis.organization_calendar_crisis_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_crisis.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_crisis.code IS 'A unique number or alphanumeric code used to identify a crisis. This code should be able to accommodate numerous crises within a single school year. It is associated with the displaced student identifier in order to link a crisis to a student who was displaced or otherwise affected by the event. If the same code values are to be used over multiple years, it is important to have enough crisis-specific items (e.g., school year, date/time) to keep the events unique over time. [CEDS Element: Crisis Code, ID:000611]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_crisis.name IS 'The name of the crisis that caused the displacement of students. [CEDS Element: Crisis Name, ID:000612]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_crisis.start_date IS 'The date on which the crisis affected the agency. This date may not be the same as the date the crisis occurred if evacuation orders are implemented in anticipation of a crisis. [CEDS Element: Crisis Start Date, ID:000614]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_crisis.end_date IS 'The date on which the crisis ceased to affect the agency.';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_crisis.type IS 'The type or category of crisis (ex., chemical, earthquake, flood, wildfire, etc.). [CEDS Element: Crisis Type, ID:000613]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_crisis.crisis_description IS 'A description of the crisis that caused the displacement of students. [CEDS Element: Crisis Description, ID:001550]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_crisis.crisis_end_date IS 'The date on which the crisis ceased to affect the agency. [CEDS Element: Crisis End Date, ID:001552]';

CREATE TABLE ceds6sc_rdx.organization_calendar_event ( 
	organization_calendar_event_id integer  NOT NULL,
	organization_calendar_id integer  NOT NULL,
	name               varchar(30)  NOT NULL,
	event_date         date  NOT NULL,
	ref_calendar_event_type integer  ,
	CONSTRAINT pk_organization_calendar_event PRIMARY KEY ( organization_calendar_event_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_calendar_event IS 'The scheduled or unscheduled event.';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_event.organization_calendar_event_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_event.organization_calendar_id IS 'Foreign key - Organization_Calendar';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_event.name IS 'A name used for the day of the calendar event. [CEDS Element: Calendar Event Day Name, ID:001276]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_event.event_date IS 'The date of the scheduled or unscheduled event. [CEDS Element: Calendar Event Date, ID:001275]';

COMMENT ON COLUMN ceds6sc_rdx.organization_calendar_event.ref_calendar_event_type IS 'The type of scheduled or unscheduled event that causes interruption in direct instruction. [CEDS Element: Calendar Event Type, ID:000603]  (Foreign key - Ref_Calendar_Event_Type)';

CREATE TABLE ceds6sc_rdx.organization_email ( 
	organization_email_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	electronic_mail_address varchar(128)  ,
	ref_email_type_id  integer  ,
	CONSTRAINT pk_organization_email PRIMARY KEY ( organization_email_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_email IS 'An email address for an organization.';

COMMENT ON COLUMN ceds6sc_rdx.organization_email.organization_email_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_email.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.organization_email.electronic_mail_address IS 'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the person or organization belongs. [CEDS Element: Electronic Mail Address, ID:000088]';

COMMENT ON COLUMN ceds6sc_rdx.organization_email.ref_email_type_id IS 'The type of electronic mail (e-mail) address listed for a person or organization. [CEDS Element: Electronic Mail Address Type, ID:000089]';

CREATE TABLE ceds6sc_rdx.organization_financial ( 
	organization_financial_id integer  NOT NULL,
	financial_account_id integer  NOT NULL,
	organization_calendar_session_id integer  NOT NULL,
	actual_value       decimal(12,2)  ,
	budgeted_value     decimal(12,1)  ,
	date               date  ,
	encumbered_value   decimal(9,2)  ,
	value              decimal(9,2)  ,
	fiscal_period_begin_date date  ,
	fiscal_period_end_date date  ,
	fiscal_year        char(4)  ,
	financial_account_program_id integer  ,
	CONSTRAINT pk_organization_financial PRIMARY KEY ( organization_financial_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_financial IS 'The intersection of Financial_Account and Organization_Calendar_Session (representing an Accounting_Period) and containing the values for that accounting period.';

COMMENT ON COLUMN ceds6sc_rdx.organization_financial.organization_financial_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.organization_financial.financial_account_id IS 'Foreign key to Financial_Account';

COMMENT ON COLUMN ceds6sc_rdx.organization_financial.organization_calendar_session_id IS 'Foreign key to Organization_Calendar_Session';

COMMENT ON COLUMN ceds6sc_rdx.organization_financial.actual_value IS 'The actual value of a financial account for the specified accounting period or academic session. [CEDS Element: Financial Accounting Period Actual Value, ID: 001350]';

COMMENT ON COLUMN ceds6sc_rdx.organization_financial.budgeted_value IS 'The budgeted value of a financial account for the specified accounting period or academic session. [CEDS Element: Financial Accounting Period Budgeted Value, ID: 001351]';

COMMENT ON COLUMN ceds6sc_rdx.organization_financial.date IS 'The date of a financial transaction or when an account balance is reported. [CEDS Element: Financial Accounting Date, ID:001648]';

COMMENT ON COLUMN ceds6sc_rdx.organization_financial.encumbered_value IS 'The planned or obligated expense value of a financial account for the specified accounting period or fiscal year. [CEDS Element: Financial Accounting Period Encumbered Value, ID:001644]';

COMMENT ON COLUMN ceds6sc_rdx.organization_financial.value IS 'The value of a financial account balance or transaction. [CEDS Element: Financial Accounting Value, ID:001647]';

COMMENT ON COLUMN ceds6sc_rdx.organization_financial.fiscal_period_begin_date IS 'The year, month and day on which an accounting period begins. [CEDS Element: Fiscal Period Begin Date, ID:001642]';

COMMENT ON COLUMN ceds6sc_rdx.organization_financial.fiscal_period_end_date IS 'The year, month and day on which an accounting period ends. [CEDS Element: Fiscal Period End Date, ID:001643]';

COMMENT ON COLUMN ceds6sc_rdx.organization_financial.fiscal_year IS 'The year a school uses for budgeting, accounting, and reporting financials. [CEDS Element: Fiscal Year, ID:001639]';

COMMENT ON COLUMN ceds6sc_rdx.organization_financial.financial_account_program_id IS 'A name and number given to a program area within an educational institution''s accounting system. [CEDS Elements: Financial Account Program Name (001645), Financial Account Program Number (001646)]';

CREATE TABLE ceds6sc_rdx.organization_indicator ( 
	organization_indicator_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	indicator_value    varchar(50)  NOT NULL,
	ref_organization_indicator_id integer  NOT NULL,
	CONSTRAINT pk_organization_indicator PRIMARY KEY ( organization_indicator_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_indicator IS 'Describes any sort of indicator/metric/measure that is tracked at the organization level';

COMMENT ON COLUMN ceds6sc_rdx.organization_indicator.organization_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_indicator.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.organization_indicator.ref_organization_indicator_id IS 'A indicator/metric/measure that is tracked at the organization level.  (Foreign key - Ref_Organization_Indicator)';

CREATE TABLE ceds6sc_rdx.organization_operational_status ( 
	organization_operational_status_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	ref_operational_status_id integer  NOT NULL,
	operational_status_effective_date date  ,
	CONSTRAINT pk_organization_operational_status PRIMARY KEY ( organization_operational_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_operational_status IS 'The classification of the operational condition of an organization.';

COMMENT ON COLUMN ceds6sc_rdx.organization_operational_status.organization_operational_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_operational_status.organization_id IS 'Surrogate key from Organization.';

COMMENT ON COLUMN ceds6sc_rdx.organization_operational_status.ref_operational_status_id IS 'Organization operating status values.  [CEDS Elements: School Operational Status (000533), Local Education Agency Operational Status (000174), Organization Operational Status (001418)]';

COMMENT ON COLUMN ceds6sc_rdx.organization_operational_status.operational_status_effective_date IS 'The effective date for a change in operational status. [CEDS Element: Operational Status Effective Date, ID:000534]';

CREATE TABLE ceds6sc_rdx.organization_policy ( 
	organization_policy_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	policy_type        varchar(100)  NOT NULL,
	value              varchar(100)  NOT NULL,
	CONSTRAINT pk_organization_policy PRIMARY KEY ( organization_policy_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_policy IS 'Organizational policies. Examples would include Immunization Policy, Referral Policy, Language Translation Policy, Employee Policy.';

COMMENT ON COLUMN ceds6sc_rdx.organization_policy.organization_policy_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_policy.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN ceds6sc_rdx.organization_policy.policy_type IS 'The type of organizational policy.  Examples would include Immunization Policy, Referral Policy, Language Translation Policy, Employee Policy, etc. [CEDS Elements: Administrative Policy Type (000983), Personnel Policy Type (000842)';

COMMENT ON COLUMN ceds6sc_rdx.organization_policy.value IS 'The value representing the existance, use, or type of implemnetation of the policy.';

CREATE TABLE ceds6sc_rdx.organization_relationship ( 
	organization_relationship_id integer  NOT NULL,
	parent_organization_id integer  NOT NULL,
	organization_id    integer  ,
	ref_organization_relationship_id integer  NOT NULL,
	CONSTRAINT pk_organization_relationship PRIMARY KEY ( organization_relationship_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_relationship IS 'The relationship of one organization to another.';

COMMENT ON COLUMN ceds6sc_rdx.organization_relationship.organization_relationship_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_relationship.parent_organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.organization_relationship.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.organization_relationship.ref_organization_relationship_id IS 'The type of relationship of one organization to another.';

CREATE TABLE ceds6sc_rdx.organization_telephone ( 
	organization_telephone_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	telephone_number   varchar(24)  NOT NULL,
	primary_telephone_number_indicator bool  NOT NULL,
	ref_institution_telephone_type_id integer  ,
	CONSTRAINT pk_organization_phone_phone PRIMARY KEY ( organization_telephone_id )
 );

COMMENT ON TABLE ceds6sc_rdx.organization_telephone IS 'A telephone number for an organization.';

COMMENT ON COLUMN ceds6sc_rdx.organization_telephone.organization_telephone_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.organization_telephone.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.organization_telephone.telephone_number IS 'The telephone number including the area code, and extension, if applicable. [CEDS Element: Telephone Number, ID:000279]';

COMMENT ON COLUMN ceds6sc_rdx.organization_telephone.primary_telephone_number_indicator IS 'An indication that the telephone number should be used as the principal number for a person or organization. [CEDS Element: Primary Telephone Number Indicator, ID:000219]';

COMMENT ON COLUMN ceds6sc_rdx.organization_telephone.ref_institution_telephone_type_id IS 'The type of communication number listed for an organization. [CEDS Element: Institution Telephone Number Type, ID:000167]  (Foreign key - Ref_Institution_Telephone_Type)';

CREATE TABLE ceds6sc_rdx.pd_activity_education_level ( 
	pd_activity_education_level_id integer  NOT NULL,
	professional_development_activity_id integer  NOT NULL,
	ref_pd_activity_education_levels_addressed_id integer  NOT NULL,
	CONSTRAINT pk_pd_activity_education_level PRIMARY KEY ( pd_activity_education_level_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.pd_activity_education_level.pd_activity_education_level_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.pd_activity_education_level.professional_development_activity_id IS 'Foreign key to Professional_Development_Activity';

COMMENT ON COLUMN ceds6sc_rdx.pd_activity_education_level.ref_pd_activity_education_levels_addressed_id IS 'An age group or education level to which the professional development Activity''s content pertains. [CEDS Element: Professional Development Activity Education Levels Addressed, ID:001279]';

CREATE TABLE ceds6sc_rdx.person_address ( 
	person_address_id  integer  NOT NULL,
	person_id          integer  NOT NULL,
	ref_person_location_type_id integer  NOT NULL,
	street_number_and_name varchar(40)  ,
	apartment_room_or_suite_number varchar(30)  ,
	city               varchar(30)  ,
	ref_state_id       integer  ,
	postal_code        varchar(17)  ,
	address_county_name varchar(30)  ,
	ref_county_id      integer  ,
	ref_country_id     integer  ,
	latitude           varchar(20)  ,
	longitude          varchar(20)  ,
	ref_personal_information_verification_id integer  ,
	CONSTRAINT pk_person_address PRIMARY KEY ( person_address_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_address IS 'An address (e.g. physical or mailing) for a person.';

COMMENT ON COLUMN ceds6sc_rdx.person_address.person_address_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.person_address.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN ceds6sc_rdx.person_address.ref_person_location_type_id IS 'The type of address for a person. [CEDS Elements: Address Type for Learner or Family (000010), Address Type for  (000722)]';

COMMENT ON COLUMN ceds6sc_rdx.person_address.street_number_and_name IS 'The street number and street name or post office box number of an address. [CEDS Element: Address Street Number and Name, ID: 000269]';

COMMENT ON COLUMN ceds6sc_rdx.person_address.apartment_room_or_suite_number IS 'The apartment, room, or suite number of an address. [ CEDS Element: Address Apartment Room or Suite Number, ID:000019]';

COMMENT ON COLUMN ceds6sc_rdx.person_address.city IS 'The name of the city in which an address is located. [CEDS Element: Address City, ID:000040]';

COMMENT ON COLUMN ceds6sc_rdx.person_address.ref_state_id IS 'The abbreviation for the state (within the United States) or outlying area in which an address is located. [CEDS Element: State Abbreviation, ID:000267]';

COMMENT ON COLUMN ceds6sc_rdx.person_address.postal_code IS 'A number that identifies each postal delivery area in the United States used as a portion of an address. [CEDS Element: Address Postal Code, ID:000214]';

COMMENT ON COLUMN ceds6sc_rdx.person_address.address_county_name IS 'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located. [CEDS Element: Address County Name, ID:000190]';

COMMENT ON COLUMN ceds6sc_rdx.person_address.ref_county_id IS 'The county where the address is located.  (Foreign key - Ref_County)';

COMMENT ON COLUMN ceds6sc_rdx.person_address.ref_country_id IS 'The unique two character International Organization for Standardization (ISO) code for the country in which an address is located. [CEDS Element: Country Code, ID:000050]';

COMMENT ON COLUMN ceds6sc_rdx.person_address.latitude IS 'The north or south angular distance from the equator that, when combined with longitude, reflects an estimation of where the school is physically situated. [CEDS Element: Latitude, ID:000606]';

COMMENT ON COLUMN ceds6sc_rdx.person_address.longitude IS 'The east or west angular distance from the prime meridian that, when combined with latitude, reflects an estimation of where the school is physically situated. [CEDS Element: Longitude, ID:000607]';

COMMENT ON COLUMN ceds6sc_rdx.person_address.ref_personal_information_verification_id IS 'The evidence by which a persons name, address, date of birth, etc. is confirmed. [CEDS Element: Personal Information Verification, ID:000618]  (Foreign key - Ref_Personal_Information_Verification)';

CREATE TABLE ceds6sc_rdx.person_assessment_personal_needs_profile ( 
	person_assessment_personal_needs_profile_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	assessment_personal_needs_profile_id integer  NOT NULL,
	CONSTRAINT pk_person_assessment_personal_needs_profile PRIMARY KEY ( person_assessment_personal_needs_profile_id ),
	CONSTRAINT ix_person_assessment_personal_needs_profile UNIQUE ( person_id, assessment_personal_needs_profile_id ) 
 );

CREATE TABLE ceds6sc_rdx.person_career_education_plan ( 
	person_career_education_plan_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	last_updated       date  ,
	ref_career_education_plan_type_id integer  ,
	professional_development_plan_approved_by_supervisor bool  ,
	professional_development_plan_completion date  ,
	tuition_funded     bool  ,
	CONSTRAINT pk_person_career_education_plan PRIMARY KEY ( person_career_education_plan_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.person_career_education_plan.person_career_education_plan_id IS 'Surrogate key.';

COMMENT ON COLUMN ceds6sc_rdx.person_career_education_plan.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_career_education_plan.last_updated IS 'The date on which a student''s career plan was last updated.  [CEDS Element: Career Education Plan Date, ID:001289';

COMMENT ON COLUMN ceds6sc_rdx.person_career_education_plan.ref_career_education_plan_type_id IS 'An indicator of whether a student completed an individualized guidance and counseling plan. [CEDS Element: Career Education Plan Type, ID:001290]';

COMMENT ON COLUMN ceds6sc_rdx.person_career_education_plan.professional_development_plan_approved_by_supervisor IS 'Professional development plan is approved by the employee''s supervisor. [CEDS Element: Professional Development Plan Approved By Supervisor, ID:001620]';

COMMENT ON COLUMN ceds6sc_rdx.person_career_education_plan.professional_development_plan_completion IS 'The date the professional development plan is completed. [CEDS Element: Professional Development Plan Completion, ID:001621]';

COMMENT ON COLUMN ceds6sc_rdx.person_career_education_plan.tuition_funded IS 'Indicates that tuition for person''s participation in a program, service, or course is funded or partially funded by an external grant program. [CEDS Element: Tuition Funded, ID:001575]';

CREATE TABLE ceds6sc_rdx.person_degree_or_certificate ( 
	person_degree_or_certificate_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	degree_or_certificate_title_or_subject varchar(45)  ,
	ref_degree_or_certificate_type_id integer  ,
	award_date         date  ,
	name_of_institution varchar(60)  ,
	ref_higher_education_institution_accreditation_status_id integer  ,
	ref_education_verification_method_id integer  ,
	CONSTRAINT xpk_person_degree_or_certificate PRIMARY KEY ( person_degree_or_certificate_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_degree_or_certificate IS 'The name of the degree or certificate earned by an individual. This includes honorary degrees conferred upon an individual.';

COMMENT ON COLUMN ceds6sc_rdx.person_degree_or_certificate.person_degree_or_certificate_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.person_degree_or_certificate.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN ceds6sc_rdx.person_degree_or_certificate.degree_or_certificate_title_or_subject IS 'The name of the degree or certificate earned by a person. This includes honorary degrees conferred upon an individual. [CEDS Element: Degree or Certificate Title or Subject, ID:000342]';

COMMENT ON COLUMN ceds6sc_rdx.person_degree_or_certificate.ref_degree_or_certificate_type_id IS 'The type of degree or certificate earned by a person. [CEDS Element: Degree or Certificate Type, ID:000343]  (Foreign key - Ref_Degree_Or_Certificate_Type)';

COMMENT ON COLUMN ceds6sc_rdx.person_degree_or_certificate.award_date IS 'The date on which a person received a degree or certificate. [CEDS Elements: Degree or Certificate Conferring Date (000344), Diploma or Credential Award Date (000081)]';

COMMENT ON COLUMN ceds6sc_rdx.person_degree_or_certificate.name_of_institution IS 'The full legally accepted name of the institution. [CEDS Element: Name of Institution, ID:000191]';

COMMENT ON COLUMN ceds6sc_rdx.person_degree_or_certificate.ref_higher_education_institution_accreditation_status_id IS 'An indication of the accreditation status of a higher education institution. [CEDS Element: Higher Education Institution Accreditation Status, ID:000818]';

COMMENT ON COLUMN ceds6sc_rdx.person_degree_or_certificate.ref_education_verification_method_id IS 'The method by which the formal education is verified. [CEDS Element: Education Verification Method, ID:001607]';

CREATE TABLE ceds6sc_rdx.person_disability ( 
	person_id          integer  NOT NULL,
	primary_disability_type_id integer  ,
	disability_status  bool  ,
	ref_accommodations_needed_type_id integer  ,
	ref_disability_condition_type_id integer  ,
	ref_disability_determination_source_type_id integer  ,
	ref_disability_condition_status_code_id integer  ,
	CONSTRAINT pk_person_disability PRIMARY KEY ( person_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_disability IS 'The disability status for an individual and their primary disability.';

COMMENT ON COLUMN ceds6sc_rdx.person_disability.person_id IS 'Inherited surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_disability.primary_disability_type_id IS 'The disability condition that best describes a person''s impairment. [CEDS Element: Primary Disability Type, ID:000218]';

COMMENT ON COLUMN ceds6sc_rdx.person_disability.disability_status IS 'An indication of whether a person is classified as disabled under the American''s with Disability Act (ADA). [CEDS Element: Disability Status, ID:000577]';

COMMENT ON COLUMN ceds6sc_rdx.person_disability.ref_accommodations_needed_type_id IS 'Codes identifying the set of health accommodations. [CEDS Element: Accommodations Needed Type, ID:001277]';

COMMENT ON COLUMN ceds6sc_rdx.person_disability.ref_disability_condition_type_id IS 'Codes identifying the set of disability conditions. [CEDS Element: Disability Condition Type, ID:001320]';

COMMENT ON COLUMN ceds6sc_rdx.person_disability.ref_disability_determination_source_type_id IS 'Codes identifying the set of disability determination sources. [CEDS Element: Disability Determination Source Type, ID:001321]';

COMMENT ON COLUMN ceds6sc_rdx.person_disability.ref_disability_condition_status_code_id IS 'A code indicating the disability condition status. [CEDS Element: Disability Condition Status Type, ID:001319]';

CREATE TABLE ceds6sc_rdx.person_family ( 
	person_family_id   integer  NOT NULL,
	person_id          integer  NOT NULL,
	family_identifier  varchar(40)  ,
	number_of_people_in_family integer  ,
	number_of_people_in_household integer  ,
	family_income      decimal(10,2)  ,
	ref_family_income_source_id integer  ,
	ref_income_calculation_method_id integer  ,
	ref_proof_of_residency_type_id integer  ,
	ref_el_program_eligibility_id integer  ,
	ref_highest_education_level_completed_id integer  ,
	ref_communication_method_id integer  ,
	included_in_counted_family_size bool  ,
	CONSTRAINT xpk_person_family PRIMARY KEY ( person_family_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_family IS 'The attributes of a person''s family.';

COMMENT ON COLUMN ceds6sc_rdx.person_family.person_family_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.person_family.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN ceds6sc_rdx.person_family.family_identifier IS 'A unique number or alphanumeric code assigned to a family by a school, school system, a state, or other agency or entity. [CEDS Element: Family Identifier, ID:000787]';

COMMENT ON COLUMN ceds6sc_rdx.person_family.number_of_people_in_family IS 'Total number of persons in immediate family. Family means for the purposes of the regulations in this part all persons: (i) Living in the same household who are: (A) Supported by the income of the parent(s) or guardian(s) of the child enrolling or participating in the program; or (B) Related to the child by blood, marriage, or adoption; or   (ii) Related to the child enrolling or participating in the program as parents or siblings, by blood, marriage, or adoption. [CEDS Element: Number of People in Family, ID:000330]';

COMMENT ON COLUMN ceds6sc_rdx.person_family.number_of_people_in_household IS 'Total number of persons residing in the same household. [CEDS Element: Number of People in Household, ID:000331]';

COMMENT ON COLUMN ceds6sc_rdx.person_family.family_income IS 'Total income of family from all sources. Income includes money, wages or salary before deductions; net income from non-farm self-employment; net income from farm self-employment; regular payments from Social Security or railroad retirement; payments from unemployment compensation, strike benefits from union funds, workers’ compensation, veterans benefits (with the exception noted below), public assistance (including Temporary Assistance for Needy Families, Supplemental Security Income, Emergency Assistance money payments, and non-Federally funded General Assistance or General Relief money payments); training stipends; alimony, child support, and military family allotments or other regular support from an absent family member or someone not living in the household; private pensions, government employee pensions (including military retirement pay), and regular insurance or annuity payments; college or university scholarships, grants, fellowships, and assistantships; and dividends, interest, net rental income, net royalties, and periodic receipts from estates or trusts; and net gambling or lottery winnings. [CEDS Element: Family Income, ID:000332]';

COMMENT ON COLUMN ceds6sc_rdx.person_family.ref_family_income_source_id IS 'Sources of total family income. [CEDS Element: Source of Family Income, ID:000333]  (Foreign key - Ref_Family_Income_Source)';

COMMENT ON COLUMN ceds6sc_rdx.person_family.ref_income_calculation_method_id IS 'The calculation method used by a program to determine total family income. [CEDS Element: Income Calculation Method, ID:000334]  (Foreign key - Ref_Income_Calculation_Method)';

COMMENT ON COLUMN ceds6sc_rdx.person_family.ref_proof_of_residency_type_id IS 'An accepted form of proof of residency in the district/county/other locality. [CEDS Element: Proof of Residency Type, ID:000305]';

COMMENT ON COLUMN ceds6sc_rdx.person_family.ref_el_program_eligibility_id IS 'Category under which the person is eligible for an early childhood program or service. [CEDS Element: Early Learning Program Eligibility Category, ID:000304]  (Foreign key - Ref_EL_Program_Eligibility)';

COMMENT ON COLUMN ceds6sc_rdx.person_family.ref_highest_education_level_completed_id IS 'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). [CEDS Element: Highest Level of Education Completed, ID:000141]  (Foreign key - Ref_Education_Level)';

COMMENT ON COLUMN ceds6sc_rdx.person_family.ref_communication_method_id IS 'The types of communication methods with family members. [CEDS Element: Parent Communication Method, ID:000857]';

COMMENT ON COLUMN ceds6sc_rdx.person_family.included_in_counted_family_size IS 'Denotes whether this family member is counted in the family size as it pertains to the federal poverty level [CEDS Element: Included in Counted Family Size, ID:001612]';

CREATE TABLE ceds6sc_rdx.person_health_birth ( 
	person_id          integer  NOT NULL,
	weeks_of_gestation integer  ,
	multiple_birth_indicator bool  ,
	weight_at_birth    varchar(20)  ,
	ref_trimester_when_prenatal_care_began_id integer  ,
	CONSTRAINT pk_person_health_birth PRIMARY KEY ( person_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_health_birth IS 'Data points of a person''s health and status at time of birth.';

COMMENT ON COLUMN ceds6sc_rdx.person_health_birth.person_id IS 'Inherited surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_health_birth.weeks_of_gestation IS 'The number of weeks during gestational period. [CEDS Element: Weeks of Gestation, ID:000313]';

COMMENT ON COLUMN ceds6sc_rdx.person_health_birth.multiple_birth_indicator IS 'An indication that the person is a twin, triplet, etc. [CEDS Element: Multiple Birth Indicator, ID:000431]';

COMMENT ON COLUMN ceds6sc_rdx.person_health_birth.weight_at_birth IS 'The weight of a child at birth in pounds and ounces. [CEDS Element: Weight at Birth, ID:000312]';

COMMENT ON COLUMN ceds6sc_rdx.person_health_birth.ref_trimester_when_prenatal_care_began_id IS 'The trimester of pregnancy in which a child''s mother began receiving prenatal health care. [CEDS Element: Trimester When Prenatal Care Began, ID:001630]';

CREATE TABLE ceds6sc_rdx.person_identifier ( 
	person_identifier_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	identifier         varchar(40)  ,
	ref_person_identification_system_id integer  NOT NULL,
	ref_personal_information_verification_id integer  ,
	CONSTRAINT xpk_person_identifier PRIMARY KEY ( person_identifier_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_identifier IS 'Identifiers assigned to an individual.';

COMMENT ON COLUMN ceds6sc_rdx.person_identifier.person_identifier_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.person_identifier.person_id IS 'Inherited surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_identifier.identifier IS 'A unique number or alphanumeric code assigned to a person by an organization, a state, or other agency or entity.  [Related CEDS Elements: Child Identifier (001080), Staff Member Identifier (001070), Student Identifier (001071), Professional Development Instructor Identifier (001444)]';

COMMENT ON COLUMN ceds6sc_rdx.person_identifier.ref_person_identification_system_id IS 'The types of person identifiers. [CEDS Elements: Child Identification System (ID:000785), Social Security Number (ID:000259),  Staff Member Identification System (ID:001074), Student Identification System (ID:001075)]';

COMMENT ON COLUMN ceds6sc_rdx.person_identifier.ref_personal_information_verification_id IS 'The evidence by which a persons name, address, date of birth, etc. is confirmed. [CEDS Element: Personal Information Verification, ID:000618]  (Foreign key - Ref_Personal_Identification_System)';

CREATE TABLE ceds6sc_rdx.person_language ( 
	person_language_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	ref_language_id    integer  NOT NULL,
	ref_language_use_type_id integer  NOT NULL,
	CONSTRAINT pk_person_language PRIMARY KEY ( person_language_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_language IS 'Languages that a person uses to communicate.';

COMMENT ON COLUMN ceds6sc_rdx.person_language.person_language_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.person_language.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN ceds6sc_rdx.person_language.ref_language_id IS 'The code for the specific language or dialect that a person uses to communicate. [CEDS Element: ISO 639-2 Language Code, ID:000317]';

COMMENT ON COLUMN ceds6sc_rdx.person_language.ref_language_use_type_id IS 'An indication of the function and context in which a person uses a language to communicate. [CEDS Element: Language Type, ID:000316]  (Foreign key - Ref_Language_Use_Type)';

CREATE TABLE ceds6sc_rdx.person_other_name ( 
	person_other_name_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	ref_other_name_type_id integer  ,
	other_name         varchar(40)  ,
	first_name         varchar(35)  ,
	middle_name        varchar(35)  ,
	last_name          varchar(35)  ,
	CONSTRAINT pk_person_other_name PRIMARY KEY ( person_other_name_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_other_name IS 'Other names or aliases for a person.';

COMMENT ON COLUMN ceds6sc_rdx.person_other_name.person_other_name_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.person_other_name.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_other_name.ref_other_name_type_id IS 'The types of previous, alternate or other names for a person. [CEDS Element: Other Name Type, ID:000634]';

COMMENT ON COLUMN ceds6sc_rdx.person_other_name.other_name IS 'Previous, alternate or other names or aliases associated with the person..  [CEDS Element: Other Name, ID:000206]';

COMMENT ON COLUMN ceds6sc_rdx.person_other_name.first_name IS 'A first name given to a person. [CEDS Element: Other First Name, ID:001514]';

COMMENT ON COLUMN ceds6sc_rdx.person_other_name.middle_name IS 'A middle name given to a person. [CEDS Element: Other First Name, ID:001515]';

COMMENT ON COLUMN ceds6sc_rdx.person_other_name.last_name IS 'A last name given to a person. [CEDS Element: Other First Name, ID:001513]';

CREATE TABLE ceds6sc_rdx.person_referral ( 
	person_referral_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	referral_date      date  ,
	reason             text  ,
	source             varchar(60)  ,
	referral_type_received varchar(60)  ,
	referred_to        varchar(60)  ,
	ref_referral_outcome_id integer  ,
	CONSTRAINT pk_person_referral PRIMARY KEY ( person_referral_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.person_referral.person_referral_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.person_referral.person_id IS 'Surrogate key from Person';

COMMENT ON COLUMN ceds6sc_rdx.person_referral.referral_date IS 'The date of referral. [CEDS Element: Referral Date, ID: 001481]';

COMMENT ON COLUMN ceds6sc_rdx.person_referral.reason IS 'The reason for the referral. [CEDS Element: Referral Reason, ID: 001483]';

COMMENT ON COLUMN ceds6sc_rdx.person_referral.source IS 'The program or organization making the initial referral. [CEDS Element: Referral Source, ID: 001484]';

COMMENT ON COLUMN ceds6sc_rdx.person_referral.referral_type_received IS 'A type of service that a child or family has received a referral for. [CEDS Element: Referral Type Received, ID:001485]';

COMMENT ON COLUMN ceds6sc_rdx.person_referral.referred_to IS 'The program or organization to which the child/family was referred. [CEDS Element: Referred To, ID: 001486]';

COMMENT ON COLUMN ceds6sc_rdx.person_referral.ref_referral_outcome_id IS 'The outcome of the referral. [CEDS Element: Referral Outcome, ID: 001482]';

CREATE TABLE ceds6sc_rdx.person_status ( 
	person_status_id   integer  NOT NULL,
	person_id          integer  NOT NULL,
	ref_person_status_type_id integer  NOT NULL,
	status_value       bool  NOT NULL,
	status_start_date  date  ,
	status_end_date    date  ,
	CONSTRAINT pk_person_status PRIMARY KEY ( person_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.person_status IS 'Identifies a status (yes/no) for a person for a status type.';

COMMENT ON COLUMN ceds6sc_rdx.person_status.person_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.person_status.person_id IS 'Foreign key - Person.';

COMMENT ON COLUMN ceds6sc_rdx.person_status.ref_person_status_type_id IS 'Status types for a person where the possible condition is either Yes (True) or No (False). [CEDS Elements: Economic Disadvantage Status (000086), Homeless Unaccompanied Youth Status (000148), IDEA Indicator (000151), Limited English Proficiency Status (000180), Migrant Status (000189), School Choice Applied for Transfer Status (000235), School Choice Eligible for Transfer Status (000236), School Choice Transfer Status (000237), Title I School Supplemental Services Applied Status (000286), Title I School Supplemental Services Eligible Status (000287), Title I School Supplemental Services Received Status (000288), Title III Immigrant Status (000291), Truant Status (000569), Single Parent Or Single Pregnant Woman Status (000580), Perkins Limited English Proficiency Status (000581), Low-income Status (000775), Dislocated Worker Status (000776), Public Assistance Status (000777), Rural Residency Status (000778), Professional Association Membership Status (000807), State Approved Trainer Status (000814), State Approved Technical Assistance Provider Status (000815), Program Heath Safety Checklist Use Status (000851)]';

COMMENT ON COLUMN ceds6sc_rdx.person_status.status_value IS '1 = Yes/True, 0 = No/False';

COMMENT ON COLUMN ceds6sc_rdx.person_status.status_start_date IS 'The date that a status became applicable to an individual. [CEDS Element: Status Start Date, ID:001227]';

COMMENT ON COLUMN ceds6sc_rdx.person_status.status_end_date IS 'The last date when a status applied to an individual. [CEDS Element: Status End Date, ID:001228]';

CREATE TABLE ceds6sc_rdx.professional_development_activity ( 
	professional_development_activity_id integer  NOT NULL,
	course_id          integer  ,
	professional_development_requirement_id integer  NOT NULL,
	title              varchar(50)  ,
	activity_identifier varchar(40)  ,
	description        varchar(2000)  ,
	objective          varchar(2000)  ,
	activity_code      varchar(30)  ,
	approval_code      varchar(30)  ,
	cost               decimal(6,2)  ,
	credits            decimal(6,2)  ,
	ref_course_credit_unit_id integer  ,
	scholarship_status bool  ,
	ref_professional_development_financial_support_id integer  ,
	publish_indicator  bool  ,
	ref_pd_audience_type_id integer  ,
	ref_pd_activity_approved_purpose_id integer  ,
	ref_pd_activity_credit_type_id integer  ,
	ref_pd_activity_level_id integer  ,
	ref_pd_activity_type_id integer  ,
	professional_development_activity_state_approved_status bool  ,
	CONSTRAINT pk_professional_development_activity PRIMARY KEY ( professional_development_activity_id )
 );

COMMENT ON TABLE ceds6sc_rdx.professional_development_activity IS 'An activity designed for the purpose of developing somebody professionally.';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.professional_development_activity_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.course_id IS 'Foreign key - Course.';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.professional_development_requirement_id IS 'Foreign key - Professiona_Development_Requirement.';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.title IS 'The title of an activity designed for the purpose of developing someone professionally. [CEDS Element: Professional Development Activity Title, ID:000810]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.activity_identifier IS 'A unique number or alphanumeric code assigned to the Professional Development Activity as assigned by the organization offering the activity. [CEDS Element: Professional Development Activity Identifier, ID: 000809]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.description IS 'A description of the content covered in the professional development activity. [CEDS Element: Professional Development Activity Description, ID: 001438]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.objective IS 'The expected outcomes of a participant in an activity. [CEDS Element: Professional Development Activity Objective, ID: 001440]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.activity_code IS 'A code assigned to an professional development activity by the organization offering the activity that is unique to the non-variable activity details. [CEDS Element: Professional Development Activity Code, ID: 001434]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.approval_code IS 'A code given to an event by approval organization. [CEDS Element: Professional Development Approval Code, ID: 001432]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.cost IS 'The cost for an attendee to participate in a professional development activity. [CEDS Element: Professional Development Activity Cost, ID: 001435]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.credits IS 'The number of credits a professional development activity provides. [CEDS Element: Professional Development Activity Credits, ID: 001437]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.ref_course_credit_unit_id IS 'The type of credit (unit, semester, or quarter) associated with the credit hours earned for the course.  [CEDS Element: Course Credit Units, ID:000057]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.scholarship_status IS 'An indication of whether a scholarship was received for the person to participate in the professional development. [CEDS Element: Professional Development Scholarship Status, ID:000811]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.ref_professional_development_financial_support_id IS 'The type of financial assistance received in support of non-credit professional development activities. [CEDS Element: Professional Development Financial Support Type, ID:000812]  (Foreign key - Ref_Professional_Development_Financial_Support)';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.publish_indicator IS 'An indicator of whether the professional development activity should be published. [CEDS Element: Professional Development Publish Activity Indicator, ID: 001445]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.ref_pd_audience_type_id IS 'The type of audience for the professional development activity. [CEDS Element: Professional Development Audience Type, ID:001430]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.ref_pd_activity_approved_purpose_id IS 'The purposes for which an activity is approved. [CEDS Element: Professional Development Activity Approved Purpose, ID:001433]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.ref_pd_activity_credit_type_id IS 'The type of credit awarded. [CEDS Element: Professional Development Activity Credit Type, ID:001436]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.ref_pd_activity_level_id IS 'An indicator of the level of a professional development activity on the beginner to advanced continuum. [CEDS Element: Professional Development Activity Level, ID:001439]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.ref_pd_activity_type_id IS 'The indication of the type of profesional development activity. [CEDS Element: Professional Development Activity Type, ID:001442]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_activity.professional_development_activity_state_approved_status IS 'An indication of whether a training activity has been approved through a state process. [CEDS Element: Professional Development Activity State Approved Status, ID:001619]';

CREATE TABLE ceds6sc_rdx.professional_development_session ( 
	professional_development_session_id integer  NOT NULL,
	professional_development_activity_id integer  NOT NULL,
	session_identifier varchar(40)  ,
	ref_pd_delivery_method_id integer  ,
	capacity           integer  ,
	start_date         date  ,
	start_time         varchar(15)  ,
	end_date           date  ,
	end_time           varchar(15)  ,
	location_name      varchar(60)  ,
	evaluation_method  varchar(30)  ,
	evaluation_score   varchar(30)  ,
	expiration_date    date  ,
	ref_pd_session_status_id integer  ,
	ref_pd_instructional_delivery_mode_id integer  ,
	sponsoring_agency_name varchar(60)  ,
	ref_language_id    integer  ,
	funding_source     varchar(30)  ,
	training_and_technical_assistance_level varchar(100)  ,
	ref_el_trainer_core_knowledge_area_id integer  ,
	CONSTRAINT pk_professional_development_session PRIMARY KEY ( professional_development_session_id )
 );

COMMENT ON TABLE ceds6sc_rdx.professional_development_session IS 'An Session designed for the purpose of developing somebody professionally.';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.professional_development_session_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.professional_development_activity_id IS 'Foreign key - Professional Development Activity';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.session_identifier IS 'The unique, non-duplicated, identification number assigned by the registry data system for a session of a particular professional development session. [CEDS Element: Professional Development Session Identifier, ID: 001452]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.ref_pd_delivery_method_id IS 'The method by which a session is delivered [CEDS Element: Professional Development Delivery Method, ID:001431]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.capacity IS 'The total number of participants that can be accommodated by a professional development session. [CEDS Element: Professional Development Session Capacity, ID: 001446]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.start_date IS 'The date a professional development session begins. [CEDS Element: Professional Development Session Start Date, ID: 001455]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.start_time IS 'The time at which a professional development session begins. [CEDS Element: Professional Development Session Start Time, ID: 001456]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.end_date IS 'The date a professional development session ends. [CEDS Element: Professional Development Session End Date, ID: 001447]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.end_time IS 'The time at which a professional development session ends. [CEDS Element: Professional Development Session End Time, ID: 001448]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.location_name IS 'The name of a location where a professional development session will be held. [CEDS Element: Professional Development Session Location Name, ID:001454]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.evaluation_method IS 'The method used to evaluate a professional development session. [CEDS Element: Professional Development Session Evaluation Method, ID:001449]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.evaluation_score IS 'The score or rating used to determine if a professional development session was successful. [CEDS Element: Professional Developmnet Session Evaluation Score, ID:001450]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.expiration_date IS 'The date on which any certificate awarded as part of a professional development activity expires.  [CEDS Element: Professional Development Session Expiration Date, ID:001451]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.ref_pd_session_status_id IS 'The current status of a professional development session [CEDS Element: Professional Development Session Status, ID:001457]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.ref_pd_instructional_delivery_mode_id IS 'The primary setting or medium of professional development delivery. [CEDS Element: Professional Development Instructional Delivery Mode, ID:001458]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.sponsoring_agency_name IS 'The name of the sponsoring agency. [CEDS Element: Sponsoring Agency Name, ID: 001489]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.ref_language_id IS 'The language in which the professional development session is delivered. [CEDS Element: Professional Development Session Language, ID:001388]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.funding_source IS 'The primary source of funding for a professional development session. [CEDS Element: Professional Development Funding Source, ID: 001443]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.training_and_technical_assistance_level IS 'The level of expertise an individual training and technical assistance specialist has based on a set of established criteria. [CEDS Element: Training and Technical Assistance Level, ID:001628]';

COMMENT ON COLUMN ceds6sc_rdx.professional_development_session.ref_el_trainer_core_knowledge_area_id IS 'A description of the core knowledge expertise of a trainer of a professional development experience. [CEDS Element: Early Learning Trainer Core Knowledge Area, ID:001606]';

CREATE TABLE ceds6sc_rdx.program ( 
	organization_id    integer  NOT NULL,
	credits_required   decimal(9,2)  ,
	CONSTRAINT pk_program PRIMARY KEY ( organization_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.program.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN ceds6sc_rdx.program.credits_required IS 'The total number of credits required for a student to graduate from the school of enrollment or complete a program. [CEDS Element: Credits Required, ID:001574]';

CREATE TABLE ceds6sc_rdx.program_participation_cte ( 
	organization_person_role_id integer  NOT NULL,
	cte_participant    bool  ,
	cte_concentrator   bool  ,
	cte_completer      bool  ,
	single_parent_or_single_pregnant_woman bool  ,
	displaced_homemaker_indicator bool  ,
	cte_non_traditional_completion bool  ,
	ref_non_traditional_gender_status_id integer  ,
	ref_workbased_learning_opportunity_type_id integer  ,
	career_pathways_program_participation_exit_date date  ,
	career_pathways_program_participation_start_date date  ,
	CONSTRAINT pk_program_participation_cte PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.program_participation_cte IS 'Information on a person participating in a career and technical education program.';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_cte.organization_person_role_id IS 'Surrogate Key - Foreign Key - Person_Program_Participation';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_cte.cte_participant IS 'An indication a student has met the state-defined threshold of Career and Technical Education participation as defined in the State''s approved Perkins IV State Plan. [CEDS Element: Career and Technical Education Participant, ID:000592]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_cte.cte_concentrator IS 'An indication of a student who has met the state-defined threshold of career and technical education concentrators, as defined in the State''s approved Perkins IV State Plan. [CEDS Element: Career and Technical Education Concentrator, ID:000037]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_cte.cte_completer IS 'An indication of a student who reached a state-defined threshold of career and technical education and who attained a high school diploma or its recognized state equivalent or GED. [CEDS Element: Career and Technical Education Completer, ID:000036]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_cte.single_parent_or_single_pregnant_woman IS 'A student who, at some time during the school year, is either a pregnant female student who is unmarried; or a male or female student who is unmarried or legally separated from a spouse and has a minor child or children. [CEDS Element: Single Parent Or Single Pregnant Woman Status, ID:000580]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_cte.displaced_homemaker_indicator IS 'A person who ; (A) (i) has worked primarily without remuneration to care for a home and family, and for that reason has diminished marketable skills;    (ii) has been dependent on the income of another family member but is no longer supported by that income; or    (iii) is a parent whose youngest dependent child will become ineligible to receive assistance under part A of title IV of the Social Security Act (42 U.S.C. 601 et seq.) not later than 2 years after the date on which the parent applies for assistance under such title; and (B)   is unemployed or underemployed and is experiencing difficulty in obtaining or upgrading employment. [CEDS Element: Career-Technical-Adult Education Displaced Homemaker Indicator, ID:000084]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_cte.cte_non_traditional_completion IS 'An indication that the CTE student has completed a CTE program in a nontraditional field (where one gender comprises less than 25 percent of the persons employed in those occupations or fields of work). [CEDS Element: Career and Technical Education Nontraditional Completion, ID:000593]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_cte.ref_non_traditional_gender_status_id IS 'An indication of whether CTE participants were members of an underrepresented gender group (where one gender comprises less than 25 percent of the persons employed in those occupations or field of work). [CEDS Element: Career Technical Education Nontraditional Gender Status, ID:000588]  (Foreign key - Ref_Non_Traditional_Gender_Status)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_cte.ref_workbased_learning_opportunity_type_id IS 'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_cte.career_pathways_program_participation_exit_date IS 'The year, month and day on which the person ceased to participate in a program. [CEDS Element: Career Pathways Program Participation Exit Date, ID:001583]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_cte.career_pathways_program_participation_start_date IS 'The year, month and day on which the person began to participate in a career pathway program. [CEDS Element: Career Pathways Program Participation Start Date, ID:001584]';

CREATE TABLE ceds6sc_rdx.program_participation_migrant ( 
	organization_person_role_id integer  NOT NULL,
	ref_mep_enrollment_type_id integer  ,
	ref_mep_project_based_id integer  ,
	ref_mep_service_type_id integer  ,
	mep_eligibility_expiration_date date  ,
	continuation_of_services_status bool  ,
	ref_continuation_of_services_reason_id integer  ,
	birthdate_verification varchar(60)  ,
	immunization_record_flag bool  ,
	migrant_student_qualifying_arrival_date date  ,
	last_qualifying_move_date date  ,
	qualifying_move_from_city varchar(30)  ,
	ref_qualifying_move_from_state_id integer  ,
	ref_qualifying_move_from_country_id integer  ,
	designated_graduation_school_id integer  ,
	CONSTRAINT pk_program_participation_migrant PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.program_participation_migrant IS 'Information on a person participating in a migrant student education program.';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.organization_person_role_id IS 'Surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.ref_mep_enrollment_type_id IS 'The type of school/migrant education project in which instruction and/or support services are provided. [CEDS Element: Migrant Education Program Enrollment Type, ID:000437]  (Foreign key - Ref_Mep_Enrollment_Type)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.ref_mep_project_based_id IS 'Indicates the type of MEP project based on the location where the MEP services are held. [CEDS Element: Migrant Education Program Project Based, ID:000440]  (Foreign key - Ref_Mep_Project_Base)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.ref_mep_service_type_id IS 'The type of services received by participating migrant students in the migrant education program (MEP). [CEDS Element: Migrant Education Program Services Type, ID:000186]  (Foreign key - Ref_Mep_Service_Type)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.mep_eligibility_expiration_date IS 'The date on which the child is no longer eligible for the Migrant Education Program. This date should initially be a date equal to 36 months from the Qualifying Arrival Date to indicate the end of MEP eligibility or the student reaches 22 years of age, whichever comes first. [CEDS Element: Migrant Education Program Eligibility Expiration Date, ID:000430]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.continuation_of_services_status IS 'An indication that migrant children are receiving instructional or support services under the continuation of services authority ESEA Title III Section 1304(e)(2)-(3). [CEDS Element: Migrant Education Program Continuation of Services Status, ID:000563]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.ref_continuation_of_services_reason_id IS 'Reason why the student is being served under the continuation of services provision of the MEP. [CEDS Element: Continuation of Services Reason, ID:000429]  (Foreign key - Ref_Continuation_Of_Services)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.birthdate_verification IS 'The evidence by which a child''s date of birth is confirmed. [CEDS Element: Birthdate Verification, ID:000428]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.immunization_record_flag IS 'Indicates whether the school or MEP program has immunization records on file for the student. [CEDS Element: Immunization Record Flag, ID:000438]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.migrant_student_qualifying_arrival_date IS 'The qualifying arrival date (QAD) is the date that the child completed a move with his or her parent to enable the parent to find qualifying employment. In some cases, the child and worker may not always move together, in which case the QAD would be the date that the child joins the worker who has  already moved, or the date the worker joins the child who has already moved. The QAD is the date the child''s eligibility for the Migrant Education Program begins. [CEDS Element: Migrant Student Qualifying Arrival Date, ID:000432]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.last_qualifying_move_date IS 'The date of the last qualifying move of a migrant student. [CEDS Element: Last Qualifying Move Date, ID:000171]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.qualifying_move_from_city IS 'The name of the city in which the child resided prior to the qualifying move. [CEDS Element: Qualifying Move From City, ID:000433]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.ref_qualifying_move_from_state_id IS 'Surrogate key from Ref_State_Abbreviation.  The postal abbreviation code for a state (within the United States) or outlying area in which the child resided prior to the qualifying move. [CEDS Element: Qualifying Move From State, ID:000435]  (Foreign key - Ref_State)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.ref_qualifying_move_from_country_id IS 'Surrogate key from Ref_Country.  The abbreviation code for a country (other than the US) area in which the child resided prior to the qualifying move. [CEDS Element: Qualifying Move From Country, ID:000434]  (Foreign key - Ref_County)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_migrant.designated_graduation_school_id IS 'Foreign key - Organization';

CREATE TABLE ceds6sc_rdx.program_participation_special_education ( 
	organization_person_role_id integer  NOT NULL,
	awaiting_initial_idea_evaluation_status bool  ,
	ref_idea_educational_environment_ecid integer  ,
	ref_idea_ed_environment_school_age_id integer  ,
	special_education_fte decimal(5,4)  ,
	ref_special_education_exit_reason_id integer  ,
	special_education_services_exit_date date  ,
	CONSTRAINT pk_program_participation_special_education PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.program_participation_special_education IS 'Information on a person participating in a special education program.';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_special_education.organization_person_role_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_special_education.awaiting_initial_idea_evaluation_status IS 'Awaiting initial evaluation for special education programs and related services under the Individuals with Disabilities Education Act (IDEA).  [CEDS Element: Awaiting Initial IDEA Evaluation Status, ID:000031]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_special_education.ref_idea_educational_environment_ecid IS 'The program in which children ages 3 through 5 attend and in which these children receive special education and related services. [CEDS Element: IDEA Educational Environment for Early Childhood, ID:000559]  (Foreign key - Ref_Idea_Educational_Environment)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_special_education.ref_idea_ed_environment_school_age_id IS 'The setting in which children ages 6 through 21, receive special education and related services. [CEDS Element: IDEA Educational Environment for School Age, ID:000535]  (Foreign key - Ref_Idea_Educational_Environment_School_Age)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_special_education.special_education_fte IS 'Calculated ratio of time the student is in a special education setting. Values range from 0.00 to 1.00. If the student is in a special education setting 25% of the time, the value is .25; if 100% of the time, the value is 1.00. [CEDS Element: Special Education Full Time Equivalency, ID:001242]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_special_education.ref_special_education_exit_reason_id IS 'The reason children who were in special education at the start of the reporting period were not in special education at the end of the reporting period. [CEDS Element: Special Education Exit Reason, ID:000260] (Foreign key - Ref_Special_Education_Exit_Reason)';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_special_education.special_education_services_exit_date IS 'The date a child with disabilities (IDEA) ages 14 through 21 exited special education. [CEDS Element: Special Education Services Exit Date, ID:000263]';

CREATE TABLE ceds6sc_rdx.program_participation_title_iii_lep ( 
	organization_person_role_id integer  NOT NULL,
	ref_title_iii_accountability_id integer  ,
	ref_title_iii_language_instruction_program_type_id integer  ,
	CONSTRAINT pk_program_participation_title_iii_ PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.program_participation_title_iii_lep IS 'Information on a person participating in a Title III limited English proficiency education program.';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_title_iii_lep.organization_person_role_id IS 'PK';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_title_iii_lep.ref_title_iii_accountability_id IS 'An indication of the progress made by a student toward English proficiency. [CEDS Element: Title III Accountability Progress Status, ID:000536]';

COMMENT ON COLUMN ceds6sc_rdx.program_participation_title_iii_lep.ref_title_iii_language_instruction_program_type_id IS 'The type of Title III language instructional programs. [CEDS Element: Title III Language Instruction Program Type, ID:000447]';

CREATE TABLE ceds6sc_rdx.ps_course ( 
	organization_id    integer  NOT NULL,
	ref_course_credit_basis_type_id integer  ,
	ref_course_credit_level_type_id integer  ,
	course_number      varchar(30)  ,
	original_course_identifier varchar(40)  ,
	override_school_course_number varchar(30)  ,
	ref_nces_college_course_map_code_id integer  ,
	ncaa_eligibility_ind integer  ,
	ref_cip_code_id    integer  ,
	CONSTRAINT pk_ps_course PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_course IS 'The organization of subject matter and related learning experiences provided for the instruction of students on a regular or systematic basis, usually for a predetermined period of time (e.g., a semester or two-week workshop) to an individual or group of students (e.g., a class). ';

COMMENT ON COLUMN ceds6sc_rdx.ps_course.organization_id IS 'Inherited surrogate key from Course';

COMMENT ON COLUMN ceds6sc_rdx.ps_course.ref_course_credit_basis_type_id IS 'The type of enrollment associated with the credit hours for the course. [CEDS Element: Course Credit Basis Type, ID:001303]';

COMMENT ON COLUMN ceds6sc_rdx.ps_course.ref_course_credit_level_type_id IS 'The level of credit associated with the credit hours earned for the course. [CEDS Element: Course Credit Level Type, ID:001304]';

COMMENT ON COLUMN ceds6sc_rdx.ps_course.course_number IS 'The official reference number portion of a course identifier. This number normally designates the level of the course as well as the level of the individual expected to enroll in the course. [CEDS Element: Course Number, ID:001314]';

COMMENT ON COLUMN ceds6sc_rdx.ps_course.original_course_identifier IS 'The course identifier as it was listed when the credit was earned (e.g. before a system conversion) to show consistency between present transcripts and older ones. [CEDS Element: Course Number, ID:001420]';

COMMENT ON COLUMN ceds6sc_rdx.ps_course.override_school_course_number IS 'An indication of the way an academic course was identified at an educational institution. [CEDS Element: Override School Course Number, ID:001422]';

COMMENT ON COLUMN ceds6sc_rdx.ps_course.ref_nces_college_course_map_code_id IS 'A taxonomy system for coding postsecondary courses in NCES research studies. [CEDS Element: NCES College Course Map Code, ID:001414]';

COMMENT ON COLUMN ceds6sc_rdx.ps_course.ncaa_eligibility_ind IS 'An indication that the course is approved for determining NCAA eligibility. [CEDS Element: NCAA Eligibility, ID: 001413]';

COMMENT ON COLUMN ceds6sc_rdx.ps_course.ref_cip_code_id IS 'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions. [CEDS Element: Classification of Instructional Program Code, ID:000043]';

CREATE TABLE ceds6sc_rdx.ps_price_of_attendance ( 
	ps_price_of_attendance_id integer  NOT NULL,
	organization_id    integer  NOT NULL,
	session_designator char(7)  ,
	tuition_published  decimal(9,2)  ,
	ref_tuition_unit_id integer  ,
	board_charges      decimal(9,2)  ,
	room_charges       decimal(9,2)  ,
	books_and_supplies_costs decimal(9,2)  ,
	required_student_fees decimal(9,2)  ,
	comprehensive_fee  decimal(9,2)  ,
	other_student_expenses decimal(9,2)  ,
	price_of_attendance decimal(9,2)  ,
	ipedscollection_year_designator char(9)  ,
	CONSTRAINT pk_ps_price_of_attendance PRIMARY KEY ( ps_price_of_attendance_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_price_of_attendance IS 'The price of attendance data for a postsecondary institution and a given session.';

COMMENT ON COLUMN ceds6sc_rdx.ps_price_of_attendance.ps_price_of_attendance_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ps_price_of_attendance.organization_id IS 'Foreign key - Ps_Institution';

COMMENT ON COLUMN ceds6sc_rdx.ps_price_of_attendance.session_designator IS 'The academic session (YYYY-MM) for which the data are recorded and applicable. [CEDS Element: Session Designator, ID:000252]';

COMMENT ON COLUMN ceds6sc_rdx.ps_price_of_attendance.tuition_published IS 'The published tuition for first time, full-time undergraduate students (lower of in-district or in-state for public institutions).  Tuition may be charged per term, per course, per credit or per program. [CEDS Element: Tuition - Published, ID:000745]';

COMMENT ON COLUMN ceds6sc_rdx.ps_price_of_attendance.ref_tuition_unit_id IS 'The component for which tuition is being charged.  It might be a time period (term, quarter, year, etc.) or it might be an entity of education (course, credit hour, etc.). [CEDS Element: Tuition Unit, ID:000746]  (Foreign key - Ref_Tuition_Unit)';

COMMENT ON COLUMN ceds6sc_rdx.ps_price_of_attendance.board_charges IS 'The charges assessed students for an academic year for the maximum meal plan available. [CEDS Element: Board Charges, ID:000750]';

COMMENT ON COLUMN ceds6sc_rdx.ps_price_of_attendance.room_charges IS 'The charges for an academic year for rooming accommodations for a typical student sharing a room with one other student. [CEDS Element: Room Charges, ID:000749]';

COMMENT ON COLUMN ceds6sc_rdx.ps_price_of_attendance.books_and_supplies_costs IS 'The average cost for books and supplies for a typical student for an entire academic year (or program). Does not include unusual costs for special groups of students (e.g., engineering or art majors) unless they constitute the majority of students at an institution. [CEDS Element: Books and Supplies Costs, ID:000751]';

COMMENT ON COLUMN ceds6sc_rdx.ps_price_of_attendance.required_student_fees IS 'Fixed sum charged to persons for items not covered by tuition and required of such a large proportion of all students that the student who does not pay the charge is the exception. [CEDS Element: Required Student Fees, ID:000747]';

COMMENT ON COLUMN ceds6sc_rdx.ps_price_of_attendance.comprehensive_fee IS 'A single fixed amount of money charged by an institution that covers tuition, required fees, room, and board. For some institutions, this amount may also cover books and supplies. [CEDS Element: Comprehensive Fee, ID:000754]';

COMMENT ON COLUMN ceds6sc_rdx.ps_price_of_attendance.other_student_expenses IS 'The amount of money (estimated by the financial aid office) needed by a person to cover expenses such as laundry, transportation, and entertainment. [CEDS Element: Other Student Expenses, ID:000752]';

COMMENT ON COLUMN ceds6sc_rdx.ps_price_of_attendance.price_of_attendance IS 'The total amount institutions estimate that undergraduate-level full-time, first-time degree-seeking students will pay to attend before financial aid is considered. This price includes tuition and fees, books and supplies, room and board, and certain other designated expenses such as transportation. These estimates are the average amounts used by the financial aid office to determine a student’s financial aid. [CEDS Element: Price of Attendance, ID:000753]';

COMMENT ON COLUMN ceds6sc_rdx.ps_price_of_attendance.ipedscollection_year_designator IS 'The academic year, generally extending from September to June, in which IPEDS data is collected.  Most Institutional Characteristics, Salaries, Fall Staff, Fall Enrollment, and Employees by Assigned Position data are collected for the current year; Completions, 12-Month Enrollment, Student Financial Aid, and Finance data collections cover the prior year. [CEDS Element: IPEDS Collection Year Designator, ID:001613]';

CREATE TABLE ceds6sc_rdx.ps_section ( 
	organization_id    integer  NOT NULL,
	grade_value_qualifier char(2)  ,
	ref_cip_code_id    integer  ,
	ref_course_gpa_applicability_id integer  ,
	ref_course_honors_type_id integer  ,
	ref_course_instruction_method_id integer  ,
	ref_course_level_type_id integer  ,
	ref_developmental_education_type_id integer  ,
	ref_workbased_learning_opportunity_type_id integer  ,
	CONSTRAINT pk_ps_section PRIMARY KEY ( organization_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.ps_section.grade_value_qualifier IS 'The grading scale used by an academic educational institution for an academic course. [CEDS Element: Course Academic Grade Scale Code, ID:001298]';

COMMENT ON COLUMN ceds6sc_rdx.ps_section.ref_cip_code_id IS 'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions. [CEDS Element: Classification of Instructional Program Code, ID:000043]';

COMMENT ON COLUMN ceds6sc_rdx.ps_section.ref_course_gpa_applicability_id IS 'An indicator of whether or not this course being described is included in the computation of the student’s Grade Point Average (GPA). [CEDS Element: Course Grade Point Average Applicability, ID:000060]';

COMMENT ON COLUMN ceds6sc_rdx.ps_section.ref_course_honors_type_id IS 'An indication that the course is or can be counted as an honors course. [CEDS Element: Course Honors Type, ID:001307]';

COMMENT ON COLUMN ceds6sc_rdx.ps_section.ref_course_instruction_method_id IS 'The primary method of instruction used for the course. [CEDS Element: Course Instruction Method, ID:001308]';

COMMENT ON COLUMN ceds6sc_rdx.ps_section.ref_course_level_type_id IS 'The level of work which is reflected in the credits associated with the academic course being described or the level of the typical individual taking the academic course. [CEDS Element: Course Level Type, ID:001312]';

COMMENT ON COLUMN ceds6sc_rdx.ps_section.ref_developmental_education_type_id IS 'An indicator of the category of developmental education. [CEDS Element: Developmental Education Type, ID:001589]';

COMMENT ON COLUMN ceds6sc_rdx.ps_section.ref_workbased_learning_opportunity_type_id IS 'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]';

CREATE TABLE ceds6sc_rdx.ps_staff_employment ( 
	staff_employment_id integer  NOT NULL,
	ref_full_time_status_id integer  ,
	faculty_status     bool  ,
	ref_employment_contract_type_id integer  ,
	standard_occupational_class char(7)  ,
	ref_ipeds_occupational_category_id integer  ,
	instructional_staff_status bool  ,
	medical_school_staff_status bool  ,
	ref_instructional_staff_contract_length_id integer  ,
	ref_instructional_staff_faculty_tenure_id integer  ,
	ref_academic_rank_id integer  ,
	ref_instruction_credit_type_id integer  ,
	graduate_assistant_status bool  ,
	ref_graduate_assistant_ipeds_category_id integer  ,
	annual_base_contractual_salary decimal(9,2)  ,
	CONSTRAINT pk_ps_staff_employment PRIMARY KEY ( staff_employment_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_staff_employment IS 'Attributes for postsecondary staff employment. Extends from Staff.';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.staff_employment_id IS 'PK - Foreign key from Staff_Employment';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.ref_full_time_status_id IS 'An indication of whether an individual is employed for a standard number of hours (as determined by civil or organizational policies) in a week, month, or other period of time. [CEDS Element: Full-time Status, ID:000736]  (Foreign key - Ref_Full_Time_Status)';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.faculty_status IS 'Persons identified by the institution as such and typically those whose initial assignments are made for the purpose of conducting instruction, research or public service as a principal activity (or activities). They may hold academic rank titles of professor, associate professor, assistant professor, instructor, lecturer or the equivalent of any of those academic ranks. Faculty may also include the chancellor/president, provost, vice provosts, deans, directors or the equivalent, as well as associate deans, assistant deans and executive officers of academic departments (chairpersons, heads or the equivalent) if their principal activity is instruction combined with research and/or public service. The designation as faculty is separate from the activities to which they may be currently assigned. For example, a newly appointed president of an institution may also be appointed as a faculty member. Graduate, instruction, and research assistants are not included in this category. [CEDS Element: Faculty Status, ID:000734]';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.ref_employment_contract_type_id IS 'The type of employment contract used by an institution. [CEDS Element: Contract Type, ID:000737]  (Foreign key - Ref_Employment_Contract_Type)';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.standard_occupational_class IS 'A Bureau of Labor Statistics coding system for classifying occupations by work performed and, in some cases, on the skills, education and training needed to perform the work at a competent level.  See http://www.bls.gov/soc/soc_structure_2010.pdf. [CEDS Element: Standard Occupational Classification, ID:000730]';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.ref_ipeds_occupational_category_id IS 'The Integrated Postsecondary Education Data System (IPEDS) occupational categories used to report employees. [CEDS Element: IPEDS Occupational Category, ID:000731]  (Foreign key - Ref_Ipeds_Occupational_Category)';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.instructional_staff_status IS 'Staff whose primary function/occupational activity is primarily instruction or instruction combined with research and/or public service.  Does not include medical school staff. [CEDS Element: Instructional Staff Status, ID:000732]';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.medical_school_staff_status IS 'Staff employed by or employees working in the medical school component of a postsecondary institution or in a free standing medical school.  Does not include staff employed by or employees working strictly in a hospital associated with a medical school or those who work in health or allied health schools or departments such as dentistry, veterinary medicine, nursing or dental hygiene. [CEDS Element: Medical School Staff Status, ID:000733]';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.ref_instructional_staff_contract_length_id IS 'The contracted teaching period for faculty. [CEDS Element: Instructional Staff Contract Length, ID:000735]  (Foreign key - Ref_Instruct_Staff_Contract_Length)';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.ref_instructional_staff_faculty_tenure_id IS 'An indicator of the type of faculty status a person has if, by institutional definition, a staff member has faculty status. [CEDS Element: Instructional Staff Faculty Tenure Status, ID:000739]  (Foreign key - Ref_Instruct_Staff_Faculty_Tenure)';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.ref_academic_rank_id IS 'The academic rank of staff whose primary responsibility is instruction, research, and/or public service.  Institutions without standard academic ranks should code staff whose primary responsibility is instruction, research, and/or public service as no academic rank. [CEDS Element: Academic Rank, ID:000740]  (Foreign key - Ref_Academic_Rank)';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.ref_instruction_credit_type_id IS 'A designation of the type(s) of instruction being delivered by staff whose primary responsibility is instruction.  Instruction that is for credit can be applied toward the requirements for a postsecondary degree, diploma, certificate or other formal award. [CEDS Element: Instruction Credit Type, ID:000741] (Foreign key - Ref_Instruction_Credit_Type)';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.graduate_assistant_status IS 'Graduate-level students employed on a part-time basis, not limited to, but often employed for the primary purpose of assisting in classroom or laboratory instruction or in the conduct of research.  Graduate students having titles such as graduate assistant, teaching assistant, teaching associate, teaching fellow, or research assistant typically hold these positions. [CEDS Element: Graduate Assistant Status, ID:000742]';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.ref_graduate_assistant_ipeds_category_id IS 'The Integrated Postsecondary Education Data System (IPEDS) occupational categories used to report graduate assistants. [CEDS Element: Graduate Assistant IPEDS Occupation Category, ID:000743]  (Foreign key - Ref_Graduate_Assist_Ipeds_Category)';

COMMENT ON COLUMN ceds6sc_rdx.ps_staff_employment.annual_base_contractual_salary IS 'The total annual base contractual salary of a person. [CEDS Element: Annual Base Contractual Salary, ID:000744]';

CREATE TABLE ceds6sc_rdx.ps_student_academic_record ( 
	ps_student_academic_record_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	academic_year_designator char(9)  ,
	ref_academic_term_designator_id integer  ,
	grade_point_average decimal(9,4)  ,
	grade_point_average_cumulative decimal(9,4)  ,
	dual_credit_dual_enrollment_credits decimal(9,4)  ,
	advanced_placement_credits_awarded integer  ,
	ref_professional_tech_credential_type_id integer  ,
	diploma_or_credential_award_date char(7)  ,
	entering_term      varchar(30)  ,
	course_total       integer  ,
	ref_credit_hours_applied_other_program_id integer  ,
	CONSTRAINT pk_ps_student_academic_record PRIMARY KEY ( ps_student_academic_record_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_student_academic_record IS 'The summary level academic record for a postsecondary student including graduation information.';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_record.ps_student_academic_record_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_record.organization_person_role_id IS 'Foreign key - Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_record.academic_year_designator IS 'The academic year for which the data apply. [CEDS Element: Academic Year Designator, ID:000726]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_record.ref_academic_term_designator_id IS 'The academic term for which the data apply. [CEDS Element: Academic Term Designator, ID:000727]  (Foreign key - Ref_Academic_Term_Designator)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_record.grade_point_average IS 'The value of the total quality points divided by the Credit Hours for Grade Point Average.  [CEDS Element: Grade Point Average, ID:000127]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_record.grade_point_average_cumulative IS 'A measure of average performance in all courses taken by a person during his or her school career as determined for record-keeping purposes. This is obtained by dividing the total grade points received by the total number of credits attempted. This usually includes grade points received and credits attempted in his or her current school as well as those transferred from schools in which the person was previously enrolled. [CEDS Element: Grade Point Average Cumulative, ID:000128]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_record.dual_credit_dual_enrollment_credits IS 'The number of credits awarded a student by the postsecondary institution based on successful completion of dual credit/dual enrollment courses.  [CEDS Element: Dual Credit Dual Enrollment Credits Awarded, ID:000085]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_record.advanced_placement_credits_awarded IS 'The number of credits awarded a student by the postsecondary institution based on successful completion of advanced placement courses and/or advanced placement tests.  [CEDS Element: Advanced Placement Credits Awarded, ID:000018]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_record.ref_professional_tech_credential_type_id IS 'An indicator of the category of credential conferred by a state occupational licensing entity or industry organization for competency in a specific area measured by a set of pre-established standards. [CEDS Element: Professional or Technical Credential Conferred, ID:000783]  (Foreign key - Ref_Prof_Tech_Credential_Type)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_record.diploma_or_credential_award_date IS 'The month and year on which the diploma/credential is awarded to a student in recognition of his/her completion of the curricular requirements. [CEDS Element: Diploma or Credential Award Date, ID:000081]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_record.entering_term IS 'The term and year of the initial enrollment of an individual in credit bearing courses or developmental/remedial courses at an institution after completing high school or a high school equivalency program (e.g., GED, Adult High School Diploma). [CEDS Element: Postsecondary Student Entering Term, ID:001427]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_record.course_total IS 'The total number of courses listed on a transcript. Used as a check digit for integrity purposes. [CEDS Element: Course Total, ID:001316]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_academic_record.ref_credit_hours_applied_other_program_id IS 'Codes identifying the set of credit hours taken in other programs or degrees that were applied to the individual''s degree. [CEDS Element: Credit Hours Applied Other Program, ID:001317]';

CREATE TABLE ceds6sc_rdx.ps_student_application ( 
	organization_person_role_id integer  NOT NULL,
	postsecondary_applicant bool  ,
	grade_point_average_cumulative decimal(9,2)  ,
	ref_grade_point_average_domain_id integer  ,
	ref_gpa_weighted_indicator_id integer  ,
	high_school_percentile decimal(5,4)  ,
	high_school_student_class_rank integer  ,
	high_school_graduating_class_size integer  ,
	ref_admitted_student_id integer  ,
	wait_listed_student bool  ,
	CONSTRAINT pk_ps_student_application PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_student_application IS 'Information on an individual who submits an application for admission to a postsecondary institution.';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_application.organization_person_role_id IS 'Inherited surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_application.postsecondary_applicant IS 'An individual who has fulfilled the institution’s requirements to be considered for admission (including payment or waiving of the application fee, if any) and who has been notified of one of the following actions: admission, nonadmission, placement on waiting list, or application withdrawn (by applicant or institution). Include early decision, early action, and students who began studies during summer in this cohort. [CEDS Element: Postsecondary Applicant, ID:000755]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_application.grade_point_average_cumulative IS 'A measure of average performance in all courses taken by a person during his or her school career as determined for record-keeping purposes. This is obtained by dividing the total grade points received by the total number of credits attempted. This usually includes grade points received and credits attempted in his or her current school as well as those transferred from schools in which the person was previously enrolled. [CEDS Element: Grade Point Average Cumulative, ID:000128]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_application.ref_grade_point_average_domain_id IS 'The domain to which the Grade Point Average is referencing. [CEDS Element: Grade Point Average Domain, ID:000758]  (Foreign key - Ref_Grade_Point_Average_Domain)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_application.ref_gpa_weighted_indicator_id IS 'An indication of whether the reported GPA is weighted or unweighted. [CEDS Element: Grade Point Average Weighted Indicator, ID:000123]  (Foreign key - Ref_Gpa_Weighted_Indicator)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_application.high_school_percentile IS 'The High School Rank divided by the Size of High School Graduating Class expressed as a percentage. [CEDS Element: High School Percentile, ID:000759]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_application.high_school_student_class_rank IS 'The academic rank of a student in relation to his or her high school graduating class (e.g., 1, 2, 3) based on high school GPA. [CEDS Element: High School Student Class Rank, ID:000041]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_application.high_school_graduating_class_size IS 'The total number of students in the student''s high school graduating class. [CEDS Element: Size of High School Graduating Class, ID:000294]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_application.ref_admitted_student_id IS 'Applicant who has been granted an official offer to enroll in a postsecondary institution. Admitted applicants should include wait-listed students who were subsequently offered admission. [CEDS Element: Admitted Student, ID:000756]  (Foreign key - Ref_Admitted_Student)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_application.wait_listed_student IS 'A person who meets the admission requirements but will only be offered a place in the class if space becomes available. [CEDS Element: Wait Listed Student, ID:000757]';

CREATE TABLE ceds6sc_rdx.ps_student_course_section_mark ( 
	organization_person_role_id integer  NOT NULL,
	ref_course_academic_grade_status_code_id integer  ,
	course_narrative_explanation_grade varchar(300)  ,
	student_course_section_grade_narrative varchar(300)  ,
	CONSTRAINT pk_ps_student_course_section_mark PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.ps_student_course_section_mark.organization_person_role_id IS 'Surrogate key from Ps_Student_Section.';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_course_section_mark.ref_course_academic_grade_status_code_id IS 'Additional information regarding the context of the given grade. [CEDS Element: Course Academic Grade Status Code, ID:001299]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_course_section_mark.course_narrative_explanation_grade IS 'The narrative of the grade awarded to an individual in an academic course in those cases where a course does not receive a letter or numeric grade included in the grading scale of the Course Academic Grade Qualifier. [CEDS Element: Course Narrative Explanation Grade, ID:001313]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_course_section_mark.student_course_section_grade_narrative IS 'The narrative of the student performance in a course section as submitted by the instructor. [CEDS Element: Student Course Section Grade Narrative, ID:001573]';

CREATE TABLE ceds6sc_rdx.ps_student_employment ( 
	organization_person_role_id integer  NOT NULL,
	ref_employed_while_enrolled_id integer  ,
	ref_employed_after_exit_id integer  ,
	employment_naics_code char(6)  ,
	ref_employment_status_while_enrolled_id integer  ,
	CONSTRAINT pk_ps_student_employment PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_student_employment IS 'Employment information for a postsecondary student.';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_employment.organization_person_role_id IS 'Surrogate Key - Foreign key: Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_employment.ref_employed_while_enrolled_id IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, and at the same time is enrolled in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed While Enrolled, ID:000987]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_employment.ref_employed_after_exit_id IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, after exiting secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed After Exit, ID:000988]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_employment.employment_naics_code IS 'The North American Industry Classification System (NAICS) code associated with an individual''s employment. [CEDS Element: Employment NAICS Code, ID:001064]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_employment.ref_employment_status_while_enrolled_id IS 'An indication of the individual''s employment status while enrolled. [CEDS Element: Employment Status While Enrolled, ID:001343]';

CREATE TABLE ceds6sc_rdx.ps_student_financial_aid ( 
	organization_person_role_id integer  NOT NULL,
	financial_aid_applicant bool  ,
	financial_need     decimal(9,2)  ,
	ref_need_determination_method_id integer  ,
	title_i_vparticipant_and_recipient bool  ,
	financial_aid_income_level decimal(9,2)  ,
	ref_financial_aid_veterans_benefit_status_id integer  ,
	ref_financial_aid_veterans_benefit_type_id integer  ,
	CONSTRAINT pk_ps_student_financial_aid PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ps_student_financial_aid IS 'Information on a person who applies for financial aid to participate in postsecondary education.';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_financial_aid.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_financial_aid.financial_aid_applicant IS 'Any applicant who submits any one of the institutionally required financial aid applications/forms, such as the  Free Application for Federal Student Aid (FAFSA). [CEDS Element: Financial Aid Applicant, ID:000763]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_financial_aid.financial_need IS 'The amount of financial need as determined by an institution using the federal methodology and/or your institution''s own standards. [CEDS Element: Financial Need, ID:000765]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_financial_aid.ref_need_determination_method_id IS 'The methodology used to determine an individual''s financial need. [CEDS Element: Financial Need Determination Methodology, ID:001224]  (Foreign key - Ref_Need_Determination_Method)';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_financial_aid.title_i_vparticipant_and_recipient IS 'A person who receives Title IV aid.  Title IV aid includes grant aid, work study aid, and loan aid such as: Federal Pell Grant, Federal Supplemental Educational Opportunity Grant (FSEOG), Teacher Education Assistance for College and Higher Education (TEACH) Grant, Federal Work-Study, Federal Perkins Loan, Subsidized Direct or FFEL Stafford Loan, and Unsubsidized Direct or FFEL Stafford Loan.  Title IV aid specifications are defined by the instructions for the IPEDS Student Financial Aid survey. [CEDS Element: Title IV Participant and Recipient, ID:000292]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_financial_aid.financial_aid_income_level IS 'The income level of an individual that is used by an institution''s financial aid office to determine an individual''s Expected Family Contribution (EFC). For dependent students this will include the parents'' adjusted gross income and the student''s adjusted gross income. For independent students this will include the student''s adjusted gross income. [CEDS Element: Financial Aid Income Level, ID: 001352]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_financial_aid.ref_financial_aid_veterans_benefit_status_id IS 'An indication of whether a person is receiving Veteran''s benefits. [CEDS Element: Financial Aid Veteran’s Benefit Status, ID:001609]';

COMMENT ON COLUMN ceds6sc_rdx.ps_student_financial_aid.ref_financial_aid_veterans_benefit_type_id IS 'The type of Veteran''s benefits a person is receiving. [CEDS Element: Financial Aid Veteran’s Benefit Type, ID:001610]';

CREATE TABLE ceds6sc_rdx.quarterly_employment_record ( 
	quarterly_employment_record_id integer  NOT NULL,
	person_id          integer  NOT NULL,
	earnings           decimal(9,0)  ,
	employment_naicscode varchar(50)  ,
	reference_period_start_date date  ,
	reference_period_end_date date  ,
	ref_eradministrative_data_source_id integer  ,
	ref_employment_location_id integer  ,
	ref_employed_prior_to_enrollment_id integer  ,
	CONSTRAINT pk_workforce_employment_record PRIMARY KEY ( quarterly_employment_record_id )
 );

COMMENT ON TABLE ceds6sc_rdx.quarterly_employment_record IS 'The CEDS entity that includes person-level employment and earnings information from quarterly employment and earnings-related data from sources such as State UI Wage Records, the Wage Record Interchange System, or the Federal Employment Data Exchange System (FEDES). ';

COMMENT ON COLUMN ceds6sc_rdx.quarterly_employment_record.quarterly_employment_record_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.quarterly_employment_record.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN ceds6sc_rdx.quarterly_employment_record.earnings IS 'The quarterly amount paid to individuals found employed during the reference period. [CEDS Element: Quarterly Earnings, ID:000989]';

COMMENT ON COLUMN ceds6sc_rdx.quarterly_employment_record.employment_naicscode IS 'The North American Industry Classification System (NAICS) code associated with an individual''s employment. [CEDS Element: Employment NAICS Code, ID:001064]';

COMMENT ON COLUMN ceds6sc_rdx.quarterly_employment_record.reference_period_start_date IS 'The year, month, and day of the first day of the employment record reference period. [CEDS Element: Employment Record Reference Period Start Date, ID:000992]';

COMMENT ON COLUMN ceds6sc_rdx.quarterly_employment_record.reference_period_end_date IS 'The year, month, and day of the last day of the employment record reference period. [CEDS Element: Employment Record Reference Period End Date, ID:000993]';

COMMENT ON COLUMN ceds6sc_rdx.quarterly_employment_record.ref_eradministrative_data_source_id IS 'Administrative data source of information used to collect employment and earnings-related data. [CEDS Element: Employment Record Administrative Data Source, ID:000994]';

COMMENT ON COLUMN ceds6sc_rdx.quarterly_employment_record.ref_employment_location_id IS 'The state or other location in which an individual is found employed. [CEDS Element: Employment Location, ID:000990]';

COMMENT ON COLUMN ceds6sc_rdx.quarterly_employment_record.ref_employed_prior_to_enrollment_id IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, before enrolling in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed Prior to Enrollment, ID:001342]';

CREATE TABLE ceds6sc_rdx.ref_academic_award_level ( 
	ref_academic_award_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_academic_award_level PRIMARY KEY ( ref_academic_award_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_academic_award_level IS 'An indicator of the category of award conferred by a college, university, or other postsecondary education institution as official recognition for the successful completion of a program of study. [CEDS Element: Academic Award Level Conferred, ID:000002]';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_award_level.ref_academic_award_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_award_level.description IS 'An indicator of the category of award conferred by a college, university, or other postsecondary education institution as official recognition for the successful completion of a program of study.  [CEDS Element: Academic Award Level Conferred, ID:000002]';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_award_level.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_award_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_academic_rank ( 
	ref_academic_rank_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_academic_rank PRIMARY KEY ( ref_academic_rank_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_academic_rank IS 'The academic rank of staff whose primary responsibility is instruction, research, and/or public service.  Institutions without standard academic ranks should code staff whose primary responsibility is instruction, research, and/or public service as no academic rank. [CEDS Element: Academic Rank, ID:000740]';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_rank.ref_academic_rank_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_rank.description IS 'The academic rank of staff whose primary responsibility is instruction, research, and/or public service.  Institutions without standard academic ranks should code staff whose primary responsibility is instruction, research, and/or public service as no academic rank. [CEDS Element: Academic Rank, ID:000740]';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_rank.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_rank.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_academic_term_designator ( 
	ref_academic_term_designator_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_academic_term_designator PRIMARY KEY ( ref_academic_term_designator_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_academic_term_designator IS 'The academic term for which the data apply. [CEDS Element: Academic Term Designator, ID:000727]';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_term_designator.ref_academic_term_designator_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_term_designator.description IS 'The academic term for which the data apply. [CEDS Element: Academic Term Designator, ID:000727]';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_term_designator.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_academic_term_designator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_accreditation_agency ( 
	ref_accreditation_agency_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_accreditation_agency PRIMARY KEY ( ref_accreditation_agency_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_accreditation_agency IS 'The agency that accredited a program. [CEDS Element: Accreditation Agency, ID:000982]';

COMMENT ON COLUMN ceds6sc_rdx.ref_accreditation_agency.ref_accreditation_agency_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_accreditation_agency.description IS 'The agency that accredited a program. [CEDS Element: Accreditation Agency, ID:000982]';

COMMENT ON COLUMN ceds6sc_rdx.ref_accreditation_agency.code IS 'The code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_accreditation_agency.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_activity_time_measurement_type ( 
	ref_activity_time_measurement_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_activity_time_measurement_type PRIMARY KEY ( ref_activity_time_measurement_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_activity_time_measurement_type IS 'The type of measurement for the amount of time the student participated in the events and procedures of an activity, such as a co-curricular or extra-curricular activity that is offered at an education institution.[CEDS Element: Activity Time Measurement Type, ID:001528]';

COMMENT ON COLUMN ceds6sc_rdx.ref_activity_time_measurement_type.ref_activity_time_measurement_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_activity_time_measurement_type.description IS 'The type of measurement for the amount of time the student participated in the events and procedures of an activity, such as a co-curricular or extra-curricular activity that is offered at an education institution. [CEDS Element: Activity Time Measurement Type, ID:001528]';

COMMENT ON COLUMN ceds6sc_rdx.ref_activity_time_measurement_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_activity_time_measurement_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_address_type ( 
	ref_address_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_address_type PRIMARY KEY ( ref_address_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_address_type IS 'List of identification system types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_address_type.ref_address_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_address_type.description IS 'List of address types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_address_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_address_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_admission_consideration_level ( 
	ref_admission_consideration_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_admission_consideration_level PRIMARY KEY ( ref_admission_consideration_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_admission_consideration_level IS 'The level of consideration given a type of admission criteria used at an institution during the selection process.[CEDS Element: Admission Consideration Level, ID:001579]';

COMMENT ON COLUMN ceds6sc_rdx.ref_admission_consideration_level.ref_admission_consideration_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_admission_consideration_level.description IS 'The level of consideration given a type of admission criteria used at an institution during the selection process. [CEDS Element: Admission Consideration Level, ID:001579]';

COMMENT ON COLUMN ceds6sc_rdx.ref_admission_consideration_level.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_admission_consideration_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_admitted_student ( 
	ref_admitted_student_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_admitted_student PRIMARY KEY ( ref_admitted_student_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_admitted_student IS 'Applicant who has been granted an official offer to enroll in a postsecondary institution. Admitted applicants should include wait-listed students who were subsequently offered admission. [CEDS Element: Admitted Student, ID:000756]';

COMMENT ON COLUMN ceds6sc_rdx.ref_admitted_student.ref_admitted_student_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_admitted_student.description IS 'Applicant who has been granted an official offer to enroll in a postsecondary institution. Admitted applicants should include wait-listed students who were subsequently offered admission. [CEDS Element: Admitted Student, ID:000756]';

COMMENT ON COLUMN ceds6sc_rdx.ref_admitted_student.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_admitted_student.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.
';

CREATE TABLE ceds6sc_rdx.ref_ae_certification_type ( 
	ref_ae_certification_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk__ref_ae_certification_type PRIMARY KEY ( ref_ae_certification_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ae_certification_type IS 'An indication of the category of certification a person holds. [CEDS Element: Adult Education Certification Type, ID:001085]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_certification_type.ref_ae_certification_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_certification_type.description IS 'An indication of the category of certification a person holds. [CEDS Element: Adult Education Certification Type, ID:001085]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_certification_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_certification_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ae_functioning_level_at_posttest ( 
	ref_ae_functioning_level_at_posttest_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ae_functioning_level_at_posttest PRIMARY KEY ( ref_ae_functioning_level_at_posttest_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ae_functioning_level_at_posttest IS 'An individual''s skill level, as defined by the National Reporting System for Adult Education and determined by an approved standardized assessment after a set time period or number of instructional hours. [CEDS Element: Adult Educational Functioning Level at Posttest, ID:000780]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_functioning_level_at_posttest.ref_ae_functioning_level_at_posttest_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_functioning_level_at_posttest.description IS 'An individual''s skill level, as defined by the National Reporting System for Adult Education and determined by an approved standardized assessment after a set time period or number of instructional hours. [CEDS Element: Adult Educational Functioning Level at Posttest, ID:000780]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_functioning_level_at_posttest.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_functioning_level_at_posttest.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ae_postsecondary_transition_action ( 
	ref_ae_postsecondary_transition_action_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ae_postsecondary_transition_action PRIMARY KEY ( ref_ae_postsecondary_transition_action_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ae_postsecondary_transition_action IS 'The action taken with respect to postsecondary enrollment by the learner after program exit or when co-enrolled in ABE and postsecondary with respect to enrollment in a postsecondary educational or occupational skills program building on prior services or training received. [CEDS Element: Adult Education Postsecondary Transition Action, ID:000784]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_postsecondary_transition_action.ref_ae_postsecondary_transition_action_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_postsecondary_transition_action.description IS 'The action taken with respect to postsecondary enrollment by the learner after program exit or when co-enrolled in ABE and postsecondary with respect to enrollment in a postsecondary educational or occupational skills program building on prior services or training received. [CEDS Element: Adult Education Postsecondary Transition Action, ID:000784]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_postsecondary_transition_action.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_postsecondary_transition_action.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ae_staff_classification ( 
	ref_ae_staff_classification_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ae_staff_classification PRIMARY KEY ( ref_ae_staff_classification_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ae_staff_classification IS 'The titles of employment, official status, or rank of adult education staff. [CEDS Element: Adult Education Staff Classification, ID:000786]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_staff_classification.ref_ae_staff_classification_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_staff_classification.description IS 'The titles of employment, official status, or rank of adult education staff. [CEDS Element: Adult Education Staff Classification, ID:000786]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_staff_classification.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ae_staff_classification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_allergy_severity ( 
	ref_allergy_severity_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_allergy_severity PRIMARY KEY ( ref_allergy_severity_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_allergy_severity IS 'The level of severity of a person''s reaction to an allergen. [CEDS Element: Allergy Severity, ID:001282]';

COMMENT ON COLUMN ceds6sc_rdx.ref_allergy_severity.ref_allergy_severity_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_allergy_severity.description IS 'The level of severity of a person''s reaction to an allergen. [CEDS Element: Allergy Severity, ID:001282]';

COMMENT ON COLUMN ceds6sc_rdx.ref_allergy_severity.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_allergy_severity.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_alt_route_to_certification_or_licensure ( 
	ref_alt_route_to_certification_or_licensure_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_alt_route_to_certification_or_licensure PRIMARY KEY ( ref_alt_route_to_certification_or_licensure_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_alt_route_to_certification_or_licensure IS 'An indication of whether a person is enrolled in an alternative teacher preparation program as defined by Title II. [CEDS Element: Alternative Route to Certification or Licensure, ID:000769]';

COMMENT ON COLUMN ceds6sc_rdx.ref_alt_route_to_certification_or_licensure.ref_alt_route_to_certification_or_licensure_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_alt_route_to_certification_or_licensure.description IS 'An indication of whether a person is enrolled in an alternative teacher preparation program as defined by Title II. [CEDS Element: Alternative Route to Certification or Licensure, ID:000769]';

COMMENT ON COLUMN ceds6sc_rdx.ref_alt_route_to_certification_or_licensure.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_alt_route_to_certification_or_licensure.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_alternative_school_focus ( 
	ref_alternative_school_focus_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_alternative_focus PRIMARY KEY ( ref_alternative_school_focus_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_alternative_school_focus IS 'An indication of the specific group of students whose needs the alternative school is designed to meet. [CEDS Element: Alternative School Focus Type, ID:000015]';

COMMENT ON COLUMN ceds6sc_rdx.ref_alternative_school_focus.ref_alternative_school_focus_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_alternative_school_focus.description IS 'An indication of the specific group of students whose needs the alternative school is designed to meet. [CEDS Element: Alternative School Focus Type, ID:000015]';

COMMENT ON COLUMN ceds6sc_rdx.ref_alternative_school_focus.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_alternative_school_focus.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_apip_interaction_type ( 
	ref_apip_interaction_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk__ref_apip_interaction_type PRIMARY KEY ( ref_apip_interaction_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_apip_interaction_type IS 'The assessment item body interaction type as defined by IMS Global specifications. [CEDS Element: Assessment Item Interaction Type, ID:001158]';

COMMENT ON COLUMN ceds6sc_rdx.ref_apip_interaction_type.ref_apip_interaction_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_apip_interaction_type.description IS 'The assessment item body interaction type as defined by IMS Global specifications. [CEDS Element: Assessment Item Interaction Type, ID:001158]';

COMMENT ON COLUMN ceds6sc_rdx.ref_apip_interaction_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_apip_interaction_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_accommodation_type ( 
	ref_assessment_accommodation_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_assessment_accommodation_type PRIMARY KEY ( ref_assessment_accommodation_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_accommodation_type IS 'The specific accommodation necessary for the administration of the assessment. [CEDS Element: Assessment Accommodation Type, ID:000385]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_accommodation_type.ref_assessment_accommodation_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_accommodation_type.description IS 'The specific accommodation necessary for the administration of the assessment. [CEDS Element: Assessment Accommodation Type, ID:000385]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_accommodation_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_accommodation_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_asset_type ( 
	ref_assessment_asset_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_asset_type PRIMARY KEY ( ref_assessment_asset_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_asset_type IS 'Specifies a predominant type of assessment asset represented by the Learning Resource.  Assessment assets represent any content used to compose an assessment item, is referenced by an item but not part of the item content itself, or is content that is included as part of a section within an assessment form. Assets can be static content such as art work or dynamic assets such as calculators. [CEDS Element: Assessment Asset Type, ID:001196]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_asset_type.ref_assessment_asset_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_asset_type.description IS 'Specifies a predominant type of assessment asset represented by the Learning Resource.  Assessment assets represent any content used to compose an assessment item, is referenced by an item but not part of the item content itself, or is content that is included as part of a section within an assessment form. Assets can be static content such as art work or dynamic assets such as calculators. [CEDS Element: Assessment Asset Type, ID:001196]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_asset_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_asset_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_form_section_identification_system ( 
	ref_assessment_form_section_identification_system_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk__ref_assessment_form_section_identification_system PRIMARY KEY ( ref_assessment_form_section_identification_system_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_form_section_identification_system IS 'A coding scheme that is used for identification of an Assessment Form Section. [CEDS Element: Identification System for Assessment Form Section, ID:001190]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_form_section_identification_system.ref_assessment_form_section_identification_system_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_form_section_identification_system.description IS 'A coding scheme that is used for identification of an Assessment Form Section. [CEDS Element: Identification System for Assessment Form Section, ID:001190]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_form_section_identification_system.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_form_section_identification_system.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_item_response_score_status ( 
	ref_assessment_item_response_score_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_item_response_score_status PRIMARY KEY ( ref_assessment_item_response_score_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_item_response_score_status IS 'The status of scoring a person''s response to an assessment item.[CEDS Element: Assessment Item Response Score Status, ID:001538]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_response_score_status.ref_assessment_item_response_score_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_response_score_status.description IS 'The status of scoring a person''s response to an assessment item. [CEDS Element: Assessment Item Response Score Status, ID:001538]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_response_score_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_response_score_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_item_type ( 
	ref_assessment_item_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk__ref_assessment_item_type PRIMARY KEY ( ref_assessment_item_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_item_type IS 'The specific type of assessment item. [CEDS Element: Assessment Item Type, ID:000390]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_type.ref_assessment_item_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_type.description IS 'The specific type of assessment item. [CEDS Element: Assessment Item Type, ID:000390]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_item_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_need_braille_grade_type ( 
	ref_assessment_need_braille_grade_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_assessment_need_braille_grade_type_id PRIMARY KEY ( ref_assessment_need_braille_grade_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_need_braille_grade_type IS 'Defines as part of an Assessment Personal Needs Profile the grade of Braille to use when using a Braille display. [CEDS Element: Assessment Need Braille Grade Type, ID:001032]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_braille_grade_type.ref_assessment_need_braille_grade_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_braille_grade_type.description IS 'Defines as part of an Assessment Personal Needs Profile the grade of Braille to use when using a Braille display. [CEDS Element: Assessment Need Braille Grade Type, ID:001032]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_braille_grade_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_braille_grade_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_need_braille_status_cell_type ( 
	ref_assessment_need_braille_status_cell_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_braille_status_cell_type PRIMARY KEY ( ref_assessment_need_braille_status_cell_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_need_braille_status_cell_type IS 'Defines as part of an Assessment Personal Needs Profile the preferred presence or location of a Braille display status cell. [CEDS Element: Assessment Need Braille Status Cell Type, ID:001037]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_braille_status_cell_type.ref_assessment_need_braille_status_cell_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_braille_status_cell_type.description IS 'Defines as part of an Assessment Personal Needs Profile the preferred presence or location of a Braille display status cell. [CEDS Element: Assessment Need Braille Status Cell Type, ID:001037]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_braille_status_cell_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_braille_status_cell_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_need_increased_whitespacing_type ( 
	ref_assessment_need_increased_whitespacing_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_increased_whitespacing_type PRIMARY KEY ( ref_assessment_need_increased_whitespacing_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_need_increased_whitespacing_type IS 'Defines the user preferences for white spacing in lines, words and characters as part of an Assessment Personal Needs Profile. [CEDS Element: Assessment Need Increased Whitespacing Type, ID:001054]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_increased_whitespacing_type.ref_assessment_need_increased_whitespacing_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_increased_whitespacing_type.description IS 'Defines the user preferences for white spacing in lines, words and characters as part of an Assessment Personal Needs Profile. [CEDS Element: Assessment Need Increased Whitespacing Type, ID:001054]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_increased_whitespacing_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_increased_whitespacing_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_need_masking_type ( 
	ref_assessment_need_masking_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_display_masking_type PRIMARY KEY ( ref_assessment_need_masking_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_need_masking_type IS 'Specifies as part of an Assessment Personal Needs Profile the type of masks the user is able to create  to cover portions of the question until needed. [CEDS Element: Assessment Need Masking Type, ID:001046]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_masking_type.ref_assessment_need_masking_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_masking_type.description IS 'Specifies as part of an Assessment Personal Needs Profile the type of masks the user is able to create  to cover portions of the question until needed. [CEDS Element: Assessment Need Masking Type, ID:001046]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_masking_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_masking_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_need_signing_type ( 
	ref_assessment_need_signing_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_signing_type PRIMARY KEY ( ref_assessment_need_signing_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_need_signing_type IS 'Defines as part of an Assessment Personal Needs Profile the type of signing preferred by the user. [CEDS Element: Assessment Need Signing Type, ID:001040]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_signing_type.ref_assessment_need_signing_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_signing_type.description IS 'Defines as part of an Assessment Personal Needs Profile the type of signing preferred by the user. [CEDS Element: Assessment Need Signing Type, ID:001040]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_signing_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_signing_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_need_support_tool ( 
	ref_assessment_need_support_tool_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_support_tool PRIMARY KEY ( ref_assessment_need_support_tool_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_need_support_tool IS 'Defines as part of an Assessment Personal Needs Profile the electronic tool associated with a resource. [CEDS Element: Assessment Need Support Tool Type, ID:001025]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_support_tool.ref_assessment_need_support_tool_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_support_tool.description IS 'Defines as part of an Assessment Personal Needs Profile the electronic tool associated with a resource. [CEDS Element: Assessment Need Support Tool Type, ID:001025]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_support_tool.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_support_tool.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_need_user_spoken_preference_type ( 
	ref_assessment_need_user_spoken_preference_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_need_user_spoken_preference_type PRIMARY KEY ( ref_assessment_need_user_spoken_preference_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_need_user_spoken_preference_type IS 'Used as part of an Assessment Personal Needs Profile to define the type of material that should be rendered using the read aloud alternative content. [CEDS Element: Assessment Need User Spoken Preference Type, ID:001044]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_user_spoken_preference_type.ref_assessment_need_user_spoken_preference_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_user_spoken_preference_type.description IS 'Used as part of an Assessment Personal Needs Profile to define the type of material that should be rendered using the read aloud alternative content. [CEDS Element: Assessment Need User Spoken Preference Type, ID:001044]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_user_spoken_preference_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_need_user_spoken_preference_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_platform_type ( 
	ref_assessment_platform_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk__ref_assesessment_platform_type PRIMARY KEY ( ref_assessment_platform_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_platform_type IS 'The platform with which the assessment was delivered to the student during the assessment session. [CEDS Element: Assessment Participant Session Platform Type, ID:000386]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_platform_type.ref_assessment_platform_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_platform_type.description IS 'The platform with which the assessment was delivered to the student during the assessment session. [CEDS Element: Assessment Participant Session Platform Type, ID:000386]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_platform_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_platform_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_purpose ( 
	ref_assessment_purpose_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_purpose PRIMARY KEY ( ref_assessment_purpose_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_purpose IS 'The reason for which an assessment is designed or delivered. [CEDS Element: Assessment Purpose, ID:000026]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_purpose.ref_assessment_purpose_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_purpose.description IS 'The reason for which an assessment is designed or delivered. [CEDS Element: Assessment Purpose, ID:000026]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_purpose.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_purpose.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_reason_not_tested ( 
	ref_assessment_reason_not_tested_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_reason_not_tested PRIMARY KEY ( ref_assessment_reason_not_tested_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_reason_not_tested IS 'The primary reason a student is not tested. [CEDS Element: Reason Not Tested, ID:000228]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_reason_not_tested.ref_assessment_reason_not_tested_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_reason_not_tested.description IS 'The primary reason a student is not tested. [CEDS Element: Reason Not Tested, ID:000228]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_reason_not_tested.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_reason_not_tested.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_reporting_method ( 
	ref_assessment_reporting_method_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_reporting_method PRIMARY KEY ( ref_assessment_reporting_method_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_reporting_method IS 'The method used to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. In some cases, more than one type of reporting method may be used. ';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_reporting_method.ref_assessment_reporting_method_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_reporting_method.description IS 'The method used to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. In some cases, more than one type of reporting method may be used. ';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_reporting_method.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_reporting_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_result_score_type ( 
	ref_assessment_result_score_type_id integer  NOT NULL,
	description        varchar(150)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_result_score_type PRIMARY KEY ( ref_assessment_result_score_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_result_score_type IS 'Indicates the purpose for which this assessment score instance was recorded.[CEDS Element: Assessment Result Score Type, ID:001547]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_result_score_type.ref_assessment_result_score_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_result_score_type.description IS 'Indicates the purpose for which this assessment score instance was recorded. [CEDS Element: Assessment Result Score Type, ID:001547]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_result_score_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_result_score_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_session_staff_role_type ( 
	ref_assessment_session_staff_role_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_sesstion_staff_role_type PRIMARY KEY ( ref_assessment_session_staff_role_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_session_staff_role_type IS 'The type of role served related to the administration of an assessment session. [CEDS Element: Assessment Session Staff Role Type, ID:001212]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_session_staff_role_type.ref_assessment_session_staff_role_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_session_staff_role_type.description IS 'The type of role served related to the administration of an assessment session. [CEDS Element: Assessment Session Staff Role Type, ID:001212]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_session_staff_role_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_session_staff_role_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_subtest_identifier_type ( 
	ref_assessment_subtest_identifier_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_subtest_identifier_type PRIMARY KEY ( ref_assessment_subtest_identifier_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_subtest_identifier_type IS 'The type of identifier that is provided for a Subtest. [CEDS Element: Assessment Subtest Identifier Type, ID:001014]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_subtest_identifier_type.ref_assessment_subtest_identifier_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_subtest_identifier_type.description IS 'The type of identifier that is provided for a Subtest. [CEDS Element: Assessment Subtest Identifier Type, ID:001014]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_subtest_identifier_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_subtest_identifier_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_assessment_type_children_with_disabilities ( 
	ref_assessment_type_children_with_disabilities_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_assessment_type_children_with_disabilities PRIMARY KEY ( ref_assessment_type_children_with_disabilities_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_assessment_type_children_with_disabilities IS 'The types of assessments administered to children with disabilities. [CEDS Element: Assessment Type Administered to Children With Disabilities, ID:000415]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_type_children_with_disabilities.ref_assessment_type_children_with_disabilities_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_type_children_with_disabilities.description IS 'The types of assessments administered to children with disabilities. [CEDS Element: Assessment Type Administered to Children With Disabilities, ID:000415]';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_type_children_with_disabilities.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_assessment_type_children_with_disabilities.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_attendance_status ( 
	ref_attendance_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_attendance_status PRIMARY KEY ( ref_attendance_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_attendance_status IS 'The status of a person''s attendance associated with an Attendance Event Type, Calendar Event Date, in an organization-person-role context. [CEDS Element: Attendance Status, ID:000076]';

COMMENT ON COLUMN ceds6sc_rdx.ref_attendance_status.ref_attendance_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_attendance_status.description IS 'The status of a person''s attendance associated with an Attendance Event Type, Calendar Event Date, in an organization-person-role context. [CEDS Element: Attendance Status, ID:000076]';

COMMENT ON COLUMN ceds6sc_rdx.ref_attendance_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_attendance_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_barrier_to_educating_homeless ( 
	ref_barrier_to_educating_homeless_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_barrier_to_educating_homeless PRIMARY KEY ( ref_barrier_to_educating_homeless_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_barrier_to_educating_homeless IS 'Barriers to the enrollment and success of homeless children and youths. [CEDS Element: Barrier to Educating Homeless, ID:000449]';

COMMENT ON COLUMN ceds6sc_rdx.ref_barrier_to_educating_homeless.ref_barrier_to_educating_homeless_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_barrier_to_educating_homeless.description IS 'Barriers to the enrollment and success of homeless children and youths. [CEDS Element: Barrier to Educating Homeless, ID:000449]';

COMMENT ON COLUMN ceds6sc_rdx.ref_barrier_to_educating_homeless.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_barrier_to_educating_homeless.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_blended_learning_model_type ( 
	ref_blended_learning_model_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_blended_learning_model_type PRIMARY KEY ( ref_blended_learning_model_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_blended_learning_model_type IS 'A type of formal education program in which a student learns at least in part through online learning, with some element of student control over time, place, path, and/or pace; at least in part in a supervised brick-and-mortar location away from home; and the modalities along each student’s learning path within a course or subject are connected to provide an integrated learning experience. [CEDS Element: Blended Learning Model Type, ID:001287]';

COMMENT ON COLUMN ceds6sc_rdx.ref_blended_learning_model_type.ref_blended_learning_model_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_blended_learning_model_type.description IS 'A type of formal education program in which a student learns at least in part through online learning, with some element of student control over time, place, path, and/or pace; at least in part in a supervised brick-and-mortar location away from home; and the modalities along each student’s learning path within a course or subject are connected to provide an integrated learning experience. [CEDS Element: Blended Learning Model Type, ID:001287]';

COMMENT ON COLUMN ceds6sc_rdx.ref_blended_learning_model_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_blended_learning_model_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_building_use_type ( 
	ref_building_use_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_building_use_type PRIMARY KEY ( ref_building_use_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_building_use_type IS 'How a building is principally used, regardless of its original design. [CEDS Element: Building Use Type, ID:001206]';

COMMENT ON COLUMN ceds6sc_rdx.ref_building_use_type.ref_building_use_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_building_use_type.description IS 'How a building is principally used, regardless of its original design. [CEDS Element: Building Use Type, ID:001206]';

COMMENT ON COLUMN ceds6sc_rdx.ref_building_use_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_building_use_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_campus_residency_type ( 
	ref_campus_residency_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_campus_residency_type PRIMARY KEY ( ref_campus_residency_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_campus_residency_type IS 'A person''s residency arrangement as defined in the Free Application for Federal Student Aid (FAFSA). [CEDS Element: Campus Residency Type, ID:000035]';

COMMENT ON COLUMN ceds6sc_rdx.ref_campus_residency_type.ref_campus_residency_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_campus_residency_type.description IS 'A person''s residency arrangement as defined in the Free Application for Federal Student Aid (FAFSA). [CEDS Element: Campus Residency Type, ID:000035]';

COMMENT ON COLUMN ceds6sc_rdx.ref_campus_residency_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_campus_residency_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_career_education_plan_type ( 
	ref_career_education_plan_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_career_education_plan_type PRIMARY KEY ( ref_career_education_plan_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_career_education_plan_type IS 'An indicator of whether a student completed an individualized guidance and counseling plan. [CEDS Element: Career Education Plan Type, ID:001290]';

COMMENT ON COLUMN ceds6sc_rdx.ref_career_education_plan_type.ref_career_education_plan_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_career_education_plan_type.description IS 'An indicator of whether a student completed an individualized guidance and counseling plan. [CEDS Element: Career Education Plan Type, ID:001290]';

COMMENT ON COLUMN ceds6sc_rdx.ref_career_education_plan_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_career_education_plan_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_charter_school_approval_agency_type ( 
	ref_charter_school_approval_agency_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_charter_school_approval_agency_type PRIMARY KEY ( ref_charter_school_approval_agency_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_charter_school_approval_agency_type IS 'The type of agency that approved the establishment or continuation of a charter school. [CEDS Element: Charter School Approval Agency Type, ID:001292]';

COMMENT ON COLUMN ceds6sc_rdx.ref_charter_school_approval_agency_type.ref_charter_school_approval_agency_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_charter_school_approval_agency_type.description IS 'The type of agency that approved the establishment or continuation of a charter school. [CEDS Element: Charter School Approval Agency Type, ID:001292]';

COMMENT ON COLUMN ceds6sc_rdx.ref_charter_school_approval_agency_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_charter_school_approval_agency_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_charter_school_type ( 
	ref_charter_school_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_charter_school_type PRIMARY KEY ( ref_charter_school_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_charter_school_type IS 'The category of charter school. [CEDS Element: Charter School Type, ID:000710]';

COMMENT ON COLUMN ceds6sc_rdx.ref_charter_school_type.ref_charter_school_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_charter_school_type.description IS 'The category of charter school. [CEDS Element: Charter School Type, ID:000710]';

COMMENT ON COLUMN ceds6sc_rdx.ref_charter_school_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_charter_school_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_child_developmental_screening_status ( 
	ref_child_developmental_screening_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_child_developmental_screening_status PRIMARY KEY ( ref_child_developmental_screening_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_child_developmental_screening_status IS 'The result of a brief standardized screening tool aiding in the identification of children at risk of a developmental delay/disorder. [CEDS Element: Child Developmental Screening Status, ID:000314]';

COMMENT ON COLUMN ceds6sc_rdx.ref_child_developmental_screening_status.ref_child_developmental_screening_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_child_developmental_screening_status.description IS 'The result of a brief standardized screening tool aiding in the identification of children at risk of a developmental delay/disorder. [CEDS Element: Child Developmental Screening Status, ID:000314]';

COMMENT ON COLUMN ceds6sc_rdx.ref_child_developmental_screening_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_child_developmental_screening_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_cip_code ( 
	ref_cip_code_id    integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_cip_code PRIMARY KEY ( ref_cip_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_cip_code IS 'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions. [CEDS Element: Classification of Instructional Program Code, ID:000043]';

COMMENT ON COLUMN ceds6sc_rdx.ref_cip_code.ref_cip_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_cip_code.description IS 'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions. [CEDS Element: Classification of Instructional Program Code, ID:000043]';

COMMENT ON COLUMN ceds6sc_rdx.ref_cip_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_cip_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_cip_version ( 
	ref_cip_version_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_cip_version PRIMARY KEY ( ref_cip_version_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_cip_version IS 'The version of CIP being reported. [CEDS Element: Classification of Instructional Program Version, ID:000045]';

COMMENT ON COLUMN ceds6sc_rdx.ref_cip_version.ref_cip_version_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_cip_version.description IS 'The version of CIP being reported. [CEDS Element: Classification of Instructional Program Version, ID:000045]';

COMMENT ON COLUMN ceds6sc_rdx.ref_cip_version.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_cip_version.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_cohort_exclusion ( 
	ref_cohort_exclusion_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_cohort_exclusion PRIMARY KEY ( ref_cohort_exclusion_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_cohort_exclusion IS 'Those persons who may be removed (deleted) from a cohort (or subcohort). For the Graduation Rates and Fall Enrollment retention rate reporting, persons may be removed from a cohort if they left the institution for one of the following reasons: death or total and permanent disability; service in the armed forces (including those called to active duty); service with a foreign aid service of the federal government, such as the Peace Corps; or service on official church missions. [CEDS Element: Cohort Exclusion, ID:000106]';

COMMENT ON COLUMN ceds6sc_rdx.ref_cohort_exclusion.ref_cohort_exclusion_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_cohort_exclusion.description IS 'Those persons who may be removed (deleted) from a cohort (or subcohort). For the Graduation Rates and Fall Enrollment retention rate reporting, persons may be removed from a cohort if they left the institution for one of the following reasons: death or total and permanent disability; service in the armed forces (including those called to active duty); service with a foreign aid service of the federal government, such as the Peace Corps; or service on official church missions. [CEDS Element: Cohort Exclusion, ID:000106]';

COMMENT ON COLUMN ceds6sc_rdx.ref_cohort_exclusion.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_cohort_exclusion.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_community_based_type ( 
	ref_community_based_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_community_based_type PRIMARY KEY ( ref_community_based_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_community_based_type IS 'Non domestic residence in which the early learning setting is located.[CEDS Element: Community-based Type, ID:001633]';

COMMENT ON COLUMN ceds6sc_rdx.ref_community_based_type.ref_community_based_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_community_based_type.description IS 'Non domestic residence in which the early learning setting is located. [CEDS Element: Community-based Type, ID:001633]';

COMMENT ON COLUMN ceds6sc_rdx.ref_community_based_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_community_based_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_content_standard_type ( 
	ref_content_standard_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_content_standard_type PRIMARY KEY ( ref_content_standard_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_content_standard_type IS 'An indication as to whether an assessment conforms to a standard. [CEDS Element: Assessment Content Standard Type, ID:000605]';

COMMENT ON COLUMN ceds6sc_rdx.ref_content_standard_type.ref_content_standard_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_content_standard_type.description IS 'An indication as to whether an assessment conforms to a standard. [CEDS Element: Assessment Content Standard Type, ID:000605]';

COMMENT ON COLUMN ceds6sc_rdx.ref_content_standard_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_content_standard_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_control_of_institution ( 
	ref_control_of_institution_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_control_of_institution PRIMARY KEY ( ref_control_of_institution_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_control_of_institution IS 'A classification of whether a postsecondary institution is operated by publicly elected or appointed officials (public control) or by privately elected or appointed officials and derives its major source of funds from private sources (private control).  [CEDS Element: Control of Institution, ID:000048]';

COMMENT ON COLUMN ceds6sc_rdx.ref_control_of_institution.ref_control_of_institution_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_control_of_institution.description IS 'A classification of whether a postsecondary institution is operated by publicly elected or appointed officials (public control) or by privately elected or appointed officials and derives its major source of funds from private sources (private control).  [CEDS Element: Control of Institution, ID:000048]';

COMMENT ON COLUMN ceds6sc_rdx.ref_control_of_institution.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_control_of_institution.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_correctional_education_facility_type ( 
	ref_correctional_education_facility_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_correctional_education_facility_type PRIMARY KEY ( ref_correctional_education_facility_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_correctional_education_facility_type IS 'The type of facility in which an inmate receives correctional education services. [CEDS Element: Correctional Education Facility Type, ID:001296]';

COMMENT ON COLUMN ceds6sc_rdx.ref_correctional_education_facility_type.ref_correctional_education_facility_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_correctional_education_facility_type.description IS 'The type of facility in which an inmate receives correctional education services. [CEDS Element: Correctional Education Facility Type, ID:001296]';

COMMENT ON COLUMN ceds6sc_rdx.ref_correctional_education_facility_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_correctional_education_facility_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_country ( 
	ref_country_id     integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_country PRIMARY KEY ( ref_country_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_country IS 'The country in which an address is located. [CEDS Element: Country Code, ID:000050]';

COMMENT ON COLUMN ceds6sc_rdx.ref_country.ref_country_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_country.description IS 'Country Name';

COMMENT ON COLUMN ceds6sc_rdx.ref_country.code IS 'The unique two character International Organization for Standardization (ISO) code for the country in which an address is located. [CEDS Element: Country Code, ID:000050]';

COMMENT ON COLUMN ceds6sc_rdx.ref_country.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_academic_grade_status_code ( 
	ref_course_academic_grade_status_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_academic_grade_status_code PRIMARY KEY ( ref_course_academic_grade_status_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_academic_grade_status_code IS 'Additional information regarding the context of the given grade. [CEDS Element: Course Academic Grade Status Code, ID:001299]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_academic_grade_status_code.ref_course_academic_grade_status_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_academic_grade_status_code.description IS 'Additional information regarding the context of the given grade. [CEDS Element: Course Academic Grade Status Code, ID:001299]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_academic_grade_status_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_academic_grade_status_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_credit_basis_type ( 
	ref_course_credit_basis_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_credit_basis_type PRIMARY KEY ( ref_course_credit_basis_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_credit_basis_type IS 'The type of enrollment associated with the credit hours for the course. [CEDS Element: Course Credit Basis Type, ID:001303]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_credit_basis_type.ref_course_credit_basis_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_credit_basis_type.description IS 'The type of enrollment associated with the credit hours for the course. [CEDS Element: Course Credit Basis Type, ID:001303]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_credit_basis_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_credit_basis_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_credit_unit ( 
	ref_course_credit_unit_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_credit_unit PRIMARY KEY ( ref_course_credit_unit_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_credit_unit IS 'The type of credit (unit, semester, or quarter) associated with the credit hours earned for the course.  [CEDS Element: Course Credit Units, ID:000057]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_credit_unit.ref_course_credit_unit_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_credit_unit.description IS 'The type of credit (unit, semester, or quarter) associated with the credit hours earned for the course.  [CEDS Element: Course Credit Units, ID:000057]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_credit_unit.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_credit_unit.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_honors_type ( 
	ref_course_honors_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_honors_type PRIMARY KEY ( ref_course_honors_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_honors_type IS 'An indication that the course is or can be counted as an honors course. [CEDS Element: Course Honors Type, ID:001307]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_honors_type.ref_course_honors_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_honors_type.description IS 'An indication that the course is or can be counted as an honors course. [CEDS Element: Course Honors Type, ID:001307]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_honors_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_honors_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_instruction_site_type ( 
	ref_course_instruction_site_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_instruction_site_type PRIMARY KEY ( ref_course_instruction_site_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_instruction_site_type IS 'An indication of the type of location at which the course is taught. [CEDS Element: Course Instruction Site Type, ID:001310]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_instruction_site_type.ref_course_instruction_site_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_instruction_site_type.description IS 'An indication of the type of location at which the course is taught. [CEDS Element: Course Instruction Site Type, ID:001310]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_instruction_site_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_instruction_site_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_level_characteristic ( 
	ref_course_level_characteristic_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_level_characteristic PRIMARY KEY ( ref_course_level_characteristic_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_level_characteristic IS 'An indication of the general nature and difficulty of instruction provided throughout a course. [CEDS Element: Course Level Characteristic, ID:000061]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_level_characteristic.ref_course_level_characteristic_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_level_characteristic.description IS 'An indication of the general nature and difficulty of instruction provided throughout a course. [CEDS Element: Course Level Characteristic, ID:000061]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_level_characteristic.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_level_characteristic.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_repeat_code ( 
	ref_course_repeat_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_repeat_code PRIMARY KEY ( ref_course_repeat_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_repeat_code IS 'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average. [CEDS Element: Course Repeat Code, ID:000065]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_repeat_code.ref_course_repeat_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_repeat_code.description IS 'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average. [CEDS Element: Course Repeat Code, ID:000065]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_repeat_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_repeat_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_section_delivery_mode ( 
	ref_course_section_delivery_mode_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_section_delivery_mode PRIMARY KEY ( ref_course_section_delivery_mode_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_section_delivery_mode IS 'The primary setting or medium of delivery for the course. [CEDS Element: Course Section Instructional Delivery Mode, ID:001161]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_delivery_mode.ref_course_section_delivery_mode_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_delivery_mode.description IS 'The primary setting or medium of delivery for the course. [CEDS Element: Course Section Instructional Delivery Mode, ID:001161]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_delivery_mode.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_delivery_mode.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_course_section_entry_type ( 
	ref_course_section_entry_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_course_section_entry_type PRIMARY KEY ( ref_course_section_entry_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_course_section_entry_type IS 'The process by which a student enters a school (Course Section) during a given academic session. [CEDS Element: Course Section Entry Type, ID:000650]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_entry_type.ref_course_section_entry_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_entry_type.description IS 'The process by which a student enters a school (Course Section) during a given academic session. [CEDS Element: Course Section Entry Type, ID:000650]';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_entry_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_course_section_entry_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_credential_type ( 
	ref_credential_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_credential PRIMARY KEY ( ref_credential_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_credential_type IS 'The category of credential a person holds. [CEDS Element: Credential Type, ID:000071]';

COMMENT ON COLUMN ceds6sc_rdx.ref_credential_type.ref_credential_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_credential_type.description IS 'An indication of the category of credential a person holds. [CEDS Element: Credential Type, ID:000071]';

COMMENT ON COLUMN ceds6sc_rdx.ref_credential_type.code IS 'A code or abbreviation code for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_credential_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_credit_type_earned ( 
	ref_credit_type_earned_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_credit_type_earned PRIMARY KEY ( ref_credit_type_earned_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_credit_type_earned IS 'The type of credits or units of value awarded for the completion of a course. [CEDS Element: Credit Type Earned, ID:000072]';

COMMENT ON COLUMN ceds6sc_rdx.ref_credit_type_earned.ref_credit_type_earned_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_credit_type_earned.description IS 'The type of credits or units of value awarded for the completion of a course. [CEDS Element: Credit Type Earned, ID:000072]';

COMMENT ON COLUMN ceds6sc_rdx.ref_credit_type_earned.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_credit_type_earned.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_cte_graduation_rate_inclusion ( 
	ref_cte_graduation_rate_inclusion_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_cte_graduation_rate_inclusion PRIMARY KEY ( ref_cte_graduation_rate_inclusion_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_cte_graduation_rate_inclusion IS 'An indication of how CTE concentrators are included in the state''s computation of its graduation rate. [CEDS Element: Career and Technical Education Graduation Rate Inclusion, ID:000075]';

COMMENT ON COLUMN ceds6sc_rdx.ref_cte_graduation_rate_inclusion.ref_cte_graduation_rate_inclusion_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_cte_graduation_rate_inclusion.description IS 'An indication of how CTE concentrators are included in the state''s computation of its graduation rate. [CEDS Element: Career and Technical Education Graduation Rate Inclusion, ID:000075]';

COMMENT ON COLUMN ceds6sc_rdx.ref_cte_graduation_rate_inclusion.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_cte_graduation_rate_inclusion.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_curriculum_framework_type ( 
	ref_curriculum_framework_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_curriculum_framework_type PRIMARY KEY ( ref_curriculum_framework_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_curriculum_framework_type IS 'An indication of the standard curriculum used for this course. [CEDS Element: Curriculum Framework Type, ID:000712]';

COMMENT ON COLUMN ceds6sc_rdx.ref_curriculum_framework_type.ref_curriculum_framework_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_curriculum_framework_type.description IS 'An indication of the standard curriculum used for this course. [CEDS Element: Curriculum Framework Type, ID:000712]';

COMMENT ON COLUMN ceds6sc_rdx.ref_curriculum_framework_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_curriculum_framework_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_degree_or_certificate_type ( 
	ref_degree_or_certificate_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_degree_or_certificate_type PRIMARY KEY ( ref_degree_or_certificate_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_degree_or_certificate_type IS 'The type of degree or certificate earned by a person. [CEDS Element: Degree or Certificate Type, ID:000343]';

COMMENT ON COLUMN ceds6sc_rdx.ref_degree_or_certificate_type.ref_degree_or_certificate_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_degree_or_certificate_type.description IS 'The type of degree or certificate earned by a person. [CEDS Element: Degree or Certificate Type, ID:000343]';

COMMENT ON COLUMN ceds6sc_rdx.ref_degree_or_certificate_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_degree_or_certificate_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_dental_screening_status ( 
	ref_dental_screening_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_dental_screen PRIMARY KEY ( ref_dental_screening_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_dental_screening_status IS 'The condition of a person''s mouth or oral cavity; more specifically the condition of the hard tissues (i.e., teeth and jaws) and the soft tissues (i.e., gums, tongue, lips, palate, mouth floor, and inner cheeks). Good oral health denotes the absence of clinically manifested disease or abnormalities of the oral cavity. [CEDS Element: Dental Screening Status, ID:000310]';

COMMENT ON COLUMN ceds6sc_rdx.ref_dental_screening_status.ref_dental_screening_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_dental_screening_status.description IS 'The condition of a person''s mouth or oral cavity; more specifically the condition of the hard tissues (i.e., teeth and jaws) and the soft tissues (i.e., gums, tongue, lips, palate, mouth floor, and inner cheeks). Good oral health denotes the absence of clinically manifested disease or abnormalities of the oral cavity. [CEDS Element: Dental Screening Status, ID:000310]';

COMMENT ON COLUMN ceds6sc_rdx.ref_dental_screening_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_dental_screening_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_developmental_education_referral_status ( 
	ref_developmental_education_referral_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_developmental_education_referral_status PRIMARY KEY ( ref_developmental_education_referral_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_developmental_education_referral_status IS 'The status of a student''s referral to or placement into  developmental education.[CEDS Element: Developmental Education Referral Status, ID:001588]';

COMMENT ON COLUMN ceds6sc_rdx.ref_developmental_education_referral_status.ref_developmental_education_referral_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_developmental_education_referral_status.description IS 'The status of a student''s referral to or placement into  developmental education. [CEDS Element: Developmental Education Referral Status, ID:001588]';

COMMENT ON COLUMN ceds6sc_rdx.ref_developmental_education_referral_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_developmental_education_referral_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_developmental_evaluation_finding ( 
	ref_developmental_evaluation_finding_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_developmental_evaluation_finding PRIMARY KEY ( ref_developmental_evaluation_finding_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_developmental_evaluation_finding IS 'Child developmental delay/disability determined by procedure used by appropriate qualified personnel. [CEDS Element: Developmental Evaluation Finding, ID:000315]';

COMMENT ON COLUMN ceds6sc_rdx.ref_developmental_evaluation_finding.ref_developmental_evaluation_finding_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_developmental_evaluation_finding.description IS 'Child developmental delay/disability determined by procedure used by appropriate qualified personnel. [CEDS Element: Developmental Evaluation Finding, ID:000315]';

COMMENT ON COLUMN ceds6sc_rdx.ref_developmental_evaluation_finding.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_developmental_evaluation_finding.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_disability_condition_status_code ( 
	ref_disability_condition_status_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_disability_condition_status_code PRIMARY KEY ( ref_disability_condition_status_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_disability_condition_status_code IS 'A code indicating the disability condition status. [CEDS Element: Disability Condition Status Type, ID:001319]';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_condition_status_code.ref_disability_condition_status_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_condition_status_code.description IS 'A code indicating the disability condition status. [CEDS Element: Disability Condition Status Type, ID:001319]';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_condition_status_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_condition_status_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_disability_determination_source_type ( 
	ref_disability_determination_source_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_disability_determination_source_type PRIMARY KEY ( ref_disability_determination_source_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_disability_determination_source_type IS 'Codes identifying the set of disability determination sources. [CEDS Element: Disability Determination Source Type, ID:001321]';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_determination_source_type.ref_disability_determination_source_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_determination_source_type.description IS 'Codes identifying the set of disability determination sources. [CEDS Element: Disability Determination Source Type, ID:001321]';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_determination_source_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_disability_determination_source_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_disciplinary_action_taken ( 
	ref_disciplinary_action_taken_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_disciplinary_action_taken PRIMARY KEY ( ref_disciplinary_action_taken_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_disciplinary_action_taken IS 'Identifies the consequences of an incident for the student(s) involved in an incident as perpetrator(s). [CEDS Element: Disciplinary Action Taken, ID:000488]';

COMMENT ON COLUMN ceds6sc_rdx.ref_disciplinary_action_taken.ref_disciplinary_action_taken_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_disciplinary_action_taken.description IS 'Identifies the consequences of an incident for the student(s) involved in an incident as perpetrator(s). [CEDS Element: Disciplinary Action Taken, ID:000488]';

COMMENT ON COLUMN ceds6sc_rdx.ref_disciplinary_action_taken.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_disciplinary_action_taken.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_discipline_method_firearms ( 
	ref_discipline_method_firearms_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_discine_method_firearms PRIMARY KEY ( ref_discipline_method_firearms_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_discipline_method_firearms IS 'The method used to discipline students who are not children with disabilities (IDEA) involved in firearms and other outcomes of firearms incidents. [CEDS Element: Discipline Method for Firearms Incidents, ID:000555]';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_method_firearms.ref_discipline_method_firearms_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_method_firearms.description IS 'The method used to discipline students who are not children with disabilities (IDEA) involved in firearms and other outcomes of firearms incidents. [CEDS Element: Discipline Method for Firearms Incidents, ID:000555]';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_method_firearms.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_method_firearms.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_discipline_reason ( 
	ref_discipline_reason_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_discipline_reason PRIMARY KEY ( ref_discipline_reason_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_discipline_reason IS 'The reason why the student was disciplined. [CEDS Element: Discipline Reason, ID:000545]';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_reason.ref_discipline_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_reason.description IS 'The reason why the student was disciplined. [CEDS Element: Discipline Reason, ID:000545]';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_reason.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_discipline_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_doctoral_exams_required_code ( 
	ref_doctoral_exams_required_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_doctoral_exams_required_code PRIMARY KEY ( ref_doctoral_exams_required_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_doctoral_exams_required_code IS 'A qualifier identifying the types of exams required of doctoral level individuals. [CEDS Element: Doctoral Exams Required Code, ID:001327]';

COMMENT ON COLUMN ceds6sc_rdx.ref_doctoral_exams_required_code.ref_doctoral_exams_required_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_doctoral_exams_required_code.description IS 'A qualifier identifying the types of exams required of doctoral level individuals. [CEDS Element: Doctoral Exams Required Code, ID:001327]';

COMMENT ON COLUMN ceds6sc_rdx.ref_doctoral_exams_required_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_doctoral_exams_required_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_employment_separation_reason ( 
	ref_el_employment_separation_reason_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_employment_separation_reason PRIMARY KEY ( ref_el_employment_separation_reason_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_employment_separation_reason IS 'The primary reason for the termination of the employment relationship.[CEDS Element: Early Learning Employment Separation Reason, ID:001632]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_employment_separation_reason.ref_el_employment_separation_reason_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_employment_separation_reason.description IS 'The primary reason for the termination of the employment relationship. [CEDS Element: Early Learning Employment Separation Reason, ID:001632]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_employment_separation_reason.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_employment_separation_reason.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_federal_funding_type ( 
	ref_el_federal_funding_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_federal_funding_type PRIMARY KEY ( ref_el_federal_funding_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_federal_funding_type IS 'Federal source that contributes to the EL program [CEDS Element: Early Learning Federal Funding Type, ID:001328]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_federal_funding_type.ref_el_federal_funding_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_federal_funding_type.description IS 'Federal source that contributes to the EL program [CEDS Element: Early Learning Federal Funding Type, ID:001328]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_federal_funding_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_federal_funding_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_level_of_specialization ( 
	ref_el_level_of_specialization_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_level_of_specialization PRIMARY KEY ( ref_el_level_of_specialization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_level_of_specialization IS 'The extent to which a person concentrates upon a particular subject matter area during his or her period of study at an educational institution. [CEDS Element: Level of Specialization in Early Learning, ID:000341]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_level_of_specialization.ref_el_level_of_specialization_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_level_of_specialization.description IS 'The extent to which a person concentrates upon a particular subject matter area during his or her period of study at an educational institution. [CEDS Element: Level of Specialization in Early Learning, ID:000341]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_level_of_specialization.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_level_of_specialization.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_other_federal_funding_sources ( 
	ref_el_other_federal_funding_sources_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_other_federal_funding_sources PRIMARY KEY ( ref_el_other_federal_funding_sources_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_other_federal_funding_sources IS 'The other contributing funding sources. [CEDS Element: Early Learning Other Federal Funding Sources, ID:001335]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_other_federal_funding_sources.ref_el_other_federal_funding_sources_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_other_federal_funding_sources.description IS 'The other contributing funding sources. [CEDS Element: Early Learning Other Federal Funding Sources, ID:001335]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_other_federal_funding_sources.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_other_federal_funding_sources.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_professional_development_topic_area ( 
	ref_el_professional_development_topic_area_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_professional_development_topic_area PRIMARY KEY ( ref_el_professional_development_topic_area_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_professional_development_topic_area IS 'The topical area of competence needed for  professional development. [CEDS Element: Early Learning Professional Development Topic Area, ID:001337]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_professional_development_topic_area.ref_el_professional_development_topic_area_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_professional_development_topic_area.description IS 'The topical area of competence needed for  professional development. [CEDS Element: Early Learning Professional Development Topic Area, ID:001337]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_professional_development_topic_area.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_professional_development_topic_area.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_program_eligibility_status ( 
	ref_el_program_eligibility_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_program_eligibility_status PRIMARY KEY ( ref_el_program_eligibility_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_program_eligibility_status IS 'The status of eligibility for the child. [CEDS Element: Early Learning Program Eligibility Status, ID:001339]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_program_eligibility_status.ref_el_program_eligibility_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_program_eligibility_status.description IS 'The status of eligibility for the child. [CEDS Element: Early Learning Program Eligibility Status, ID:001339]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_program_eligibility_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_program_eligibility_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_service_professional_staff_classification ( 
	ref_el_service_professional_staff_classification_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_service_professional_staff_classification PRIMARY KEY ( ref_el_service_professional_staff_classification_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_service_professional_staff_classification IS 'The title/role of employment, official status, or rank of early learning service professionals[CEDS Element: Early Learning Service Professional Staff Classification, ID:001636]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_service_professional_staff_classification.ref_el_service_professional_staff_classification_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_service_professional_staff_classification.description IS 'The title/role of employment, official status, or rank of early learning service professionals [CEDS Element: Early Learning Service Professional Staff Classification, ID:001636]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_service_professional_staff_classification.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_service_professional_staff_classification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_el_state_revenue_source ( 
	ref_el_state_revenue_source_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_el_state_revenue_source PRIMARY KEY ( ref_el_state_revenue_source_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_el_state_revenue_source IS ' Funds that originate at the State, and not from a federal or local source, that contribute to EL program.[CEDS Element: Early Learning State Revenue Source, ID:001605]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_state_revenue_source.ref_el_state_revenue_source_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_state_revenue_source.description IS ' Funds that originate at the State, and not from a federal or local source, that contribute to EL program. [CEDS Element: Early Learning State Revenue Source, ID:001605]';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_state_revenue_source.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_el_state_revenue_source.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_eradministrative_data_source ( 
	ref_eradministrative_data_source_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_eradministrative_data_source PRIMARY KEY ( ref_eradministrative_data_source_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_eradministrative_data_source IS 'Administrative data source of information used to collect employment and earnings-related data. [CEDS Element: Employment Record Administrative Data Source, ID:000994]';

COMMENT ON COLUMN ceds6sc_rdx.ref_eradministrative_data_source.ref_eradministrative_data_source_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_eradministrative_data_source.description IS 'Administrative data source of information used to collect employment and earnings-related data. [CEDS Element: Employment Record Administrative Data Source, ID:000994]';

COMMENT ON COLUMN ceds6sc_rdx.ref_eradministrative_data_source.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_eradministrative_data_source.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_early_childhood_credential ( 
	ref_early_childhood_credential_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_early_childhood_credential PRIMARY KEY ( ref_early_childhood_credential_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_early_childhood_credential IS 'The credential related to early childhood education or development held by a person. [CEDS Element: Early Childhood Credential, ID:000345]';

COMMENT ON COLUMN ceds6sc_rdx.ref_early_childhood_credential.ref_early_childhood_credential_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_early_childhood_credential.description IS 'The credential related to early childhood education or development held by a person. [CEDS Element: Early Childhood Credential, ID:000345]';

COMMENT ON COLUMN ceds6sc_rdx.ref_early_childhood_credential.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_early_childhood_credential.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_early_childhood_services ( 
	ref_early_childhood_services_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_early_childhood_services PRIMARY KEY ( ref_early_childhood_services_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_early_childhood_services IS 'The types of service that adapts the curriculum, materials, or instruction for students identified as needing additional resources. [CEDS Element: Early Childhood Services Offered (001553), Early Childhood Services Received (000321)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_early_childhood_services.ref_early_childhood_services_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_early_childhood_services.description IS 'The types of service that adapts the curriculum, materials, or instruction for students identified as needing additional resources. [CEDS Element: Early Childhood Services Offered (001553), Early Childhood Services Received (000321)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_early_childhood_services.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_early_childhood_services.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_education_level_type ( 
	ref_education_level_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_education_level_type PRIMARY KEY ( ref_education_level_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_education_level_type IS 'List of identification system types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_education_level_type.ref_education_level_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_education_level_type.description IS 'List of education level types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_education_level_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_education_level_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_elementary_middle_additional ( 
	ref_elementary_middle_additional_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_elementary_middle_additional PRIMARY KEY ( ref_elementary_middle_additional_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_elementary_middle_additional IS 'An indication of whether the school or district met the Elementary/Middle Additional Indicator requirement in accordance with state definition for the purpose of determining Adequate Yearly Progress (AYP). [CEDS Element: Elementary-Middle Additional Indicator Status, ID:000091]';

COMMENT ON COLUMN ceds6sc_rdx.ref_elementary_middle_additional.ref_elementary_middle_additional_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_elementary_middle_additional.description IS 'An indication of whether the school or district met the Elementary/Middle Additional Indicator requirement in accordance with state definition for the purpose of determining Adequate Yearly Progress (AYP). [CEDS Element: Elementary-Middle Additional Indicator Status, ID:000091]';

COMMENT ON COLUMN ceds6sc_rdx.ref_elementary_middle_additional.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_elementary_middle_additional.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_employed_after_exit ( 
	ref_employed_after_exit_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_employed_after_exit PRIMARY KEY ( ref_employed_after_exit_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_employed_after_exit IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, after exiting secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed After Exit, ID:000988]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employed_after_exit.ref_employed_after_exit_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_employed_after_exit.description IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, after exiting secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed After Exit, ID:000988]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employed_after_exit.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_employed_after_exit.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_employed_while_enrolled ( 
	ref_employed_while_enrolled_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_employed_while_enrolled PRIMARY KEY ( ref_employed_while_enrolled_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_employed_while_enrolled IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, and at the same time is enrolled in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed While Enrolled, ID:000987]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employed_while_enrolled.ref_employed_while_enrolled_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_employed_while_enrolled.description IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, and at the same time is enrolled in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed While Enrolled, ID:000987]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employed_while_enrolled.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_employed_while_enrolled.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_employment_separation_type ( 
	ref_employment_separation_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_employment_separation_type PRIMARY KEY ( ref_employment_separation_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_employment_separation_type IS 'A designation of the type of separation occurring between a person and the organization. [CEDS Element: Employment Separation Type, ID:000621]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_separation_type.ref_employment_separation_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_separation_type.description IS 'A designation of the type of separation occurring between a person and the organization. [CEDS Element: Employment Separation Type, ID:000621]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_separation_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_separation_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_employment_status_while_enrolled ( 
	ref_employment_status_while_enrolled_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_employment_status_while_enrolled PRIMARY KEY ( ref_employment_status_while_enrolled_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_employment_status_while_enrolled IS 'An indication of the individual''s employment status while enrolled. [CEDS Element: Employment Status While Enrolled, ID:001343]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_status_while_enrolled.ref_employment_status_while_enrolled_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_status_while_enrolled.description IS 'An indication of the individual''s employment status while enrolled. [CEDS Element: Employment Status While Enrolled, ID:001343]';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_status_while_enrolled.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_employment_status_while_enrolled.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_enrollment_status ( 
	ref_enrollment_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_enrollment_status PRIMARY KEY ( ref_enrollment_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_enrollment_status IS 'An indication as to whether a student''s name was, is, or will be officially registered on the roll of a school or schools. [CEDS Element: Enrollment Status, ID:000094]';

COMMENT ON COLUMN ceds6sc_rdx.ref_enrollment_status.ref_enrollment_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_enrollment_status.description IS 'An indication as to whether a student''s name was, is, or will be officially registered on the roll of a school or schools. [CEDS Element: Enrollment Status, ID:000094]';

COMMENT ON COLUMN ceds6sc_rdx.ref_enrollment_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_enrollment_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_entry_type ( 
	ref_entry_type_id  integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_entry_type PRIMARY KEY ( ref_entry_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_entry_type IS 'The process by which a student enters a school during a given academic session. [CEDS Element: Entry Type, ID:000099]';

COMMENT ON COLUMN ceds6sc_rdx.ref_entry_type.ref_entry_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_entry_type.description IS 'The process by which a student enters a school during a given academic session. [CEDS Element: Entry Type, ID:000099]';

COMMENT ON COLUMN ceds6sc_rdx.ref_entry_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_entry_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_exit_or_withdrawal_status ( 
	ref_exit_or_withdrawal_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_exit_or_withdrawel_status PRIMARY KEY ( ref_exit_or_withdrawal_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_exit_or_withdrawal_status IS 'An indication as to whether an instance of student exit/withdrawal is considered to be of a permanent or temporary nature. [CEDS Element: Exit or Withdrawal Status, ID:000108]';

COMMENT ON COLUMN ceds6sc_rdx.ref_exit_or_withdrawal_status.ref_exit_or_withdrawal_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_exit_or_withdrawal_status.description IS 'An indication as to whether an instance of student exit/withdrawal is considered to be of a permanent or temporary nature. [CEDS Element: Exit or Withdrawal Status, ID:000108]';

COMMENT ON COLUMN ceds6sc_rdx.ref_exit_or_withdrawal_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_exit_or_withdrawal_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_family_income_source ( 
	ref_family_income_source_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_family_income_source PRIMARY KEY ( ref_family_income_source_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_family_income_source IS 'Sources of total family income. [CEDS Element: Source of Family Income, ID:000333]';

COMMENT ON COLUMN ceds6sc_rdx.ref_family_income_source.ref_family_income_source_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_family_income_source.description IS 'Sources of total family income. [CEDS Element: Source of Family Income, ID:000333]';

COMMENT ON COLUMN ceds6sc_rdx.ref_family_income_source.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_family_income_source.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_financial_account_balance_sheet_code ( 
	ref_financial_balance_sheet_account_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_balance_sheet_account_code PRIMARY KEY ( ref_financial_balance_sheet_account_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_financial_account_balance_sheet_code IS 'Balance sheet accounts and statement of net asset accounts are used to track financial transactions for each fund. Such financial statements report assets, liabilities, and equity accounts only and are considered snapshots of how these accounts stand as of a certain point in time.  Based on codes specified in the NCES Handbook financial accounting for local and state school systems: 2009 edition. [CEDS Element: Financial Account Balance Sheet Code, ID:001353]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_balance_sheet_code.ref_financial_balance_sheet_account_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_balance_sheet_code.description IS 'Balance sheet accounts and statement of net asset accounts are used to track financial transactions for each fund. Such financial statements report assets, liabilities, and equity accounts only and are considered snapshots of how these accounts stand as of a certain point in time.  Based on codes specified in the NCES Handbook financial accounting for local and state school systems: 2009 edition. [CEDS Element: Financial Account Balance Sheet Code, ID:001353]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_balance_sheet_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_balance_sheet_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_financial_account_fund_classification ( 
	ref_financial_account_fund_classification_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_account_fund_classification PRIMARY KEY ( ref_financial_account_fund_classification_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_financial_account_fund_classification IS 'A separate fiscal and accounting entity with a self-balancing set of accounts recording cash and other financial resources, together with all related liabilities and residual equities or balances, or changes therein. [CEDS Element: Financial Account Fund Classification, ID:001347]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_fund_classification.ref_financial_account_fund_classification_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_fund_classification.description IS 'A separate fiscal and accounting entity with a self-balancing set of accounts recording cash and other financial resources, together with all related liabilities and residual equities or balances, or changes therein. [CEDS Element: Financial Account Fund Classification, ID:001347]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_fund_classification.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_fund_classification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_financial_account_revenue_code ( 
	ref_financial_account_revenue_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_revenue_account_code PRIMARY KEY ( ref_financial_account_revenue_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_financial_account_revenue_code IS 'Codes are for recording revenue and other receivables by source. Based on codes specified in the NCES Handbook financial accounting for local and state school systems: 2009 edition [CEDS Element: Financial Account Revenue Code, ID:001468]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_revenue_code.ref_financial_account_revenue_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_revenue_code.description IS 'Codes are for recording revenue and other receivables by source. Based on codes specified in the NCES Handbook financial accounting for local and state school systems: 2009 edition [CEDS Element: Financial Account Revenue Code, ID:001468]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_revenue_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_account_revenue_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_financial_aid_award_status ( 
	ref_financial_aid_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_financial_aid_award_status PRIMARY KEY ( ref_financial_aid_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_financial_aid_award_status IS 'An indication of whether the financial aid type being reported is aid that has been awarded, accepted or dispersed. [CEDS Element: Financial Aid Award Status, ID:000363]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_award_status.ref_financial_aid_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_award_status.description IS 'An indication of whether the financial aid type being reported is aid that has been awarded, accepted or dispersed. [CEDS Element: Financial Aid Award Status, ID:000363]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_award_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_award_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_financial_aid_veterans_benefit_status ( 
	ref_financial_aid_veterans_benefit_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_aid_veterans_benefit_status PRIMARY KEY ( ref_financial_aid_veterans_benefit_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_financial_aid_veterans_benefit_status IS 'An indication of whether a person is receiving Veteran''s benefits.[CEDS Element: Financial Aid Veteran’s Benefit Status, ID:001609]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_veterans_benefit_status.ref_financial_aid_veterans_benefit_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_veterans_benefit_status.description IS 'An indication of whether a person is receiving Veteran''s benefits. [CEDS Element: Financial Aid Veteran’s Benefit Status, ID:001609]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_veterans_benefit_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_aid_veterans_benefit_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_financial_expenditure_function_code ( 
	ref_financial_expenditure_function_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_expenditure_function_code PRIMARY KEY ( ref_financial_expenditure_function_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_financial_expenditure_function_code IS 'The function describes the activity for which a service or material object is acquired. The functions of a school district are classified into five broad areas: instruction, support services, operation of non-instructional services, facilities acquisition and construction, and debt service.  Functions are further classified into sub functions. [CEDS Element: Financial Expenditure Function Code, ID:001354]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_expenditure_function_code.ref_financial_expenditure_function_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_expenditure_function_code.description IS 'The function describes the activity for which a service or material object is acquired. The functions of a school district are classified into five broad areas: instruction, support services, operation of non-instructional services, facilities acquisition and construction, and debt service.  Functions are further classified into sub functions. [CEDS Element: Financial Expenditure Function Code, ID:001354]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_expenditure_function_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_expenditure_function_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_financial_expenditure_object_code ( 
	ref_financial_expenditure_object_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_financial_expenditure_object_code PRIMARY KEY ( ref_financial_expenditure_object_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_financial_expenditure_object_code IS 'This classification is used to describe the service or commodity obtained as the result of a specific expenditure. [CEDS Element: Financial Expenditure Object Code, ID:001355]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_expenditure_object_code.ref_financial_expenditure_object_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_expenditure_object_code.description IS 'This classification is used to describe the service or commodity obtained as the result of a specific expenditure. [CEDS Element: Financial Expenditure Object Code, ID:001355]';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_expenditure_object_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_financial_expenditure_object_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_food_service_eligibility ( 
	ref_food_service_eligibility_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction   integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_food_service_eligibility PRIMARY KEY ( ref_food_service_eligibility_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_food_service_eligibility IS 'An indication of a student''s level of eligibility to participate in the National School Lunch Program for breakfast, lunch, snack, supper, and milk programs. [CEDS Element: Eligibility Status for School Food Service Programs, ID:000092]';

COMMENT ON COLUMN ceds6sc_rdx.ref_food_service_eligibility.ref_food_service_eligibility_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_food_service_eligibility.description IS 'An indication of a student''s level of eligibility to participate in the National School Lunch Program for breakfast, lunch, snack, supper, and milk programs. [CEDS Element: Eligibility Status for School Food Service Programs, ID:000092]';

COMMENT ON COLUMN ceds6sc_rdx.ref_food_service_eligibility.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_food_service_eligibility.ref_jurisdiction IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_frequency_of_service ( 
	ref_frequency_of_service_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_frequency_of_service PRIMARY KEY ( ref_frequency_of_service_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_frequency_of_service IS 'The frequency at which a service is planned to occur. [CEDS Element: Frequency of Service, ID:001356]';

COMMENT ON COLUMN ceds6sc_rdx.ref_frequency_of_service.ref_frequency_of_service_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_frequency_of_service.description IS 'The frequency at which a service is planned to occur. [CEDS Element: Frequency of Service, ID:001356]';

COMMENT ON COLUMN ceds6sc_rdx.ref_frequency_of_service.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_frequency_of_service.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_goals_for_attending_adult_education ( 
	ref_goals_for_attending_adult_education_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_goals_for_attending_adult_education PRIMARY KEY ( ref_goals_for_attending_adult_education_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_goals_for_attending_adult_education IS 'A person''s reasons for attending an adult education class or program. [CEDS Element: Goals for Attending Adult Education, ID:001079]';

COMMENT ON COLUMN ceds6sc_rdx.ref_goals_for_attending_adult_education.ref_goals_for_attending_adult_education_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_goals_for_attending_adult_education.description IS 'A person''s reasons for attending an adult education class or program. [CEDS Element: Goals for Attending Adult Education, ID:001079]';

COMMENT ON COLUMN ceds6sc_rdx.ref_goals_for_attending_adult_education.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_goals_for_attending_adult_education.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_grade_level ( 
	ref_grade_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	ref_grade_level_type_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_grade PRIMARY KEY ( ref_grade_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_grade_level IS 'Grade levels offered by educational institutions. [CEDS Elements: Assessment Registration Grade Level When Assessed (	001057), Entry Grade Level (000100), Exit Grade Level (001210), Grade Level When Assessed (000126), Grade Level When Course Taken (000125)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_grade_level.ref_grade_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_grade_level.description IS 'Grade levels offered by educational institutions. [CEDS Elements: Assessment Registration Grade Level When Assessed (001057), Entry Grade Level (000100), Exit Grade Level (001210), Grade Level When Assessed (000126), Grade Level When Course Taken (000125), Assessment Level for Which Designed (000177), Grades Offered (000131)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_grade_level.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_grade_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_grade_point_average_domain ( 
	ref_grade_point_average_domain_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_grade_point_average_domain PRIMARY KEY ( ref_grade_point_average_domain_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_grade_point_average_domain IS 'The domain to which the Grade Point Average is referencing. [CEDS Element: Grade Point Average Domain, ID:000758]';

COMMENT ON COLUMN ceds6sc_rdx.ref_grade_point_average_domain.ref_grade_point_average_domain_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_grade_point_average_domain.description IS 'The domain to which the Grade Point Average is referencing. [CEDS Element: Grade Point Average Domain, ID:000758]';

COMMENT ON COLUMN ceds6sc_rdx.ref_grade_point_average_domain.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_grade_point_average_domain.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_graduate_or_doctoral_exam_results_status ( 
	ref_graduate_or_doctoral_exam_results_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_graduate_or_doctoral_exam_results_status PRIMARY KEY ( ref_graduate_or_doctoral_exam_results_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_graduate_or_doctoral_exam_results_status IS 'The individual''s status in completing exams required for graduate or doctoral degree programs. [CEDS Element: Graduate or Doctoral Exam Results Status, ID:001357]';

COMMENT ON COLUMN ceds6sc_rdx.ref_graduate_or_doctoral_exam_results_status.ref_graduate_or_doctoral_exam_results_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_graduate_or_doctoral_exam_results_status.description IS 'The individual''s status in completing exams required for graduate or doctoral degree programs. [CEDS Element: Graduate or Doctoral Exam Results Status, ID:001357]';

COMMENT ON COLUMN ceds6sc_rdx.ref_graduate_or_doctoral_exam_results_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_graduate_or_doctoral_exam_results_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_health_insurance_coverage ( 
	ref_health_insurance_coverage_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_insurance PRIMARY KEY ( ref_health_insurance_coverage_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_health_insurance_coverage IS 'The nature of insurance covering a person''s hospitalization and other health or medical care. [CEDS Element: Insurance Coverage, ID:000335]';

COMMENT ON COLUMN ceds6sc_rdx.ref_health_insurance_coverage.ref_health_insurance_coverage_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_health_insurance_coverage.description IS 'The nature of insurance covering an person''s hospitalization and other health or medical care. [CEDS Element: Insurance Coverage, ID:000335]';

COMMENT ON COLUMN ceds6sc_rdx.ref_health_insurance_coverage.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_health_insurance_coverage.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_high_school_diploma_distinction_type ( 
	ref_high_school_diploma_distinction_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_hsdiploma_distinction_type PRIMARY KEY ( ref_high_school_diploma_distinction_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_high_school_diploma_distinction_type IS 'The distinction of the diploma or credential that is awarded to a student in recognition of their completion of the curricular requirements. [CEDS Element: High School Diploma Distinction Type, ID:000713]';

COMMENT ON COLUMN ceds6sc_rdx.ref_high_school_diploma_distinction_type.ref_high_school_diploma_distinction_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_high_school_diploma_distinction_type.description IS 'The distinction of the diploma or credential that is awarded to a student in recognition of their completion of the curricular requirements. [CEDS Element: High School Diploma Distinction Type, ID:000713]';

COMMENT ON COLUMN ceds6sc_rdx.ref_high_school_diploma_distinction_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_high_school_diploma_distinction_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_high_school_graduation_rate_indicator ( 
	ref_hsgraduation_rate_indicator_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_hsgraduation_rate_indicator PRIMARY KEY ( ref_hsgraduation_rate_indicator_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_high_school_graduation_rate_indicator IS 'An indication of whether the school or district met the High School Graduation Rate requirement in accordance with state definition for the purposes of determining AYP. [CEDS Element: High School Graduation Rate Indicator Status, ID:000140]';

COMMENT ON COLUMN ceds6sc_rdx.ref_high_school_graduation_rate_indicator.ref_hsgraduation_rate_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_high_school_graduation_rate_indicator.description IS 'An indication of whether the school or district met the High School Graduation Rate requirement in accordance with state definition for the purposes of determining AYP. [CEDS Element: High School Graduation Rate Indicator Status, ID:000140]';

COMMENT ON COLUMN ceds6sc_rdx.ref_high_school_graduation_rate_indicator.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_high_school_graduation_rate_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_homeless_nighttime_residence ( 
	ref_homeless_nighttime_residence_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_homeless_nighttime_residence PRIMARY KEY ( ref_homeless_nighttime_residence_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_homeless_nighttime_residence IS 'The primary nighttime residence of the students at the time the students are identified as homeless. [CEDS Element: Homeless Primary Nighttime Residence, ID:000146]';

COMMENT ON COLUMN ceds6sc_rdx.ref_homeless_nighttime_residence.ref_homeless_nighttime_residence_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_homeless_nighttime_residence.description IS 'The primary nighttime residence of the students at the time the students are identified as homeless. [CEDS Element: Homeless Primary Nighttime Residence, ID:000146]';

COMMENT ON COLUMN ceds6sc_rdx.ref_homeless_nighttime_residence.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_homeless_nighttime_residence.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_idea_educational_environment_ec ( 
	ref_idea_educational_environment_ecid integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_idea_educational_environment_ec PRIMARY KEY ( ref_idea_educational_environment_ecid )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_idea_educational_environment_ec IS 'The program in which children ages 3 through 5 attend and in which these children receive special education and related services. [CEDS Element: IDEA Educational Environment for Early Childhood, ID:000559]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_educational_environment_ec.ref_idea_educational_environment_ecid IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_educational_environment_ec.description IS 'The program in which children ages 3 through 5 attend and in which these children receive special education and related services. [CEDS Element: IDEA Educational Environment for Early Childhood, ID:000559]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_educational_environment_ec.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_educational_environment_ec.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_idea_environment_el ( 
	ref_idea_environment_el_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_idea_environment_el PRIMARY KEY ( ref_idea_environment_el_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_idea_environment_el IS 'The program in which children ages 3 through 5 attend and in which these children receive special education and related services. [CEDS Element: IDEA Educational Environment for Early Childhood, ID:000559]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_environment_el.ref_idea_environment_el_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_environment_el.description IS 'The program in which children ages 3 through 5 attend and in which these children receive special education and related services. [CEDS Element: IDEA Educational Environment for Early Childhood, ID:000559]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_environment_el.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_environment_el.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_idea_interim_removal ( 
	ref_idea_interim_removal_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_idea_interim_removal_id PRIMARY KEY ( ref_idea_interim_removal_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_idea_interim_removal IS 'The type of interim removal from current educational setting experienced by children with disabilities (IDEA). [CEDS Element: IDEA Interim Removal, ID:000541]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_interim_removal.ref_idea_interim_removal_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_interim_removal.description IS 'The type of interim removal from current educational setting experienced by children with disabilities (IDEA). [CEDS Element: IDEA Interim Removal, ID:000541]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_interim_removal.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_interim_removal.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_idea_part_c_eligibility_category ( 
	ref_idea_part_c_eligibility_category_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_idea_part_c_eligibility_category PRIMARY KEY ( ref_idea_part_c_eligibility_category_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_idea_part_c_eligibility_category IS 'The category under which a person under 3 years of age is eligible for early intervention services under IDEA Part C.[CEDS Element: IDEA Part C Eligibility Category, ID:001656]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_part_c_eligibility_category.ref_idea_part_c_eligibility_category_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_part_c_eligibility_category.description IS 'The category under which a person under 3 years of age is eligible for early intervention services under IDEA Part C. [CEDS Element: IDEA Part C Eligibility Category, ID:001656]';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_part_c_eligibility_category.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_idea_part_c_eligibility_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_iso6393_language ( 
	ref_iso6393_language_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_iso6393_language PRIMARY KEY ( ref_iso6393_language_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_iso6393_language IS 'The code for the specific language or dialect that a person uses to communicate.[CEDS Element: ISO 639-3 Language Code, ID:001637]';

COMMENT ON COLUMN ceds6sc_rdx.ref_iso6393_language.ref_iso6393_language_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_iso6393_language.description IS 'The code for the specific language or dialect that a person uses to communicate. [CEDS Element: ISO 639-3 Language Code, ID:001637]';

COMMENT ON COLUMN ceds6sc_rdx.ref_iso6393_language.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_iso6393_language.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_immunization_type ( 
	ref_immunization_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_immunization_type PRIMARY KEY ( ref_immunization_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_immunization_type IS 'The types of immunizations given to persons.';

COMMENT ON COLUMN ceds6sc_rdx.ref_immunization_type.ref_immunization_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_immunization_type.description IS 'An indication of the type of immunization. (Note: The International Classification of Diseases (ICD) is maintained by the World Health Organization. The ICD is revised periodically to incorporate changes in the medical field, the most updated and detailed list of International Statistical Classification of Diseases and Related Health Problems can be found at http://www.who.int/classifications/apps/icd/icd10online). [CEDS Element: Immunization Type, ID:001248]';

COMMENT ON COLUMN ceds6sc_rdx.ref_immunization_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_immunization_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_incident_behavior_secondary ( 
	ref_incident_behavior_secondary_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_incident_behavior_secondary PRIMARY KEY ( ref_incident_behavior_secondary_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_incident_behavior_secondary IS 'Supplemental information about an incident when the primary offense is more serious in nature than alcohol or drug, etc. offenses. [CEDS Element: Secondary Incident Behavior, ID:000627]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_behavior_secondary.ref_incident_behavior_secondary_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_behavior_secondary.description IS 'Supplemental information about an incident when the primary offense is more serious in nature than alcohol or drug, etc. offenses. [CEDS Element: Secondary Incident Behavior, ID:000627]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_behavior_secondary.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_behavior_secondary.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_incident_location ( 
	ref_incident_location_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_inciddent_location PRIMARY KEY ( ref_incident_location_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_incident_location IS 'Identifies where the incident occurred and whether or not it occurred on campus. [CEDS Element: Incident Location, ID:000617]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_location.ref_incident_location_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_location.description IS 'Identifies where the incident occurred and whether or not it occurred on campus. [CEDS Element: Incident Location, ID:000617]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_location.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_location.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_incident_perpetrator_injury_type ( 
	ref_incident_perpetrator_injury_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_incident_perpetrator_injury_type PRIMARY KEY ( ref_incident_perpetrator_injury_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_incident_perpetrator_injury_type IS 'An indication of the occurrence of physical injury to the perpetrator(s) (participants) involved in the incident and‚ if so‚ the level of injury sustained. [CEDS Element: Incident Perpetrator Injury Type, ID:001371]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_perpetrator_injury_type.ref_incident_perpetrator_injury_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_perpetrator_injury_type.description IS 'An indication of the occurrence of physical injury to the perpetrator(s) (participants) involved in the incident and‚ if so‚ the level of injury sustained. [CEDS Element: Incident Perpetrator Injury Type, ID:001371]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_perpetrator_injury_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_perpetrator_injury_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_incident_person_type ( 
	ref_incident_person_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_incident_person_type PRIMARY KEY ( ref_incident_person_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_incident_person_type IS 'Information on the type of individual who was involved in an incident. [CEDS Elements: Incident Perpetrator Type (001372), Incident Witness Type (001380), Incident Victim Type (001378)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_person_type.ref_incident_person_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_person_type.description IS 'Information on the type of individual who was involved in an incident. [CEDS Elements: Incident Perpetrator Type (001372), Incident Witness Type (001380), Incident Victim Type (001378)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_person_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_person_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_incident_time_description_code ( 
	ref_incident_time_description_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_incident_time_description_code PRIMARY KEY ( ref_incident_time_description_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_incident_time_description_code IS 'A code for the description of the time of day that an incident took place. [CEDS Element: Incident Time Description Code, ID:000515]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_time_description_code.ref_incident_time_description_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_time_description_code.description IS 'A code for the description of the time of day that an incident took place. [CEDS Element: Incident Time Description Code, ID:000515]';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_time_description_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_incident_time_description_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_increased_learning_time_type ( 
	ref_increased_learning_time_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_increased_learning_time_type PRIMARY KEY ( ref_increased_learning_time_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_increased_learning_time_type IS 'The types of increased learning time provided. [CEDS Element: Increased Learning Time Type, ID:000164]';

COMMENT ON COLUMN ceds6sc_rdx.ref_increased_learning_time_type.ref_increased_learning_time_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_increased_learning_time_type.description IS 'The types of increased learning time provided. [CEDS Element: Increased Learning Time Type, ID:000164]';

COMMENT ON COLUMN ceds6sc_rdx.ref_increased_learning_time_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_increased_learning_time_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_individualized_program_location ( 
	ref_individualized_program_location_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_individualized_program_location PRIMARY KEY ( ref_individualized_program_location_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_individualized_program_location IS 'The place in which a child''s service plan meeting is held. [CEDS Element: Individualized Program Service Plan Meeting Location, ID:001237]';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_location.ref_individualized_program_location_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_location.description IS 'The place in which a child''s service plan meeting is held. [CEDS Element: Individualized Program Service Plan Meeting Location, ID:001237]';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_location.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_location.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_individualized_program_transition_type ( 
	ref_individualized_program_transition_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_individualized_program_transition_type PRIMARY KEY ( ref_individualized_program_transition_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_individualized_program_transition_type IS 'The post-school transition plan for the student recorded on their Individualized Education Program. [CEDS Element: Individualized Program Transition Plan Type, ID:001235]';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_transition_type.ref_individualized_program_transition_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_transition_type.description IS 'The post-school transition plan for the student recorded on their Individualized Education Program. [CEDS Element: Individualized Program Transition Plan Type, ID:001235]';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_transition_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_individualized_program_transition_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_institution_telephone_type ( 
	ref_institution_telephone_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_institution_telephone PRIMARY KEY ( ref_institution_telephone_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_institution_telephone_type IS 'The type of communication number listed for an organization. [CEDS Element: Institution Telephone Number Type, ID:000167]';

COMMENT ON COLUMN ceds6sc_rdx.ref_institution_telephone_type.ref_institution_telephone_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_institution_telephone_type.description IS 'The type of communication number listed for an organization. [CEDS Element: Institution Telephone Number Type, ID:000167]';

COMMENT ON COLUMN ceds6sc_rdx.ref_institution_telephone_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_institution_telephone_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_instruction_location_type ( 
	ref_instruction_location_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_instruction_location_type PRIMARY KEY ( ref_instruction_location_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_instruction_location_type IS 'The type of location at which instruction or service takes place. [CEDS Element: Receiving Location of Instruction, ID:000524]';

COMMENT ON COLUMN ceds6sc_rdx.ref_instruction_location_type.ref_instruction_location_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_instruction_location_type.description IS 'The type of location at which instruction or service takes place. [CEDS Element: Receiving Location of Instruction, ID:000524]';

COMMENT ON COLUMN ceds6sc_rdx.ref_instruction_location_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_instruction_location_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_instructional_staff_contract_length ( 
	ref_instructional_staff_contract_length_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_instruct_staff_contract_length PRIMARY KEY ( ref_instructional_staff_contract_length_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_instructional_staff_contract_length IS 'The contracted teaching period for faculty. [CEDS Element: Instructional Staff Contract Length, ID:000735]';

COMMENT ON COLUMN ceds6sc_rdx.ref_instructional_staff_contract_length.ref_instructional_staff_contract_length_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_instructional_staff_contract_length.description IS 'The contracted teaching period for faculty. [CEDS Element: Instructional Staff Contract Length, ID:000735]';

COMMENT ON COLUMN ceds6sc_rdx.ref_instructional_staff_contract_length.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_instructional_staff_contract_length.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_integrated_technology_status ( 
	ref_integrated_technology_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_integrated_technology_status PRIMARY KEY ( ref_integrated_technology_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_integrated_technology_status IS 'An indication of the extent to which the district has effectively and fully integrated technology, as defined by the state. [CEDS Element: Integrated Technology Status, ID:000170]';

COMMENT ON COLUMN ceds6sc_rdx.ref_integrated_technology_status.ref_integrated_technology_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_integrated_technology_status.description IS 'An indication of the extent to which the district has effectively and fully integrated technology, as defined by the state. [CEDS Element: Integrated Technology Status, ID:000170]';

COMMENT ON COLUMN ceds6sc_rdx.ref_integrated_technology_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_integrated_technology_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ipeds_occupational_category ( 
	ref_ipeds_occupational_category_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ipedsoccupational_category PRIMARY KEY ( ref_ipeds_occupational_category_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ipeds_occupational_category IS 'The Integrated Postsecondary Education Data System (IPEDS) occupational categories used to report employees. [CEDS Element: IPEDS Occupational Category, ID:000731]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ipeds_occupational_category.ref_ipeds_occupational_category_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ipeds_occupational_category.description IS 'The Integrated Postsecondary Education Data System (IPEDS) occupational categories used to report employees. [CEDS Element: IPEDS Occupational Category, ID:000731]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ipeds_occupational_category.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ipeds_occupational_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_item_response_theory_kappa_algorithm ( 
	ref_item_response_theory_kappa_algorithm_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_item_response_theory_kappa_algorithm PRIMARY KEY ( ref_item_response_theory_kappa_algorithm_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_item_response_theory_kappa_algorithm IS 'The algorithm used to derive the Assessment Item Kappa Value [CEDS Element: Assessment Item Response Theory Kappa Algorithm, ID:001266]';

COMMENT ON COLUMN ceds6sc_rdx.ref_item_response_theory_kappa_algorithm.ref_item_response_theory_kappa_algorithm_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_item_response_theory_kappa_algorithm.description IS 'The algorithm used to derive the Assessment Item Kappa Value [CEDS Element: Assessment Item Response Theory Kappa Algorithm, ID:001266]';

COMMENT ON COLUMN ceds6sc_rdx.ref_item_response_theory_kappa_algorithm.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_item_response_theory_kappa_algorithm.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_k12_lea_title_i_support_service ( 
	ref_k12_lea_title_i_support_service_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_k12_lea_title_i_support_service PRIMARY KEY ( ref_k12_lea_title_i_support_service_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_k12_lea_title_i_support_service IS 'The type of support services provided to students in Title I programs. [CEDS Element: Title I Support Services, ID:000289]';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_lea_title_i_support_service.ref_k12_lea_title_i_support_service_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_lea_title_i_support_service.description IS 'The type of support services provided to students in Title I programs. [CEDS Element: Title I Support Services, ID:000289]';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_lea_title_i_support_service.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_lea_title_i_support_service.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_k12_staff_classification ( 
	ref_education_staff_classification_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_education_staff_classification PRIMARY KEY ( ref_education_staff_classification_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_k12_staff_classification IS 'The titles of employment, official status, or rank of education staff. [CEDS Element: K12 Staff Classification, ID:000087]';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_staff_classification.ref_education_staff_classification_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_staff_classification.description IS 'The titles of employment, official status, or rank of education staff. [CEDS Element: K12 Staff Classification, ID:000087]';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_staff_classification.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_k12_staff_classification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_language_use_type ( 
	ref_language_use_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_language_use_type PRIMARY KEY ( ref_language_use_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_language_use_type IS 'An indication of the function and context in which a person uses a language to communicate. [CEDS Element: Language Type, ID:000316]';

COMMENT ON COLUMN ceds6sc_rdx.ref_language_use_type.ref_language_use_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_language_use_type.description IS 'An indication of the function and context in which a person uses a language to communicate. [CEDS Element: Language Type, ID:000316]';

COMMENT ON COLUMN ceds6sc_rdx.ref_language_use_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_language_use_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_lea_improvement_status ( 
	ref_lea_improvement_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_lea_improvement_status PRIMARY KEY ( ref_lea_improvement_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_lea_improvement_status IS 'An indication of the improvement stage for AYP of the local education agency (LEA). [CEDS Element: Local Education Agency Improvement Status, ID:000173]';

COMMENT ON COLUMN ceds6sc_rdx.ref_lea_improvement_status.ref_lea_improvement_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_lea_improvement_status.description IS 'An indication of the improvement stage for AYP of the local education agency (LEA). [CEDS Element: Local Education Agency Improvement Status, ID:000173]';

COMMENT ON COLUMN ceds6sc_rdx.ref_lea_improvement_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_lea_improvement_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learner_action_type ( 
	ref_learner_action_type_id integer  NOT NULL,
	description        varchar(150)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk__ref_learner_action_type PRIMARY KEY ( ref_learner_action_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learner_action_type IS 'The type of action taken by the learner. [CEDS Element: Learner Action Type, ID:000934]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learner_action_type.ref_learner_action_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learner_action_type.description IS 'The type of action taken by the learner. [CEDS Element: Learner Action Type, ID:000934]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learner_action_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learner_action_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learner_activity_type ( 
	ref_learner_activity_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learner_activity_type PRIMARY KEY ( ref_learner_activity_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learner_activity_type IS 'The type of work assigned to the learner. [CEDS Element: Learner Activity Type, ID:000942]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learner_activity_type.ref_learner_activity_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learner_activity_type.description IS 'The type of work assigned to the learner. [CEDS Element: Learner Activity Type, ID:000942]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learner_activity_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learner_activity_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_access_hazard_type ( 
	ref_learning_resource_access_hazard_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_access_hazard_type PRIMARY KEY ( ref_learning_resource_access_hazard_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_access_hazard_type IS 'A characteristic of the described learning resource that is physiologically dangerous to some users. [CEDS Element: Learning Resource Access Hazard Type, ID:001390]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_hazard_type.ref_learning_resource_access_hazard_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_hazard_type.description IS 'A characteristic of the described learning resource that is physiologically dangerous to some users. [CEDS Element: Learning Resource Access Hazard Type, ID:001390]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_hazard_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_hazard_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_access_rights_url ( 
	ref_learning_resource_access_rights_url_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_access_rights_url PRIMARY KEY ( ref_learning_resource_access_rights_url_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_access_rights_url IS 'A Uniform Resource Locator (URL) that identifies the conditions that govern the user’s ability to access a learning resource.[CEDS Element: Learning Resource Access Rights Url, ID:001561]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_rights_url.ref_learning_resource_access_rights_url_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_rights_url.description IS 'A Uniform Resource Locator (URL) that identifies the conditions that govern the user’s ability to access a learning resource. [CEDS Element: Learning Resource Access Rights Url, ID:001561]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_rights_url.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_access_rights_url.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_book_format_type ( 
	ref_learning_resource_book_format_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_book_format_type PRIMARY KEY ( ref_learning_resource_book_format_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_book_format_type IS 'Specifies the format for a learning resource that is a book.  Other options may be considered for inclusion in the option set. [CEDS Element: Learning Resource Book Format Type, ID:001394]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_book_format_type.ref_learning_resource_book_format_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_book_format_type.description IS 'Specifies the format for a learning resource that is a book.  Other options may be considered for inclusion in the option set. [CEDS Element: Learning Resource Book Format Type, ID:001394]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_book_format_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_book_format_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_control_flexibility_type ( 
	ref_learning_resource_control_flexibility_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_control_flexibility_type PRIMARY KEY ( ref_learning_resource_control_flexibility_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_control_flexibility_type IS 'Identifies a single input method that is sufficient to control the described learning resource. [CEDS Element: Learning Resource Control Flexibility Type, ID:001395]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_control_flexibility_type.ref_learning_resource_control_flexibility_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_control_flexibility_type.description IS 'Identifies a single input method that is sufficient to control the described learning resource. [CEDS Element: Learning Resource Control Flexibility Type, ID:001395]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_control_flexibility_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_control_flexibility_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_digital_media_type ( 
	ref_learning_resource_digital_media_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_digital_media_type PRIMARY KEY ( ref_learning_resource_digital_media_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_digital_media_type IS 'The media or file type of the digital resource being based on the media types defined by the Internet Assigned Numbers Authority (AINA) at http://www.iana.org/assignments/media-types. [CEDS Element: Learning Resource Digital Media Type, ID:001397]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_digital_media_type.ref_learning_resource_digital_media_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_digital_media_type.description IS 'The media or file type of the digital resource being based on the media types defined by the Internet Assigned Numbers Authority (AINA) at http://www.iana.org/assignments/media-types. [CEDS Element: Learning Resource Digital Media Type, ID:001397]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_digital_media_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_digital_media_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_intended_end_user_role ( 
	ref_learning_resource_intended_end_user_role_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_intended_use PRIMARY KEY ( ref_learning_resource_intended_end_user_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_intended_end_user_role IS 'The individual or group for which the resource was produced. [CEDS Element: Learning Resource Intended End User Role, ID:000923]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_intended_end_user_role.ref_learning_resource_intended_end_user_role_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_intended_end_user_role.description IS 'The individual or group for which the resource was produced. [CEDS Element: Learning Resource Intended End User Role, ID:000923]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_intended_end_user_role.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_intended_end_user_role.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_interactivity_type ( 
	ref_learning_resource_interactivity_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_interactivity_type PRIMARY KEY ( ref_learning_resource_interactivity_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_interactivity_type IS 'The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed. [CEDS Element: Learning Resource Interactivity Type, ID:000927]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_interactivity_type.ref_learning_resource_interactivity_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_interactivity_type.description IS 'The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed. [CEDS Element: Learning Resource Interactivity Type, ID:000927]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_interactivity_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_interactivity_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_resource_physical_media_type ( 
	ref_learning_resource_physical_media_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_resource_physical_media_type PRIMARY KEY ( ref_learning_resource_physical_media_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_resource_physical_media_type IS 'A type of physical media on which the Learning Resource is delivered or available. [CEDS Element: Learning Resource Physical Media Type, ID:001401]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_physical_media_type.ref_learning_resource_physical_media_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_physical_media_type.description IS 'A type of physical media on which the Learning Resource is delivered or available. [CEDS Element: Learning Resource Physical Media Type, ID:001401]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_physical_media_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_resource_physical_media_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_standard_document_publication_status ( 
	ref_learning_standard_document_publication_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_standard_document_publication_status PRIMARY KEY ( ref_learning_standard_document_publication_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_standard_document_publication_status IS 'The publication status of the document. [CEDS Element: Learning Standard Document Publication Status, ID:000698]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_document_publication_status.ref_learning_standard_document_publication_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_document_publication_status.description IS 'The publication status of the document. [CEDS Element: Learning Standard Document Publication Status, ID:000698]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_document_publication_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_document_publication_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_learning_standard_item_node_accessibility_profile ( 
	ref_learning_standard_item_node_accessibility_profile_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_learning_standard_item_node_accessibility_profile PRIMARY KEY ( ref_learning_standard_item_node_accessibility_profile_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_learning_standard_item_node_accessibility_profile IS 'When the Learning Standard Item is used as a node in a learning map, this element supports alternative pathways based on a learner''s accessibility profile.  The type selected indicates which accessibility profile the node is designed to address. [CEDS Element: Learning Standard Item Node Accessibility Profile, ID:001408]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_item_node_accessibility_profile.ref_learning_standard_item_node_accessibility_profile_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_item_node_accessibility_profile.description IS 'When the Learning Standard Item is used as a node in a learning map, this element supports alternative pathways based on a learner''s accessibility profile.  The type selected indicates which accessibility profile the node is designed to address. [CEDS Element: Learning Standard Item Node Accessibility Profile, ID:001408]';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_item_node_accessibility_profile.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_learning_standard_item_node_accessibility_profile.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_leave_event_type ( 
	ref_leave_event_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_leave_event_type PRIMARY KEY ( ref_leave_event_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_leave_event_type IS 'The type of the leave event. [CEDS Element: Leave Event Type, ID:000624]';

COMMENT ON COLUMN ceds6sc_rdx.ref_leave_event_type.ref_leave_event_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_leave_event_type.description IS 'The type of the leave event. [CEDS Element: Leave Event Type, ID:000624]';

COMMENT ON COLUMN ceds6sc_rdx.ref_leave_event_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_leave_event_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_license_exempt ( 
	ref_license_exempt_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_license_exempt PRIMARY KEY ( ref_license_exempt_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_license_exempt IS 'The program or center is legally exempt from licensing. [CEDS Element: License Exempt, ID:000350]';

COMMENT ON COLUMN ceds6sc_rdx.ref_license_exempt.ref_license_exempt_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_license_exempt.description IS 'The program or center is legally exempt from licensing. [CEDS Element: License Exempt, ID:000350]';

COMMENT ON COLUMN ceds6sc_rdx.ref_license_exempt.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_license_exempt.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_magnet_special_program ( 
	ref_magnet_special_program_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_magnet_status PRIMARY KEY ( ref_magnet_special_program_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_magnet_special_program IS 'A school that has been designed: 1) to attract students of different racial/ethnic backgrounds for the purpose of reducing, preventing, or eliminating racial isolation; and/or 2)to provide an academic or social focus on a particular theme (e.g., science/math, performing arts, gifted/talented, career academy or foreign language). [CEDS Element: Magnet or Special Program Emphasis School, ID:000181]';

COMMENT ON COLUMN ceds6sc_rdx.ref_magnet_special_program.ref_magnet_special_program_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_magnet_special_program.description IS 'A school that has been designed: 1) to attract students of different racial/ethnic backgrounds for the purpose of reducing, preventing, or eliminating racial isolation; and/or 2)to provide an academic or social focus on a particular theme (e.g., science/math, performing arts, gifted/talented, career academy or foreign language). [CEDS Element: Magnet or Special Program Emphasis School, ID:000181]';

COMMENT ON COLUMN ceds6sc_rdx.ref_magnet_special_program.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_magnet_special_program.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_mep_enrollment_type ( 
	ref_mep_enrollment_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_mep_enrollment_type PRIMARY KEY ( ref_mep_enrollment_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_mep_enrollment_type IS 'The type of school/migrant education project in which instruction and/or support services are provided. [CEDS Element: Migrant Education Program Enrollment Type, ID:000437]';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_enrollment_type.ref_mep_enrollment_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_enrollment_type.description IS 'The type of school/migrant education project in which instruction and/or support services are provided. [CEDS Element: Migrant Education Program Enrollment Type, ID:000437]';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_enrollment_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_enrollment_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_mep_project_type ( 
	ref_mep_project_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_mep_project_type PRIMARY KEY ( ref_mep_project_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_mep_project_type IS 'Type of project funded in whole or in part by MEP funds. [CEDS Element: Migrant Education Program Project Type, ID:000463]';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_project_type.ref_mep_project_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_project_type.description IS 'Type of project funded in whole or in part by MEP funds. [CEDS Element: Migrant Education Program Project Type, ID:000463]';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_project_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_project_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_mep_session_type ( 
	ref_mep_session_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_mep_session_type PRIMARY KEY ( ref_mep_session_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_mep_session_type IS 'The time of year that a Migrant Education Program operates. [CEDS Element: Migrant Education Program Session Type, ID:000187]';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_session_type.ref_mep_session_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_session_type.description IS 'The time of year that a Migrant Education Program operates. [CEDS Element: Migrant Education Program Session Type, ID:000187]';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_session_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_mep_session_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_method_of_service_delivery ( 
	ref_method_of_service_delivery_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_method_of_service_delivery PRIMARY KEY ( ref_method_of_service_delivery_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_method_of_service_delivery IS 'The method by which the services will be provided. [CEDS Element: Method of Service Delivery, ID:001510]';

COMMENT ON COLUMN ceds6sc_rdx.ref_method_of_service_delivery.ref_method_of_service_delivery_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_method_of_service_delivery.description IS 'The method by which the services will be provided. [CEDS Element: Method of Service Delivery, ID:001510]';

COMMENT ON COLUMN ceds6sc_rdx.ref_method_of_service_delivery.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_method_of_service_delivery.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_military_branch ( 
	ref_military_branch_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(60)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(6,2)  ,
	CONSTRAINT pk_ref_military_branch PRIMARY KEY ( ref_military_branch_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_military_branch IS 'A branch of the U.S. Military applicable for specifying more details when using Military Connected Student Indicator, Military Active Student Indicator,  Military Veteran Student Indicator, and Military Enlistment After Exit elements.[CEDS Element: Military Branch, ID:001640]';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_branch.ref_military_branch_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_branch.description IS 'A branch of the U.S. Military applicable for specifying more details when using Military Connected Student Indicator, Military Active Student Indicator,  Military Veteran Student Indicator, and Military Enlistment After Exit elements. [CEDS Element: Military Branch, ID:001640]';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_branch.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_branch.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_military_veteran_student_indicator ( 
	ref_military_veteran_student_indicator_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_military_veteran_student_indicator PRIMARY KEY ( ref_military_veteran_student_indicator_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_military_veteran_student_indicator IS 'An indication that the student is a veteran who served on Active Duty, in the National Guard, or in the Reserve components of the United States military services[CEDS Element: Military Veteran Student Indicator, ID:001578]';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_veteran_student_indicator.ref_military_veteran_student_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_veteran_student_indicator.description IS 'An indication that the student is a veteran who served on Active Duty, in the National Guard, or in the Reserve components of the United States military services [CEDS Element: Military Veteran Student Indicator, ID:001578]';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_veteran_student_indicator.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_military_veteran_student_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_nces_college_course_map_code ( 
	ref_nces_college_course_map_code_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_nces_college_course_map_code PRIMARY KEY ( ref_nces_college_course_map_code_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_nces_college_course_map_code IS 'A taxonomy system for coding postsecondary courses in NCES research studies. [CEDS Element: NCES College Course Map Code, ID:001414]';

COMMENT ON COLUMN ceds6sc_rdx.ref_nces_college_course_map_code.ref_nces_college_course_map_code_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_nces_college_course_map_code.description IS 'A taxonomy system for coding postsecondary courses in NCES research studies. [CEDS Element: NCES College Course Map Code, ID:001414]';

COMMENT ON COLUMN ceds6sc_rdx.ref_nces_college_course_map_code.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_nces_college_course_map_code.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_naep_math_complexity_level ( 
	ref_naep_math_complexity_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk__ref_naep_math_complexity PRIMARY KEY ( ref_naep_math_complexity_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_naep_math_complexity_level IS 'Complexity levels defined by the National Assessment of Educational Progress (NAEP 2005a Framework). [CEDS Element: NAEP Mathematical Complexity Level, ID:001088]';

COMMENT ON COLUMN ceds6sc_rdx.ref_naep_math_complexity_level.ref_naep_math_complexity_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_naep_math_complexity_level.description IS 'Complexity levels defined by the National Assessment of Educational Progress (NAEP 2005a Framework). [CEDS Element: NAEP Mathematical Complexity Level, ID:001088]';

COMMENT ON COLUMN ceds6sc_rdx.ref_naep_math_complexity_level.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_naep_math_complexity_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_neglected_program_type ( 
	ref_neglected_program_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_neglected_program_type PRIMARY KEY ( ref_neglected_program_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_neglected_program_type IS 'The type of program under ESEA Title I, Part D, Subpart 1 (state programs) or Subpart 2 (LEA). [CEDS Element: Neglected or Delinquent Program Type, ID:000194]';

COMMENT ON COLUMN ceds6sc_rdx.ref_neglected_program_type.ref_neglected_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_neglected_program_type.description IS 'The type of program under ESEA Title I, Part D, Subpart 1 (state programs) or Subpart 2 (LEA). [CEDS Element: Neglected or Delinquent Program Type, ID:000194]';

COMMENT ON COLUMN ceds6sc_rdx.ref_neglected_program_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_neglected_program_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_non_traditional_gender_status ( 
	ref_non_traditional_gender_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_non_traditional_gender_status PRIMARY KEY ( ref_non_traditional_gender_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_non_traditional_gender_status IS 'An indication of whether CTE participants were members of an underrepresented gender group (where one gender comprises less than 25 percent of the persons employed in those occupations or field of work). [CEDS Element: Career Technical Education Nontraditional Gender Status, ID:000588]';

COMMENT ON COLUMN ceds6sc_rdx.ref_non_traditional_gender_status.ref_non_traditional_gender_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_non_traditional_gender_status.description IS 'An indication of whether CTE participants were members of an underrepresented gender group (where one gender comprises less than 25 percent of the persons employed in those occupations or field of work). [CEDS Element: Career Technical Education Nontraditional Gender Status, ID:000588]';

COMMENT ON COLUMN ceds6sc_rdx.ref_non_traditional_gender_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_non_traditional_gender_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_operational_status_type ( 
	ref_operational_status_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_operational_status_type PRIMARY KEY ( ref_operational_status_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_operational_status_type IS 'List of operational status types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_operational_status_type.ref_operational_status_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_operational_status_type.description IS 'List of operational status types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_operational_status_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_operational_status_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_organization_identification_system ( 
	ref_organization_identification_system_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	ref_organization_identifier_type_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_organization_identification_system PRIMARY KEY ( ref_organization_identification_system_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_organization_identification_system IS 'A coding scheme that is used for identification and record-keeping purposes by an organization.  [Organization Identification System (000827), Adult Education Service Provider Identification System (000781), Agency Course Identifier (001280), Course Code System (000056), Federal School Code (000111), Institution IPEDS Unit_ID (000166), Local Education Agency Identification System (001072), Local Education Agency Supervisory Union Identification Number (000175), Office of Postsecondary Education Identifier (000203), School Identification System (001073), State Agency Identification System (001491), Course Section Number (001315)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_identification_system.ref_organization_identification_system_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_identification_system.description IS 'A coding scheme that is used for identification and record-keeping purposes by an organization.  [Organization Identification System (000827), Adult Education Service Provider Identification System (000781), Agency Course Identifier (001280), Course Code System (000056), Federal School Code (000111), Institution IPEDS Unit_ID (000166), Local Education Agency Identification System (001072), Local Education Agency Supervisory Union Identification Number (000175), Office of Postsecondary Education Identifier (000203), School Identification System (001073), State Agency Identification System (001491), Course Section Number (001315), Activity Identifier (000006), Course Identifier (000055), Program Identifier (000625), Course Section Identifier (000978)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_identification_system.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_identification_system.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_identification_system.ref_organization_identifier_type_id IS 'List of identification system types.';

CREATE TABLE ceds6sc_rdx.ref_organization_indicator ( 
	ref_organization_indicator_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	ref_organization_type_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_organization_indicator PRIMARY KEY ( ref_organization_indicator_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_organization_indicator IS 'The types of indicators (items with a Yes/No option set) for an organization.  [CEDS Elements: Advanced Placement Course Self Selection (000017), Shared Time Indicator (000257), Virtual Indicator (001160), Ability Grouping Status (000328)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_indicator.ref_organization_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_indicator.description IS 'The types of indicators (items with a Yes/No option set) for an organization.  [CEDS Elements: Advanced Placement Course Self Selection (000017), Shared Time Indicator (000257), Virtual Indicator (001160), Ability Grouping Status (000328)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_indicator.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_indicator.ref_organization_type_id IS 'Indicators may only apply to some types of organizations.';

CREATE TABLE ceds6sc_rdx.ref_organization_monitoring_notifications ( 
	ref_organization_monitoring_notifications_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_organization_monitoring_notifications PRIMARY KEY ( ref_organization_monitoring_notifications_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_organization_monitoring_notifications IS 'Whether the organization received notification about monitoring [CEDS Element: Organization Monitoring Notifications, ID:001330]';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_monitoring_notifications.ref_organization_monitoring_notifications_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_monitoring_notifications.description IS 'Whether the organization received notification about monitoring [CEDS Element: Organization Monitoring Notifications, ID:001330]';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_monitoring_notifications.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_monitoring_notifications.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_organization_type ( 
	ref_organization_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	ref_organization_element_type_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_organization PRIMARY KEY ( ref_organization_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_organization_type IS 'The type of educational organizations or entities. [Multiple CEDS Elements:  Organization Type (001156), Adult Education Provider Type (001078)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_type.ref_organization_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_type.description IS 'The type of educational organizations or entities. [Multiple CEDS Elements:  Organization Type (001156), Adult Education Provider Type (001078)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_organization_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_outcome_time_point ( 
	ref_outcome_time_point_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_outcome_time_point PRIMARY KEY ( ref_outcome_time_point_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_outcome_time_point IS 'The point in time for which the result is used for an outcome measure. [CEDS Element: Early Learning Outcome Time Point, ID:001503]';

COMMENT ON COLUMN ceds6sc_rdx.ref_outcome_time_point.ref_outcome_time_point_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_outcome_time_point.description IS 'The point in time for which the result is used for an outcome measure. [CEDS Element: Early Learning Outcome Time Point, ID:001503]';

COMMENT ON COLUMN ceds6sc_rdx.ref_outcome_time_point.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_outcome_time_point.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_pd_activity_credit_type ( 
	ref_pd_activity_credit_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_activity_credit_type PRIMARY KEY ( ref_pd_activity_credit_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_pd_activity_credit_type IS 'The type of credit awarded. [CEDS Element: Professional Development Activity Credit Type, ID:001436]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_credit_type.ref_pd_activity_credit_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_credit_type.description IS 'The type of credit awarded. [CEDS Element: Professional Development Activity Credit Type, ID:001436]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_credit_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_credit_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_pd_activity_level ( 
	ref_pd_activity_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_activity_level PRIMARY KEY ( ref_pd_activity_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_pd_activity_level IS 'An indicator of the level of a professional development activity on the beginner to advanced continuum. [CEDS Element: Professional Development Activity Level, ID:001439]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_level.ref_pd_activity_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_level.description IS 'An indicator of the level of a professional development activity on the beginner to advanced continuum. [CEDS Element: Professional Development Activity Level, ID:001439]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_level.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_pd_activity_type ( 
	ref_pd_activity_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_activity_type PRIMARY KEY ( ref_pd_activity_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_pd_activity_type IS 'The indication of the type of profesional development activity. [CEDS Element: Professional Development Activity Type, ID:001442]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_type.ref_pd_activity_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_type.description IS 'The indication of the type of profesional development activity. [CEDS Element: Professional Development Activity Type, ID:001442]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_activity_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_pd_delivery_method ( 
	ref_pd_delivery_method_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_delivery_method PRIMARY KEY ( ref_pd_delivery_method_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_pd_delivery_method IS 'The method by which a session is delivered [CEDS Element: Professional Development Delivery Method, ID:001431]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_delivery_method.ref_pd_delivery_method_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_delivery_method.description IS 'The method by which a session is delivered [CEDS Element: Professional Development Delivery Method, ID:001431]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_delivery_method.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_delivery_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_pd_session_status ( 
	ref_pd_session_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_pd_session_status PRIMARY KEY ( ref_pd_session_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_pd_session_status IS 'The current status of a professional development session [CEDS Element: Professional Development Session Status, ID:001457]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_session_status.ref_pd_session_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_session_status.description IS 'The current status of a professional development session [CEDS Element: Professional Development Session Status, ID:001457]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_session_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_pd_session_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ps_program_level ( 
	ref_ps_program_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_program_level PRIMARY KEY ( ref_ps_program_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ps_program_level IS 'The level describing the concentration of study for a postsecondary program.[CEDS Element: Postsecondary Program  Level, ID:001616]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_program_level.ref_ps_program_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_program_level.description IS 'The level describing the concentration of study for a postsecondary program. [CEDS Element: Postsecondary Program Level, ID:001616]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_program_level.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_program_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_participation_status_ayp ( 
	ref_participation_status_ayp_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_participation_status_ayp PRIMARY KEY ( ref_participation_status_ayp_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_participation_status_ayp IS 'An indication of whether the school or district met the 95 percent participation requirement in the subject assessment in accordance with state definition for the purposes of determining AYP. [CEDS Elements: Participation Status for Math (000208), Participation Status for Reading and Language Arts (000209)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_participation_status_ayp.ref_participation_status_ayp_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_participation_status_ayp.description IS 'An indication of whether the school or district met the 95 percent participation requirement in the subject assessment in accordance with state definition for the purposes of determining AYP. [CEDS Elements: Participation Status for Math (000208), Participation Status for Reading and Language Arts (000209)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_participation_status_ayp.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_participation_status_ayp.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_person_identification_system ( 
	ref_person_identification_system_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	ref_person_identifier_type_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_identifier PRIMARY KEY ( ref_person_identification_system_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_person_identification_system IS 'The types of person identifiers. [CEDS Elements: Child Identification System (ID:000785), Social Security Number (ID:000259),  Staff Member Identification System (ID:001074), Student Identification System (ID:001075)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_identification_system.ref_person_identification_system_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_identification_system.description IS 'The types of person identifiers. [CEDS Elements: Child Identification System (ID:000785), Social Security Number (ID:000259),  Staff Member Identification System (ID:001074), Student Identification System (ID:001075), Person Identification System (ID:001571)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_identification_system.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_identification_system.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_identification_system.ref_person_identifier_type_id IS 'List of identification system types.';

CREATE TABLE ceds6sc_rdx.ref_person_location_type ( 
	ref_person_location_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	role_id            integer  ,
	ref_address_type_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_person_location PRIMARY KEY ( ref_person_location_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_person_location_type IS 'The type of address for a person. [CEDS Elements: Address Type for Learner or Family (000010), Address Type for  (000722)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_location_type.ref_person_location_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_location_type.description IS 'The type of address for a person. [CEDS Elements: Address Type for Learner or Family (000010), Address Type for Staff (000722)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_location_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_location_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_location_type.role_id IS 'Surrogate key from Role identifying the type of person (Child, Student, Staff, Parent, etc.).';

CREATE TABLE ceds6sc_rdx.ref_person_status_type ( 
	ref_person_status_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_person_status_type PRIMARY KEY ( ref_person_status_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_person_status_type IS 'Status types for a person where the possible condition is either Yes (True) or No (False). [CEDS Elements: Economic Disadvantage Status (000086), Homeless Unaccompanied Youth Status (000148), IDEA Indicator (000151), Limited English Proficiency Status (000180), Migrant Status (000189), School Choice Applied for Transfer Status (000235), School Choice Eligible for Transfer Status (000236), School Choice Transfer Status (000237), Title I School Supplemental Services Applied Status (000286), Title I School Supplemental Services Eligible Status (000287), Title I School Supplemental Services Received Status (000288), Title III Immigrant Status (000291), Truant Status (000569), Single Parent Or Single Pregnant Woman Status (000580), Perkins Limited English Proficiency Status (000581), Low-income Status (000775), Dislocated Worker Status (000776), Public Assistance Status (000777), Rural Residency Status (000778), Professional Association Membership Status (000807), State Approved Trainer Status (000814), State Approved Technical Assistance Provider Status (000815), Program Heath Safety Checklist Use Status (000851)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_status_type.ref_person_status_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_status_type.description IS 'Status types for a person where the possible condition is either Yes (True) or No (False). [CEDS Elements: Economic Disadvantage Status (000086), Homeless Unaccompanied Youth Status (000148), IDEA Indicator (000151), Limited English Proficiency Status (000180), Migrant Status (000189), School Choice Applied for Transfer Status (000235), School Choice Eligible for Transfer Status (000236), School Choice Transfer Status (000237), Title I School Supplemental Services Applied Status (000286), Title I School Supplemental Services Eligible Status (000287), Title I School Supplemental Services Received Status (000288), Title III Immigrant Status (000291), Truant Status (000569), Single Parent Or Single Pregnant Woman Status (000580), Perkins Limited English Proficiency Status (000581), Low-income Status (000775), Dislocated Worker Status (000776), Public Assistance Status (000777), Rural Residency Status (000778), Professional Association Membership Status (000807), State Approved Trainer Status (000814), State Approved Technical Assistance Provider Status (000815), Program Heath Safety Checklist Use Status (000851)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_status_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_person_status_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_personal_information_verification ( 
	ref_personal_information_verification_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_personal_inforrmation_verification_type PRIMARY KEY ( ref_personal_information_verification_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_personal_information_verification IS 'The evidence by which a person''s name, address, date of birth, etc. is confirmed. [CEDS Element: Personal Information Verification, ID:000618]';

COMMENT ON COLUMN ceds6sc_rdx.ref_personal_information_verification.ref_personal_information_verification_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_personal_information_verification.description IS 'The evidence by which a persons name, address, date of birth, etc. is confirmed. [CEDS Element: Personal Information Verification, ID:000618]';

COMMENT ON COLUMN ceds6sc_rdx.ref_personal_information_verification.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_personal_information_verification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_pre_and_post_test_indicator ( 
	ref_pre_and_post_test_indicator_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_pre_and_post_test_indicator PRIMARY KEY ( ref_pre_and_post_test_indicator_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_pre_and_post_test_indicator IS 'An indication of whether students took both a pre-test and a post-test to measure academic improvement. [CEDS Element: Pre and Post Test Indicator, ID:000571]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pre_and_post_test_indicator.ref_pre_and_post_test_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_pre_and_post_test_indicator.description IS 'An indication of whether students took both a pre-test and a post-test to measure academic improvement. [CEDS Element: Pre and Post Test Indicator, ID:000571]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pre_and_post_test_indicator.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_pre_and_post_test_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_pre_kindergarten__eligibility ( 
	ref_pre_kindergarten__eligibility_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_pre_kindergarten__eligibility PRIMARY KEY ( ref_pre_kindergarten__eligibility_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_pre_kindergarten__eligibility IS 'The groups of students for whom pre-kindergarten programs are available. [CEDS Element: Pre-kindergarten Eligibility, ID:000216]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pre_kindergarten__eligibility.ref_pre_kindergarten__eligibility_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_pre_kindergarten__eligibility.description IS 'The groups of students for whom pre-kindergarten programs are available. [CEDS Element: Pre-kindergarten Eligibility, ID:000216]';

COMMENT ON COLUMN ceds6sc_rdx.ref_pre_kindergarten__eligibility.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_pre_kindergarten__eligibility.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_present_attendance_category ( 
	ref_present_attendance_category_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_present_attendance_category PRIMARY KEY ( ref_present_attendance_category_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_present_attendance_category IS 'The category that describes how the student spends his or her time when attending an instructional program approved by the state and/or school. [CEDS Element: Present Attendance Category, ID:000600]';

COMMENT ON COLUMN ceds6sc_rdx.ref_present_attendance_category.ref_present_attendance_category_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_present_attendance_category.description IS 'The category that describes how the student spends his or her time when attending an instructional program approved by the state and/or school. [CEDS Element: Present Attendance Category, ID:000600]';

COMMENT ON COLUMN ceds6sc_rdx.ref_present_attendance_category.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_present_attendance_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_professional_education_job_classification ( 
	ref_professional_education_job_classification_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_professional_education_job_classification PRIMARY KEY ( ref_professional_education_job_classification_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_professional_education_job_classification IS 'A general job classification that describes staff that performs duties requiring a high degree of knowledge and skills generally acquired through at least a baccalaureate degree (or its equivalent obtained through special study and/or experience) including skills in the field of education, educational psychology, educational social work, or an education therapy field. [CEDS Element: Professional Educational Job Classification, ID:000220]';

COMMENT ON COLUMN ceds6sc_rdx.ref_professional_education_job_classification.ref_professional_education_job_classification_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_professional_education_job_classification.description IS 'A general job classification that describes staff that performs duties requiring a high degree of knowledge and skills generally acquired through at least a baccalaureate degree (or its equivalent obtained through special study and/or experience) including skills in the field of education, educational psychology, educational social work, or an education therapy field. [CEDS Element: Professional Educational Job Classification, ID:000220]';

COMMENT ON COLUMN ceds6sc_rdx.ref_professional_education_job_classification.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_professional_education_job_classification.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_proficiency_status ( 
	ref_proficiency_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk__ref_proficiency_status PRIMARY KEY ( ref_proficiency_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_proficiency_status IS 'An indication of whether a student''s scores were proficient. [CEDS Element: Proficiency Status, ID:000573]';

COMMENT ON COLUMN ceds6sc_rdx.ref_proficiency_status.ref_proficiency_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_proficiency_status.description IS 'An indication of whether a student''s scores were proficient. [CEDS Element: Proficiency Status, ID:000573]';

COMMENT ON COLUMN ceds6sc_rdx.ref_proficiency_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_proficiency_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_program_day_length ( 
	ref_program_day_length_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_kindergarten_day_length PRIMARY KEY ( ref_program_day_length_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_program_day_length IS 'The portion of a day that a program is provided to the students it serves. [CEDS Elements: Kindergarten Daily Length (000491), Pre_Kindergarten_ Daily Length (000490)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_day_length.ref_program_day_length_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_day_length.description IS 'The portion of a day that a program is provided to the students it serves. [CEDS Elements: Kindergarten Daily Length (000491), Pre_Kindergarten_ Daily Length (000490)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_day_length.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_day_length.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_program_gifted_eligibility ( 
	ref_program_gifted_eligibility_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_program_gifted_eligibility PRIMARY KEY ( ref_program_gifted_eligibility_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_program_gifted_eligibility IS 'State/local code used to determine a student''s eligibility for Gifted/Talented program. [CEDS Element: Program Gifted Eligibility Criteria, ID:001244]';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_gifted_eligibility.ref_program_gifted_eligibility_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_gifted_eligibility.description IS 'State/local code used to determine a student''s eligibility for Gifted/Talented program. [CEDS Element: Program Gifted Eligibility Criteria, ID:001244]';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_gifted_eligibility.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_gifted_eligibility.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_program_sponsor_type ( 
	ref_program_sponsor_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction   integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_program_sponsor_type PRIMARY KEY ( ref_program_sponsor_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_program_sponsor_type IS 'A type of organization providing funds for a particular educational or service program or activity or for an individual''s participation in the program or Session. [CEDS Element: Program Sponsor Type, ID:000716]';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_sponsor_type.ref_program_sponsor_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_sponsor_type.description IS 'A type of organization providing funds for a particular educational or service program or activity or for an individual''s participation in the program or Session. [CEDS Element: Program Sponsor Type, ID:000716]';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_sponsor_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_program_sponsor_type.ref_jurisdiction IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_progress_level ( 
	ref_progress_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_progress_level PRIMARY KEY ( ref_progress_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_progress_level IS 'The amount of progress shown in academic subjects. [CEDS Element: Progress Level, ID:000561]';

COMMENT ON COLUMN ceds6sc_rdx.ref_progress_level.ref_progress_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_progress_level.description IS 'The amount of progress shown in academic subjects. [CEDS Element: Progress Level, ID:000561]';

COMMENT ON COLUMN ceds6sc_rdx.ref_progress_level.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_progress_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_proof_of_residency_type ( 
	ref_proof_of_residency_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_proof_of_residency_type PRIMARY KEY ( ref_proof_of_residency_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_proof_of_residency_type IS 'An accepted form of proof of residency in the district/county/other locality. [CEDS Element: Proof of Residency Type, ID:000305]';

COMMENT ON COLUMN ceds6sc_rdx.ref_proof_of_residency_type.ref_proof_of_residency_type_id IS 'An accepted form of proof of residency in the district/county/other locality. [CEDS Element: Proof of Residency Type, ID:000305]';

COMMENT ON COLUMN ceds6sc_rdx.ref_proof_of_residency_type.description IS 'An accepted form of proof of residency in the district/county/other locality. [CEDS Element: Proof of Residency Type, ID:000305]';

COMMENT ON COLUMN ceds6sc_rdx.ref_proof_of_residency_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_proof_of_residency_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ps_enrollment_award_type ( 
	ref_ps_enrollment_award_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_enrollment_award_type PRIMARY KEY ( ref_ps_enrollment_award_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ps_enrollment_award_type IS 'An indicator of the award level in which the person is currently enrolled. [CEDS Element: Enrollment in Postsecondary Award Type, ID:000361]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_award_type.ref_ps_enrollment_award_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_award_type.description IS 'An indicator of the award level in which the person is currently enrolled. [CEDS Element: Enrollment in Postsecondary Award Type, ID:000361]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_award_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_award_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ps_enrollment_type ( 
	ref_ps_enrollment_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_enrollment_type PRIMARY KEY ( ref_ps_enrollment_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ps_enrollment_type IS 'An indicator of the enrollment type associated with the enrollment award level of a person at the beginning of a term. [CEDS Element: Postsecondary Enrollment Type, ID:000095]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_type.ref_ps_enrollment_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_type.description IS 'An indicator of the enrollment type associated with the enrollment award level of a person at the beginning of a term. [CEDS Element: Postsecondary Enrollment Type, ID:000095]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_enrollment_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_ps_student_level ( 
	ref_ps_student_level_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_ps_student_level PRIMARY KEY ( ref_ps_student_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_ps_student_level IS 'Classification of a person enrolling in credit-granting courses at a postsecondary institution since completing high school (or its equivalent) as either an undergraduate or graduate student. [CEDS Element: Student Level, ID:000272]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_student_level.ref_ps_student_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_student_level.description IS 'Classification of a person enrolling in credit-granting courses at a postsecondary institution since completing high school (or its equivalent) as either an undergraduate or graduate student. [CEDS Element: Student Level, ID:000272]';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_student_level.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_ps_student_level.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_public_school_residence ( 
	ref_public_school_residence_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_public_school_residence PRIMARY KEY ( ref_public_school_residence_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_public_school_residence IS 'An indication of the location of a persons legal residence relative to (within or outside) the boundaries of the public school attended and its administrative unit. [CEDS Element: Public School Residence Status, ID:000532]';

COMMENT ON COLUMN ceds6sc_rdx.ref_public_school_residence.ref_public_school_residence_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_public_school_residence.description IS 'An indication of the location of a persons legal residence relative to (within or outside) the boundaries of the public school attended and its administrative unit. [CEDS Element: Public School Residence Status, ID:000532]';

COMMENT ON COLUMN ceds6sc_rdx.ref_public_school_residence.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_public_school_residence.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_qris_participation ( 
	ref_qris_participation_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_qris_participation PRIMARY KEY ( ref_qris_participation_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_qris_participation IS 'Program site participates in a Quality Rating and Improvement System (QRIS). [CEDS Element: Quality Rating and Improvement System Participation, ID:000357]';

COMMENT ON COLUMN ceds6sc_rdx.ref_qris_participation.ref_qris_participation_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_qris_participation.description IS 'Program site participates in a Quality Rating and Improvement System (QRIS). [CEDS Element: Quality Rating and Improvement System Participation, ID:000357]';

COMMENT ON COLUMN ceds6sc_rdx.ref_qris_participation.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_qris_participation.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_reap_alternative_funding_status ( 
	ref_reap_alternative_funding_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_reap_alternative_funding_status PRIMARY KEY ( ref_reap_alternative_funding_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_reap_alternative_funding_status IS 'An indication that the local education agency (LEA) notified the state of the LEA''s intention to use REAP-Flex Alternative Uses of Funding Authority during the school year as specified in the Title VI, Section 6211 of ESEA as amended. [CEDS Element: Rural Education Achievement Program Alternative Funding Status, ID:000560]';

COMMENT ON COLUMN ceds6sc_rdx.ref_reap_alternative_funding_status.ref_reap_alternative_funding_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_reap_alternative_funding_status.description IS 'An indication that the local education agency (LEA) notified the state of the LEA''s intention to use REAP-Flex Alternative Uses of Funding Authority during the school year as specified in the Title VI, Section 6211 of ESEA as amended. [CEDS Element: Rural Education Achievement Program Alternative Funding Status, ID:000560]';

COMMENT ON COLUMN ceds6sc_rdx.ref_reap_alternative_funding_status.code IS 'An abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_reap_alternative_funding_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_reconstituted_status ( 
	ref_reconstituted_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_reconstituted_status PRIMARY KEY ( ref_reconstituted_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_reconstituted_status IS 'An indication that the school was restructured, transformed or otherwise changed as a consequence of the state<U+0092>s accountability system under ESEA or as a result of School Improvement Grants (SIG). [CEDS Element: Reconstituted Status, ID:000230]';

COMMENT ON COLUMN ceds6sc_rdx.ref_reconstituted_status.ref_reconstituted_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_reconstituted_status.description IS 'An indication that the school was restructured, transformed or otherwise changed as a consequence of the state<U+0092>s accountability system under ESEA or as a result of School Improvement Grants (SIG). [CEDS Element: Reconstituted Status, ID:000230]';

COMMENT ON COLUMN ceds6sc_rdx.ref_reconstituted_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_reconstituted_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_reimbursement_type ( 
	ref_reimbursement_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_reimbursement_type PRIMARY KEY ( ref_reimbursement_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_reimbursement_type IS 'A billable basis which defines payment. This is how state agencies/programs move funding to the local provider/agency.[CEDS Element: Reimbursement Type, ID:001622]';

COMMENT ON COLUMN ceds6sc_rdx.ref_reimbursement_type.ref_reimbursement_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_reimbursement_type.description IS 'A billable basis which defines payment. This is how state agencies/programs move funding to the local provider/agency. [CEDS Element: Reimbursement Type, ID:001622]';

COMMENT ON COLUMN ceds6sc_rdx.ref_reimbursement_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_reimbursement_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_rlis_program_use ( 
	ref_rlis_program_use_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_rlis_program_use PRIMARY KEY ( ref_rlis_program_use_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_rlis_program_use IS 'The type of use of the Rural Low-Income Schools Program (RLIS) (Title VI, Part B, Subpart 2) Grant Funds. [CEDS Element: Type of Use of the Rural Low-Income Schools Program, ID:000486]';

COMMENT ON COLUMN ceds6sc_rdx.ref_rlis_program_use.ref_rlis_program_use_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_rlis_program_use.description IS 'The type of use of the Rural Low-Income Schools Program (RLIS) (Title VI, Part B, Subpart 2) Grant Funds. [CEDS Element: Type of Use of the Rural Low-Income Schools Program, ID:000486]';

COMMENT ON COLUMN ceds6sc_rdx.ref_rlis_program_use.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_rlis_program_use.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_role_status_type ( 
	ref_role_status_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_role_status_type PRIMARY KEY ( ref_role_status_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_role_status_type IS 'List of role status types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_role_status_type.ref_role_status_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_role_status_type.description IS 'List of role status types.';

COMMENT ON COLUMN ceds6sc_rdx.ref_role_status_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_role_status_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_sced_course_subject_area ( 
	ref_sced_course_subject_area_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_sced_course_subject_area PRIMARY KEY ( ref_sced_course_subject_area_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_sced_course_subject_area IS 'The intended major subject area of the education course. [CEDS Element: School Courses for the Exchange of Data Course Subject Area, ID:001518]';

COMMENT ON COLUMN ceds6sc_rdx.ref_sced_course_subject_area.ref_sced_course_subject_area_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_sced_course_subject_area.description IS 'The intended major subject area of the education course. [CEDS Element: School Courses for the Exchange of Data Course Subject Area, ID:001518]';

COMMENT ON COLUMN ceds6sc_rdx.ref_sced_course_subject_area.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_sced_course_subject_area.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_school_food_service_program ( 
	ref_school_food_service_program_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction   integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_school_food_service_program PRIMARY KEY ( ref_school_food_service_program_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_school_food_service_program IS 'An indication of a student''s participation in free, reduced price, full price breakfast, lunch, snack, supper, and milk programs. [CEDS Element: Participation in School Food Service Programs, ID:000325]';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_food_service_program.ref_school_food_service_program_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_food_service_program.description IS 'An indication of a student''s participation in free, reduced price, full price breakfast, lunch, snack, supper, and milk programs. [CEDS Element: Participation in School Food Service Programs, ID:000325]';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_food_service_program.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_food_service_program.ref_jurisdiction IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_school_improvement_status ( 
	ref_school_improvement_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_school_improvement_status PRIMARY KEY ( ref_school_improvement_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_school_improvement_status IS 'An indication of the improvement stage of the school. [CEDS Element: School Improvement Status, ID:000240]';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_improvement_status.ref_school_improvement_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_improvement_status.description IS 'An indication of the improvement stage of the school. [CEDS Element: School Improvement Status, ID:000240]';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_improvement_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_improvement_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_school_type ( 
	ref_school_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_school_type PRIMARY KEY ( ref_school_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_school_type IS 'The type of education institution as classified by its primary focus.  [CEDS Element: School Type, ID:000242]';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_type.ref_school_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_type.description IS 'The type of education institution as classified by its primary focus.  [CEDS Element: School Type, ID:000242]';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_school_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_service_frequency ( 
	ref_service_frequency_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_service_frequency PRIMARY KEY ( ref_service_frequency_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_service_frequency IS 'The frequency that a service is planned to be provided. [CEDS Element: Individualized Program Planned Service Frequency, ID:001519]';

COMMENT ON COLUMN ceds6sc_rdx.ref_service_frequency.ref_service_frequency_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_service_frequency.description IS 'The frequency that a service is planned to be provided. [CEDS Element: Individualized Program Planned Service Frequency, ID:001519]';

COMMENT ON COLUMN ceds6sc_rdx.ref_service_frequency.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_service_frequency.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_services ( 
	ref_services_id    integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_services PRIMARY KEY ( ref_services_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_services IS 'A service provided to a person in any of the P-20 and workforce domains. ';

COMMENT ON COLUMN ceds6sc_rdx.ref_services.ref_services_id IS 'Surrogate Key.';

COMMENT ON COLUMN ceds6sc_rdx.ref_services.description IS 'A service provided to a person in any of the P-20 and workforce domains.  [CEDS Elements: Early Intervention or Special Education Services Received (ID 000321)]';

COMMENT ON COLUMN ceds6sc_rdx.ref_services.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_services.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_sex ( 
	ref_sex_id         integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_sex PRIMARY KEY ( ref_sex_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_sex IS 'The concept describing the biological traits that distinguish the males and females of a species. [CEDS Element: Sex, ID:000255]';

COMMENT ON COLUMN ceds6sc_rdx.ref_sex.ref_sex_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_sex.description IS 'The concept describing the biological traits that distinguish the males and females of a species. [CEDS Element: Sex, ID:000255]';

COMMENT ON COLUMN ceds6sc_rdx.ref_sex.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_sex.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_single_sex_class_status ( 
	ref_single_sex_class_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_single_sex_class_status PRIMARY KEY ( ref_single_sex_class_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_single_sex_class_status IS 'Class in a co-educational school where only male or only female students are permitted to take the class. [CEDS Element: Class Section Single Sex Class Status, ID:000258]';

COMMENT ON COLUMN ceds6sc_rdx.ref_single_sex_class_status.ref_single_sex_class_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_single_sex_class_status.description IS 'Class in a co-educational school where only male or only female students are permitted to take the class. [CEDS Element: Class Section Single Sex Class Status, ID:000258]';

COMMENT ON COLUMN ceds6sc_rdx.ref_single_sex_class_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_single_sex_class_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_special_education_age_group_taught ( 
	ref_special_education_age_group_taught_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_special_education_age_group_taught PRIMARY KEY ( ref_special_education_age_group_taught_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_special_education_age_group_taught IS 'The age range of special education students taught. [CEDS Element: Special Education Age Group Taught, ID:000564]';

COMMENT ON COLUMN ceds6sc_rdx.ref_special_education_age_group_taught.ref_special_education_age_group_taught_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_special_education_age_group_taught.description IS 'The age range of special education students taught. [CEDS Element: Special Education Age Group Taught, ID:000564]';

COMMENT ON COLUMN ceds6sc_rdx.ref_special_education_age_group_taught.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_special_education_age_group_taught.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_special_education_staff_category ( 
	ref_special_education_staff_category_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_special_education_staff_category PRIMARY KEY ( ref_special_education_staff_category_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_special_education_staff_category IS 'Titles of personnel employed and contracted to provide related services for children with disabilities. [CEDS Element: Special Education Staff Category, ID:000558]';

COMMENT ON COLUMN ceds6sc_rdx.ref_special_education_staff_category.ref_special_education_staff_category_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_special_education_staff_category.description IS 'Titles of personnel employed and contracted to provide related services for children with disabilities. [CEDS Element: Special Education Staff Category, ID:000558]';

COMMENT ON COLUMN ceds6sc_rdx.ref_special_education_staff_category.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_special_education_staff_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_standardized_admission_test ( 
	ref_standardized_admission_test_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_standardized_admission_test PRIMARY KEY ( ref_standardized_admission_test_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_standardized_admission_test IS 'The type of test prepared and administered by an agency that is independent of any postsecondary education institution and is typically used for admissions purposes. Tests provide information about prospective students and their academic qualifications relative to a national sample. [CEDS Element: Standardized Admission Test Type, ID:000266]';

COMMENT ON COLUMN ceds6sc_rdx.ref_standardized_admission_test.ref_standardized_admission_test_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.ref_standardized_admission_test.description IS 'The type of test prepared and administered by an agency that is independent of any postsecondary education institution and is typically used for admissions purposes. Tests provide information about prospective students and their academic qualifications relative to a national sample. [CEDS Element: Standardized Admission Test Type, ID:000266]';

COMMENT ON COLUMN ceds6sc_rdx.ref_standardized_admission_test.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_standardized_admission_test.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_student_support_service_type ( 
	ref_student_support_service_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_student_support_service_type PRIMARY KEY ( ref_student_support_service_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_student_support_service_type IS 'Type of related or ancillary services provided to a person or a group of persons within the formal educational system or offered by an outside agency which provides non-instructional services to support the general welfare of students. This includes physical and emotional health, the ability to select an appropriate course of study, admission to appropriate educational programs, and the ability to adjust to and remain in school through the completion of programs. In serving a student with an identified disability, related services include developmental, corrective, or supportive services required to ensure that the person benefits from special education. [CEDS Element: Student Support Service Type, ID:000273]';

COMMENT ON COLUMN ceds6sc_rdx.ref_student_support_service_type.ref_student_support_service_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_student_support_service_type.description IS 'Type of related or ancillary services provided to a person or a group of persons within the formal educational system or offered by an outside agency which provides non-instructional services to support the general welfare of students. This includes physical and emotional health, the ability to select an appropriate course of study, admission to appropriate educational programs, and the ability to adjust to and remain in school through the completion of programs. In serving a student with an identified disability, related services include developmental, corrective, or supportive services required to ensure that the person benefits from special education. [CEDS Element: Student Support Service Type, ID:000273]';

COMMENT ON COLUMN ceds6sc_rdx.ref_student_support_service_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_student_support_service_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_teacher_education_credential_exam ( 
	ref_teacher_education_credential_exam_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_teacher_education_credential_exam PRIMARY KEY ( ref_teacher_education_credential_exam_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_teacher_education_credential_exam IS 'The type of examination used to assess teacher candidate''s knowledge and skills. [CEDS Element: Teacher Education Credential Exam Type, ID:000773]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_education_credential_exam.ref_teacher_education_credential_exam_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_education_credential_exam.description IS 'The type of examination used to assess teacher candidate''s knowledge and skills. [CEDS Element: Teacher Education Credential Exam Type, ID:000773]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_education_credential_exam.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_education_credential_exam.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_teacher_education_test_company ( 
	ref_teacher_education_test_company_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_teacher_education_test_company PRIMARY KEY ( ref_teacher_education_test_company_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_teacher_education_test_company IS 'The name of the company that provides the examination used in the teacher education program. [CEDS Element: Teacher Education Test Company, ID:000766]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_education_test_company.ref_teacher_education_test_company_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_education_test_company.description IS 'The name of the company that provides the examination used in the teacher education program. [CEDS Element: Teacher Education Test Company, ID:000766]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_education_test_company.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_education_test_company.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_teacher_prep_enrollment_status ( 
	ref_teacher_prep_enrollment_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_teacher_prep_enroll_status PRIMARY KEY ( ref_teacher_prep_enrollment_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_teacher_prep_enrollment_status IS 'An indication of whether a person is pursuing certification as a teacher. [CEDS Element: Teacher Preparation Program Enrollment Status, ID:000767]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_prep_enrollment_status.ref_teacher_prep_enrollment_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_prep_enrollment_status.description IS 'An indication of whether a person is pursuing certification as a teacher. [CEDS Element: Teacher Preparation Program Enrollment Status, ID:000767]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_prep_enrollment_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_teacher_prep_enrollment_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_teaching_credential_basis ( 
	ref_teaching_credential_basis_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_teaching_credential_basis PRIMARY KEY ( ref_teaching_credential_basis_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_teaching_credential_basis IS 'An indication of the pre-determined criteria for granting the teaching credential that a person holds. [CEDS Element: Teaching Credential Basis, ID:000277]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teaching_credential_basis.ref_teaching_credential_basis_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_teaching_credential_basis.description IS 'An indication of the pre-determined criteria for granting the teaching credential that a person holds. [CEDS Element: Teaching Credential Basis, ID:000277]';

COMMENT ON COLUMN ceds6sc_rdx.ref_teaching_credential_basis.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_teaching_credential_basis.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_technical_assistance_delivery_type ( 
	ref_technical_assistance_delivery_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_technical_assistance_delivery_type PRIMARY KEY ( ref_technical_assistance_delivery_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_technical_assistance_delivery_type IS 'The method of delivery of technical assistance received/provided [CEDS Element: Technical Assistance Delivery Type, ID:001494]';

COMMENT ON COLUMN ceds6sc_rdx.ref_technical_assistance_delivery_type.ref_technical_assistance_delivery_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_technical_assistance_delivery_type.description IS 'The method of delivery of technical assistance received/provided [CEDS Element: Technical Assistance Delivery Type, ID:001494]';

COMMENT ON COLUMN ceds6sc_rdx.ref_technical_assistance_delivery_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_technical_assistance_delivery_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_technology_literacy_status ( 
	ref_technology_literacy_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_technology_literacy_status PRIMARY KEY ( ref_technology_literacy_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_technology_literacy_status IS 'An indication of the technology literacy of 8th graders. [CEDS Element: Technology Literacy Status in 8th Grade, ID:000566]';

COMMENT ON COLUMN ceds6sc_rdx.ref_technology_literacy_status.ref_technology_literacy_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_technology_literacy_status.description IS 'An indication of the technology literacy of 8th graders. [CEDS Element: Technology Literacy Status in 8th Grade, ID:000566]';

COMMENT ON COLUMN ceds6sc_rdx.ref_technology_literacy_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_technology_literacy_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_tenure_system ( 
	ref_tenure_system_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_tenure_system PRIMARY KEY ( ref_tenure_system_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_tenure_system IS 'An indicator of whether an institution has personnel positions that lead to consideration for tenure. [CEDS Element: Tenure System, ID:000738]';

COMMENT ON COLUMN ceds6sc_rdx.ref_tenure_system.ref_tenure_system_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_tenure_system.description IS 'An indicator of whether an institution has personnel positions that lead to consideration for tenure. [CEDS Element: Tenure System, ID:000738]';

COMMENT ON COLUMN ceds6sc_rdx.ref_tenure_system.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_tenure_system.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_time_for_completion_units ( 
	ref_time_for_completion_units_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_time_for_completion_units PRIMARY KEY ( ref_time_for_completion_units_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_time_for_completion_units IS 'The unit of measurement for length of time for completion. [CEDS Element: Normal Length of Time for Completion Units, ID:000198]';

COMMENT ON COLUMN ceds6sc_rdx.ref_time_for_completion_units.ref_time_for_completion_units_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_time_for_completion_units.description IS 'The unit of measurement for length of time for completion. [CEDS Element: Normal Length of Time for Completion Units, ID:000198]';

COMMENT ON COLUMN ceds6sc_rdx.ref_time_for_completion_units.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_time_for_completion_units.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_title_iii_language_instruction_program_type ( 
	ref_title_iii_language_instruction_program_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_title_iii_language_instruction PRIMARY KEY ( ref_title_iii_language_instruction_program_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_title_iii_language_instruction_program_type IS 'The type of Title III language instructional programs. [CEDS Element: Title III Language Instruction Program Type, ID:000447]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_iii_language_instruction_program_type.ref_title_iii_language_instruction_program_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_iii_language_instruction_program_type.description IS 'The type of Title III language instructional programs. [CEDS Element: Title III Language Instruction Program Type, ID:000447]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_iii_language_instruction_program_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_iii_language_instruction_program_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_title_i_indicator ( 
	ref_title_i_indicator_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_title_i_indicator PRIMARY KEY ( ref_title_i_indicator_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_title_i_indicator IS 'An indication that the student is participating in and served by programs under Title I, Part A of ESEA as amended. [CEDS Element: Title I Indicator, ID:000281]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_indicator.ref_title_i_indicator_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_indicator.description IS 'An indication that the student is participating in and served by programs under Title I, Part A of ESEA as amended. [CEDS Element: Title I Indicator, ID:000281]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_indicator.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_indicator.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_title_i_program_staff_category ( 
	ref_title_i_program_staff_category_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_title_i_program_staff_category PRIMARY KEY ( ref_title_i_program_staff_category_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_title_i_program_staff_category IS 'Titles of employment, official status, or rank for staff working in a Title I program. [CEDS Element: Title I Program Staff Category, ID:000283]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_program_staff_category.ref_title_i_program_staff_category_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_program_staff_category.description IS 'Titles of employment, official status, or rank for staff working in a Title I program. [CEDS Element: Title I Program Staff Category, ID:000283]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_program_staff_category.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_program_staff_category.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_title_i_school_status ( 
	ref_title_1_school_status_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(400)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_title_1_status PRIMARY KEY ( ref_title_1_school_status_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_title_i_school_status IS 'An indication that a school is designated under state and federal regulations as being eligible for participation in programs authorized by Title I of ESEA as amended and whether it has a Title I program. [CEDS Element: Title I School Status, ID:000285]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_school_status.ref_title_1_school_status_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_school_status.description IS 'An indication that a school is designated under state and federal regulations as being eligible for participation in programs authorized by Title I of ESEA as amended and whether it has a Title I program. [CEDS Element: Title I School Status, ID:000285]';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_school_status.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_title_i_school_status.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_transfer_ready ( 
	ref_transfer_ready_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_transfer_ready PRIMARY KEY ( ref_transfer_ready_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_transfer_ready IS 'A person who has successfully completed a transfer-preparatory program as defined by the state or by the institution if no official state definition exists. [CEDS Element: Transfer-ready, ID:000296]';

COMMENT ON COLUMN ceds6sc_rdx.ref_transfer_ready.ref_transfer_ready_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_transfer_ready.description IS 'A person who has successfully completed a transfer-preparatory program as defined by the state or by the institution if no official state definition exists. [CEDS Element: Transfer-ready, ID:000296]';

COMMENT ON COLUMN ceds6sc_rdx.ref_transfer_ready.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_transfer_ready.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_trimester_when_prenatal_care_began ( 
	ref_trimester_when_prenatal_care_began_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_trimester_when_prenatal_care_began PRIMARY KEY ( ref_trimester_when_prenatal_care_began_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_trimester_when_prenatal_care_began IS 'The trimester of pregnancy in which a child''s mother began receiving prenatal health care.[CEDS Element: Trimester When Prenatal Care Began, ID:001630]';

COMMENT ON COLUMN ceds6sc_rdx.ref_trimester_when_prenatal_care_began.ref_trimester_when_prenatal_care_began_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_trimester_when_prenatal_care_began.description IS 'The trimester of pregnancy in which a child''s mother began receiving prenatal health care. [CEDS Element: Trimester When Prenatal Care Began, ID:001630]';

COMMENT ON COLUMN ceds6sc_rdx.ref_trimester_when_prenatal_care_began.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_trimester_when_prenatal_care_began.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_tuition_unit ( 
	ref_tuition_unit_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_tuition_unit PRIMARY KEY ( ref_tuition_unit_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_tuition_unit IS 'The component for which tuition is being charged.  It might be a time period (term, quarter, year, etc.) or it might be an entity of education (course, credit hour, etc.). [CEDS Element: Tuition Unit, ID:000746]';

COMMENT ON COLUMN ceds6sc_rdx.ref_tuition_unit.ref_tuition_unit_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_tuition_unit.description IS 'The component for which tuition is being charged.  It might be a time period (term, quarter, year, etc.) or it might be an entity of education (course, credit hour, etc.). [CEDS Element: Tuition Unit, ID:000746]';

COMMENT ON COLUMN ceds6sc_rdx.ref_tuition_unit.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_tuition_unit.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_visa_type ( 
	ref_visa_type_id   integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_visa_type PRIMARY KEY ( ref_visa_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_visa_type IS 'The types of Visas for a non-US citizen. [CEDS Element: Visa Type, ID:000196]';

COMMENT ON COLUMN ceds6sc_rdx.ref_visa_type.ref_visa_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_visa_type.description IS 'The types of Visas for a non-US citizen. [CEDS Element: Visa Type, ID:000196]';

COMMENT ON COLUMN ceds6sc_rdx.ref_visa_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_visa_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_wage_collection_method ( 
	ref_wage_collection_method_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_wage_collection_method PRIMARY KEY ( ref_wage_collection_method_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_wage_collection_method IS 'Method used for the collection of wage data for an employment record. [CEDS Element: Wage Collection Code, ID:000798]';

COMMENT ON COLUMN ceds6sc_rdx.ref_wage_collection_method.ref_wage_collection_method_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_wage_collection_method.description IS 'Method used for the collection of wage data for an employment record. [CEDS Element: Wage Collection Code, ID:000798]';

COMMENT ON COLUMN ceds6sc_rdx.ref_wage_collection_method.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_wage_collection_method.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_weapon_type ( 
	ref_weapon_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT xpk_ref_weapon_type PRIMARY KEY ( ref_weapon_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_weapon_type IS 'Identifies the type of weapon used during an incident. [CEDS Element: Weapon Type, ID:001211]';

COMMENT ON COLUMN ceds6sc_rdx.ref_weapon_type.ref_weapon_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_weapon_type.description IS 'Identifies the type of weapon used during an incident. [CEDS Element: Weapon Type, ID:001211]';

COMMENT ON COLUMN ceds6sc_rdx.ref_weapon_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_weapon_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.ref_workbased_learning_opportunity_type ( 
	ref_workbased_learning_opportunity_type_id integer  NOT NULL,
	description        varchar(100)  NOT NULL,
	code               varchar(50)  ,
	definition         varchar(4000)  ,
	ref_jurisdiction_id integer  ,
	sort_order         decimal(5,2)  ,
	CONSTRAINT pk_ref_workbased_learning_opportunity_type PRIMARY KEY ( ref_workbased_learning_opportunity_type_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ref_workbased_learning_opportunity_type IS 'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]';

COMMENT ON COLUMN ceds6sc_rdx.ref_workbased_learning_opportunity_type.ref_workbased_learning_opportunity_type_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.ref_workbased_learning_opportunity_type.description IS 'The type of work-based learning opportunity a student participated in. [CEDS Element: Work-based Learning Opportunity Type, ID:001499]';

COMMENT ON COLUMN ceds6sc_rdx.ref_workbased_learning_opportunity_type.code IS 'A code or abbreviation for the type.';

COMMENT ON COLUMN ceds6sc_rdx.ref_workbased_learning_opportunity_type.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.role ( 
	role_id            integer  NOT NULL,
	name               varchar(50)  ,
	ref_jurisdiction_id integer  ,
	CONSTRAINT pk_ref_role PRIMARY KEY ( role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.role IS 'The list of roles for a person.';

COMMENT ON COLUMN ceds6sc_rdx.role.role_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.role.name IS 'The name of the role, e.g. Student, Staff, Employee';

COMMENT ON COLUMN ceds6sc_rdx.role.ref_jurisdiction_id IS 'Surrogate key from Organization identifying the publisher of the reference value.';

CREATE TABLE ceds6sc_rdx.role_attendance_event ( 
	role_attendance_event_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	date               date  NOT NULL,
	ref_attendance_event_type_id integer  ,
	ref_attendance_status_id integer  ,
	ref_absent_attendance_category_id integer  ,
	ref_present_attendance_category_id integer  ,
	ref_leave_event_type_id integer  ,
	CONSTRAINT pk_role_attendance_event PRIMARY KEY ( role_attendance_event_id )
 );

COMMENT ON TABLE ceds6sc_rdx.role_attendance_event IS 'The attributes of a person''s attendance during a given day.';

COMMENT ON COLUMN ceds6sc_rdx.role_attendance_event.role_attendance_event_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.role_attendance_event.organization_person_role_id IS 'Foreign key - Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.role_attendance_event.date IS 'Date of the event.';

COMMENT ON COLUMN ceds6sc_rdx.role_attendance_event.ref_attendance_event_type_id IS 'The type of attendance event. [CEDS Element: Attendance Event Type, ID:000601]';

COMMENT ON COLUMN ceds6sc_rdx.role_attendance_event.ref_attendance_status_id IS 'The status of a person''s attendance associated with an Attendance Event Type, Calendar Event Date, in an organization-person-role context. [CEDS Element: Attendance Status, ID:000076]';

COMMENT ON COLUMN ceds6sc_rdx.role_attendance_event.ref_absent_attendance_category_id IS 'The category that describes how the student spends his or her time not physically present on school grounds and not participating in instruction or instruction-related activities at an approved off-grounds location. [CEDS Element: Absent Attendance Category, ID:000599]';

COMMENT ON COLUMN ceds6sc_rdx.role_attendance_event.ref_present_attendance_category_id IS 'The category that describes how the student spends his or her time when attending an instructional program approved by the state and/or school. [CEDS Element: Present Attendance Category, ID:000600]';

COMMENT ON COLUMN ceds6sc_rdx.role_attendance_event.ref_leave_event_type_id IS 'The type of the leave event. [CEDS Element: Leave Event Type, ID:000624]';

CREATE TABLE ceds6sc_rdx.staff_credential ( 
	person_credential_id integer  NOT NULL,
	ref_teaching_credential_type_id integer  ,
	ref_teaching_credential_basis_id integer  ,
	ref_child_dev_associate_type_id integer  ,
	ref_paraprofessional_qualification_id integer  ,
	technology_skills_standards_met bool  ,
	diploma_or_credential_award_date varchar(7)  ,
	ref_program_sponsor_type_id integer  ,
	cte_instructor_industry_certification bool  ,
	CONSTRAINT pk_staff_credential PRIMARY KEY ( person_credential_id )
 );

COMMENT ON TABLE ceds6sc_rdx.staff_credential IS 'A credential held by a staff member.';

COMMENT ON COLUMN ceds6sc_rdx.staff_credential.person_credential_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.staff_credential.ref_teaching_credential_type_id IS 'An indication of the category of a legal document giving authorization to perform teaching assignment services. [CEDS Element: Teaching Credential Type, ID:000278]  (Foreign key - Ref_Teaching_Credential_Type)';

COMMENT ON COLUMN ceds6sc_rdx.staff_credential.ref_teaching_credential_basis_id IS 'An indication of the pre-determined criteria for granting the teaching credential that a person holds. [CEDS Element: Teaching Credential Basis, ID:000277]  (Foreign key - Ref_Teaching_Credential_Basis)';

COMMENT ON COLUMN ceds6sc_rdx.staff_credential.ref_child_dev_associate_type_id IS 'Type of Child Development Associate credential as defined by options. [CEDS Element: Child Development Associate Type, ID:000806]';

COMMENT ON COLUMN ceds6sc_rdx.staff_credential.ref_paraprofessional_qualification_id IS 'An indication of whether paraprofessionals are classified as qualified for their assignment according to state definition. [CEDS Element: Paraprofessional Qualification Status, ID:000207]  (Foreign key - Ref_Paraprofessional_Qualification)';

COMMENT ON COLUMN ceds6sc_rdx.staff_credential.technology_skills_standards_met IS 'An indication that the person has achieved acceptable performance on a standards-based profile of technology user skills as defined by the state. [CEDS Element: Technology Skills Standards Met, ID:000546]';

COMMENT ON COLUMN ceds6sc_rdx.staff_credential.diploma_or_credential_award_date IS 'The month and year on which the diploma/credential is awarded to a student in recognition of his/her completion of the curricular requirements. [CEDS Element: Diploma or Credential Award Date, ID:000081]';

COMMENT ON COLUMN ceds6sc_rdx.staff_credential.ref_program_sponsor_type_id IS 'A type of organization providing funds for a particular educational or service program or activity or for an individual''s participation in the program or Session. [CEDS Element: Program Sponsor Type, ID:000716]';

COMMENT ON COLUMN ceds6sc_rdx.staff_credential.cte_instructor_industry_certification IS 'An indication of whether a Career and Technical Education (CTE) instructor holds a current industry-recognized credential related to their teaching field. [CEDS Element: Career and Technical Education Instructor Industry Certification, ID: 001318]';

CREATE TABLE ceds6sc_rdx.staff_evaluation ( 
	staff_evaluation_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	system             varchar(60)  ,
	scale              varchar(80)  ,
	score_or_rating    varchar(60)  ,
	outcome            varchar(80)  ,
	ref_staff_performance_level_id integer  ,
	CONSTRAINT pk_staff_evaluation PRIMARY KEY ( staff_evaluation_id )
 );

COMMENT ON TABLE ceds6sc_rdx.staff_evaluation IS 'Evaluation of a staff member''s performance.';

COMMENT ON COLUMN ceds6sc_rdx.staff_evaluation.staff_evaluation_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.staff_evaluation.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.staff_evaluation.system IS 'The instrument and/or set of procedures with which a person''s performance is assessed. [CEDS Element: Staff Evaluation System, ID:000105]';

COMMENT ON COLUMN ceds6sc_rdx.staff_evaluation.scale IS 'The quantitative or qualitative range of possible scores/rating for a person''s performance (e.g., 0 - 10; Poor, Fair, Average, Good, Excellent). [CEDS Element: Staff Evaluation Scale, ID:000103]';

COMMENT ON COLUMN ceds6sc_rdx.staff_evaluation.score_or_rating IS 'The actual quantitative or qualitative assessment of a person''s performance. [CEDS Element: Staff Evaluation Score or Rating, ID:000104]';

COMMENT ON COLUMN ceds6sc_rdx.staff_evaluation.outcome IS 'The result of an assessment of a person''s performance. [CEDS Element: Staff Evaluation Outcome, ID:000102]';

COMMENT ON COLUMN ceds6sc_rdx.staff_evaluation.ref_staff_performance_level_id IS 'The levels used in district evaluation systems for assigning teacher or principal performance ratings. [CEDS Element: Faculty and Administration Performance Level, ID:000589]';

CREATE TABLE ceds6sc_rdx.staff_professional_development_activity ( 
	staff_professional_development_activity_id integer  NOT NULL,
	professional_development_requirement_id integer  NOT NULL,
	activity_title     varchar(50)  ,
	activity_identifier varchar(40)  ,
	activity_start_date date  ,
	activity_completion_date date  ,
	scholarship_status bool  ,
	ref_professional_development_financial_support_id integer  ,
	number_of_credits_earned decimal(10,2)  ,
	ref_course_credit_unit_id integer  ,
	professional_development_activity_id integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	professional_development_session_id integer  NOT NULL,
	CONSTRAINT pk_staff_professional_development_activity PRIMARY KEY ( staff_professional_development_activity_id )
 );

COMMENT ON TABLE ceds6sc_rdx.staff_professional_development_activity IS 'Information about a person''s participation in a professional development activity and outcomes from that participation that may be related to a Professional Development Requirement.  The Staff_Professional_Development_Activity may also be more granularly defined as a person''s participation in a specific Professional Development Session, indicated by reference.';

COMMENT ON COLUMN ceds6sc_rdx.staff_professional_development_activity.staff_professional_development_activity_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.staff_professional_development_activity.professional_development_requirement_id IS 'Foreign key - Professiona_Development.';

COMMENT ON COLUMN ceds6sc_rdx.staff_professional_development_activity.activity_title IS 'The title of an activity designed for the purpose of developing someone professionally. [CEDS Element: Professional Development Activity Title, ID:000810]';

COMMENT ON COLUMN ceds6sc_rdx.staff_professional_development_activity.activity_identifier IS 'A unique number or alphanumeric code assigned to the Professional Development Activity as assigned by the organization offering the activity. [CEDS Element: Professional Development Activity Identifier, ID: 000809]';

COMMENT ON COLUMN ceds6sc_rdx.staff_professional_development_activity.activity_start_date IS 'The date on which an individual begins a course, an education program or a development activity. [CEDS Element:  Professional Development Activity Start Date, ID:001061]';

COMMENT ON COLUMN ceds6sc_rdx.staff_professional_development_activity.activity_completion_date IS 'The date on which an individual completed a course, an education program or a  development activity. [CEDS Element:  Professional Development Activity Completion Date, ID:001062]';

COMMENT ON COLUMN ceds6sc_rdx.staff_professional_development_activity.scholarship_status IS 'An indication of whether a scholarship was received for the person to participate in the professional development. [CEDS Element: Professional Development Scholarship Status, ID:000811]';

COMMENT ON COLUMN ceds6sc_rdx.staff_professional_development_activity.ref_professional_development_financial_support_id IS 'The type of financial assistance received in support of non-credit professional development activities. [CEDS Element: Professional Development Financial Support Type, ID:000812]  (Foreign key - Ref_Professional_Development_Financial_Support)';

COMMENT ON COLUMN ceds6sc_rdx.staff_professional_development_activity.number_of_credits_earned IS 'The number of credits an individual earns by the successful completion of a course. [CEDS Element: Number of Credits Earned, ID:000200]';

COMMENT ON COLUMN ceds6sc_rdx.staff_professional_development_activity.ref_course_credit_unit_id IS 'The type of credit (unit, semester, or quarter) associated with the credit hours earned for the course.  [CEDS Element: Course Credit Units, ID:000057]  (Foreign key - Ref_Course_Credit_Unit)';

COMMENT ON COLUMN ceds6sc_rdx.staff_professional_development_activity.professional_development_session_id IS 'Foreign key - Professional Development Session';

CREATE TABLE ceds6sc_rdx.teacher_education_credential_exam ( 
	teacher_education_credential_exam_id integer  NOT NULL,
	organization_person_role_id integer  ,
	ref_teacher_education_credential_exam_id integer  ,
	ref_teacher_education_exam_score_type_id integer  ,
	ref_teacher_education_test_company_id integer  ,
	CONSTRAINT pk_teacher_edu_credential_exam PRIMARY KEY ( teacher_education_credential_exam_id )
 );

COMMENT ON TABLE ceds6sc_rdx.teacher_education_credential_exam IS 'The exam and score of a person on a teaching credential exam.';

COMMENT ON COLUMN ceds6sc_rdx.teacher_education_credential_exam.teacher_education_credential_exam_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.teacher_education_credential_exam.organization_person_role_id IS 'Foreign key - Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.teacher_education_credential_exam.ref_teacher_education_credential_exam_id IS 'The type of examination used to assess teacher candidate''s knowledge and skills. [CEDS Element: Teacher Education Credential Exam Type, ID:000773]  (Foreign key - Ref_Teacher_Edu_Credential_Exam)';

COMMENT ON COLUMN ceds6sc_rdx.teacher_education_credential_exam.ref_teacher_education_exam_score_type_id IS 'An indication of the type of credential exam associated with a given exam score. [CEDS Element: Teacher Education Credential Exam Score Type, ID:000774]  (Foreign key - Ref_Teacher_Edu_Exam_Score_Type)';

COMMENT ON COLUMN ceds6sc_rdx.teacher_education_credential_exam.ref_teacher_education_test_company_id IS 'The name of the company that provides the examination used in the teacher education program. [CEDS Element: Teacher Education Test Company, ID:000766]';

CREATE TABLE ceds6sc_rdx.workforce_employment_quarterly_data ( 
	organization_person_role_id integer  NOT NULL,
	ref_employed_while_enrolled_id integer  ,
	ref_employed_after_exit_id integer  ,
	employed_in_multiple_jobs_count decimal(2,0)  ,
	military_enlistment_after_exit bool  ,
	CONSTRAINT pk_workforce_employment_quarterly_data PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.workforce_employment_quarterly_data IS 'Employment attributes reported for workforce quarterly data.';

COMMENT ON COLUMN ceds6sc_rdx.workforce_employment_quarterly_data.organization_person_role_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.workforce_employment_quarterly_data.ref_employed_while_enrolled_id IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, and at the same time is enrolled in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed While Enrolled, ID:000987]';

COMMENT ON COLUMN ceds6sc_rdx.workforce_employment_quarterly_data.ref_employed_after_exit_id IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, after exiting secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed After Exit, ID:000988]';

COMMENT ON COLUMN ceds6sc_rdx.workforce_employment_quarterly_data.employed_in_multiple_jobs_count IS 'The number of jobs held by a person. [CEDS Element: Person Employed in Multiple Jobs Count, ID:000991]';

COMMENT ON COLUMN ceds6sc_rdx.workforce_employment_quarterly_data.military_enlistment_after_exit IS 'An individual who is a member of the uniformed armed forces of the United States as reported through FEDES after exiting secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Military Enlistment After Exit, ID: 001412]';

CREATE TABLE ceds6sc_rdx.achievement ( 
	achievement_id       integer  NOT NULL,
	person_id            integer  NOT NULL,
	title                varchar(300)  ,
	description          varchar(300)  ,
	category             varchar(60)  ,
	category_system      varchar(50)  ,
	image_url            varchar(300)  ,
	criteria             varchar(300)  ,
	criteria_url         varchar(300)  ,
	competency_set_id    integer  ,
	start_date           date  ,
	end_date             date  ,
	award_issuer_name    varchar(128)  ,
	award_issuer_origin_url varchar(300)  ,
	CONSTRAINT pk_achievement PRIMARY KEY ( achievement_id )
 );

COMMENT ON TABLE ceds6sc_rdx.achievement IS 'An achievement earned by a learner upon fulfilling a specified criteria, which may be defined by a related a Competency Set.
';

COMMENT ON COLUMN ceds6sc_rdx.achievement.achievement_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.achievement.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN ceds6sc_rdx.achievement.title IS 'The title assigned to the achievement. [CEDS Element: Achievement Title, ID:000893]';

COMMENT ON COLUMN ceds6sc_rdx.achievement.description IS 'A description of the achievement. [CEDS Element: Achievement Description, ID:000895]';

COMMENT ON COLUMN ceds6sc_rdx.achievement.category IS 'The category of achievement attributed to the learner. [CEDS Element: Achievement Category Type, ID:000892]';

COMMENT ON COLUMN ceds6sc_rdx.achievement.category_system IS 'The system that defines the categories by which an  achievement is attributed to the learner. [CEDS Element: Achievement Category System, ID:001245]';

COMMENT ON COLUMN ceds6sc_rdx.achievement.image_url IS 'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the achievement. [CEDS Element: Achievement Image URL, ID:000894]';

COMMENT ON COLUMN ceds6sc_rdx.achievement.criteria IS 'The criteria for competency-based completion of the achievement/award. [CEDS Element: Achievement Criteria, ID:000896]';

COMMENT ON COLUMN ceds6sc_rdx.achievement.criteria_url IS 'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award. [CEDS Element: Achievement Criteria URL, ID:001153]';

COMMENT ON COLUMN ceds6sc_rdx.achievement.competency_set_id IS 'Foreign key - Competency_Set';

COMMENT ON COLUMN ceds6sc_rdx.achievement.start_date IS 'The date on which the achievement was conferred. [CEDS Element: Achievement Start Date, ID:001163]';

COMMENT ON COLUMN ceds6sc_rdx.achievement.end_date IS 'The date, if any, on which the award or achievement expires or requires renewal. [CEDS Element: Achievement End Date, ID:001164]';

COMMENT ON COLUMN ceds6sc_rdx.achievement.award_issuer_name IS 'The name of the agent issuing the award. [CEDS Element: Achievement Award Issuer Name, ID:000898]';

COMMENT ON COLUMN ceds6sc_rdx.achievement.award_issuer_origin_url IS 'The Uniform Resource Locator (URL) from which the award was issued. [CEDS Element: Achievement Award Issuer Origin URL, ID:000900]';

CREATE TABLE ceds6sc_rdx.activity ( 
	organization_id      integer  NOT NULL,
	activity_description varchar(300)  ,
	CONSTRAINT pk_activity PRIMARY KEY ( organization_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.activity.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN ceds6sc_rdx.activity.activity_description IS 'A description of the events and procedures that take place under the purview of an organized activity, such as a co-curricular or extra-curricular activity that is offered at an education institution. [CEDS Element: Activity Description, ID:001530]';

CREATE TABLE ceds6sc_rdx.ae_course ( 
	organization_id      integer  NOT NULL,
	ref_course_level_type_id integer  ,
	ref_career_cluster_id integer  ,
	CONSTRAINT pk_ae_course PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ae_course IS 'The organization of subject matter and related learning experiences provided for the instruction of students on a regular or systematic basis, usually for a predetermined period of time (e.g., a semester or two-week workshop) to an individual or group of students (e.g., a class). ';

COMMENT ON COLUMN ceds6sc_rdx.ae_course.organization_id IS 'Inherited surrogate key from Course';

COMMENT ON COLUMN ceds6sc_rdx.ae_course.ref_course_level_type_id IS 'The level of work which is reflected in the credits associated with the academic course being described or the level of the typical individual taking the academic course. [CEDS Element: Course Level Type, ID:001312]';

COMMENT ON COLUMN ceds6sc_rdx.ae_course.ref_career_cluster_id IS 'The career cluster that defines the industry or occupational focus which may be associated with a career pathways program, plan of study, or course. [CEDS Element: Career Cluster, ID:001288]';

CREATE TABLE ceds6sc_rdx.ae_staff ( 
	organization_person_role_id integer  NOT NULL,
	ref_ae_staff_classification_id integer  ,
	ref_ae_staff_employment_status_id integer  ,
	years_of_prior_ae_teaching_experience decimal(4,2)  ,
	ref_ae_certification_type_id integer  ,
	CONSTRAINT pk_ae_staff PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ae_staff IS 'Adult education staff information.';

COMMENT ON COLUMN ceds6sc_rdx.ae_staff.organization_person_role_id IS 'Inherited surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.ae_staff.ref_ae_staff_classification_id IS 'The titles of employment, official status, or rank of adult education staff. [CEDS Element: Adult Education Staff Classification, ID:000786]  (Foreign key - Ref_Ae_Staff_Classification)';

COMMENT ON COLUMN ceds6sc_rdx.ae_staff.ref_ae_staff_employment_status_id IS 'The condition under which a person has agreed to serve an employer. [CEDS Element: Adult Education Staff Employment Status, ID:001083]  (Foreign key - Ref_Ae_Staff_Employment_Status)';

COMMENT ON COLUMN ceds6sc_rdx.ae_staff.years_of_prior_ae_teaching_experience IS 'The total number of years that a person has previously held a teaching position in one or more adult education programs. [CEDS Element: Years of Prior Adult Education Teaching Experience, ID:000788]';

COMMENT ON COLUMN ceds6sc_rdx.ae_staff.ref_ae_certification_type_id IS 'An indication of the category of certification a person holds. [CEDS Element: Adult Education Certification Type, ID:001085]  (Foreign key - Ref_Ae_Certification_Type)';

CREATE TABLE ceds6sc_rdx.ae_student_employment ( 
	organization_person_role_id integer  NOT NULL,
	ref_employed_while_enrolled_id integer  ,
	ref_employed_after_exit_id integer  ,
	employment_naics_code char(6)  ,
	CONSTRAINT pk_ae_student_employment PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.ae_student_employment IS 'Employment information for an adult education student.';

COMMENT ON COLUMN ceds6sc_rdx.ae_student_employment.organization_person_role_id IS 'Surrogate Key - Foreign key: Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.ae_student_employment.ref_employed_while_enrolled_id IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, and at the same time is enrolled in secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed While Enrolled, ID:000987]';

COMMENT ON COLUMN ceds6sc_rdx.ae_student_employment.ref_employed_after_exit_id IS 'An individual who is a paid employee or works in his or her own business, profession, or farm, as reported through the State Unemployment Insurance Wage Report, FEDES, or WRIS, after exiting secondary, postsecondary, or adult education or workforce programs. [CEDS Element: Employed After Exit, ID:000988]';

COMMENT ON COLUMN ceds6sc_rdx.ae_student_employment.employment_naics_code IS 'The North American Industry Classification System (NAICS) code associated with an individual''s employment. [CEDS Element: Employment NAICS Code, ID:001064]';

CREATE TABLE ceds6sc_rdx.assessment_administration ( 
	assessment_administration_id integer  NOT NULL,
	assessment_id        integer  ,
	name                 varchar(30)  ,
	code                 varchar(30)  ,
	start_date           date  ,
	start_time           time  ,
	finish_date          date  ,
	finish_time          time  ,
	ref_assessment_reporting_method_id integer  ,
	assessment_secure_indicator bool  ,
	assessment_administration_period_description varchar(300)  ,
	CONSTRAINT pk_assessment_administration PRIMARY KEY ( assessment_administration_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_administration IS 'Information related to an assessment event or administration period. It includes information related to the time period of administration, and place(s) of administration .';

COMMENT ON COLUMN ceds6sc_rdx.assessment_administration.assessment_administration_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_administration.assessment_id IS 'Foreign key - Assessment';

COMMENT ON COLUMN ceds6sc_rdx.assessment_administration.name IS 'The name given to an assessment event. [CEDS Element: Assessment Administration Name, ID:000977]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_administration.code IS 'The code given to the assessment event by a state or other authority directing overall administration. [CEDS Element: Assessment Administration Code, ID:000961]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_administration.start_date IS 'The start date of the time period designated for the assessment administration. [CEDS Element: Assessment Administration Start Date, ID:000962]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_administration.start_time IS 'The start time of the time period designated for the assessment administration. [CEDS Element: Assessment Administration Start Time, ID:000963]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_administration.finish_date IS 'The finish date of the time period designated for the assessment administration. [CEDS Element: Assessment Administration Finish Date, ID:000964]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_administration.finish_time IS 'The finish time of the time period designated for the assessment administration. [CEDS Element: Assessment Administration Finish Time, ID:000965]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_administration.ref_assessment_reporting_method_id IS 'Foreign key - Ref_Assessment_Reporting_Method';

COMMENT ON COLUMN ceds6sc_rdx.assessment_administration.assessment_secure_indicator IS 'Indicates whether or not the assessment is a secure assessment. [CEDS Element: Assessment Secure Indicator, ID:000384]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_administration.assessment_administration_period_description IS 'The period or window in which an assessment is supposed to be administered. [CEDS Element: Assessment Administration Period Description, ID:001531]';

CREATE TABLE ceds6sc_rdx.assessment_assessment_administration ( 
	assessment_assessment_administration_id integer  NOT NULL,
	assessment_id        integer  NOT NULL,
	assessment_administration_id integer  NOT NULL,
	CONSTRAINT pk_assessment_assessment_administration PRIMARY KEY ( assessment_assessment_administration_id ),
	CONSTRAINT ix_assessment_assessment_administration UNIQUE ( assessment_id, assessment_administration_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_assessment_administration IS 'The association of an Assessment to an instance of Assessment Administration.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_assessment_administration.assessment_assessment_administration_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_assessment_administration.assessment_id IS 'Foreign key - Assessment';

COMMENT ON COLUMN ceds6sc_rdx.assessment_assessment_administration.assessment_administration_id IS 'Foreign key - Assessment Administration';

CREATE TABLE ceds6sc_rdx.assessment_el_developmental_domain ( 
	assessment_el_developmental_domain_id integer  NOT NULL,
	assessment_id        integer  NOT NULL,
	ref_assessment_el_developmental_domain_id integer  NOT NULL,
	CONSTRAINT pk_assessment_el_developmental_domain PRIMARY KEY ( assessment_el_developmental_domain_id ),
	CONSTRAINT ix_assessment_el_developmental_domain UNIQUE ( assessment_id, ref_assessment_el_developmental_domain_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_el_developmental_domain IS 'Developmental domains related to early learning and used for assessing a child''s kindergarten readiness. [CEDS Element: Assessment Early Learning Developmental Domain, ID:001000]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_el_developmental_domain.assessment_el_developmental_domain_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_el_developmental_domain.assessment_id IS 'Foreign key - Assessment';

COMMENT ON COLUMN ceds6sc_rdx.assessment_el_developmental_domain.ref_assessment_el_developmental_domain_id IS 'Foreign key - Ref_Assessment_EL_Developmental_Domain';

CREATE TABLE ceds6sc_rdx.assessment_form_assessment_asset ( 
	assessment_form_assessment_asset_id integer  NOT NULL,
	assessment_form_id   integer  NOT NULL,
	assessment_asset_id  integer  NOT NULL,
	CONSTRAINT pk_assessment_form_assessment_asset PRIMARY KEY ( assessment_form_assessment_asset_id ),
	CONSTRAINT ix_assessment_form_assessment_asset UNIQUE ( assessment_form_id, assessment_asset_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_form_assessment_asset IS 'The association of an Assessment Form to an Assessment Asset.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_assessment_asset.assessment_form_assessment_asset_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_assessment_asset.assessment_form_id IS 'Foreign key - Assessment_Form';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_assessment_asset.assessment_asset_id IS 'Foreign key - Assessment_Asset';

CREATE TABLE ceds6sc_rdx.assessment_form_section ( 
	assessment_form_section_id integer  NOT NULL,
	identifier           varchar(40)  ,
	ref_assessment_form_section_identification_system_id integer  ,
	published_date       date  ,
	version            varchar(30)  ,
	section_time_limit   time  ,
	section_sealed       bool  ,
	section_reentry      bool  ,
	assessment_item_bank_identifier varchar(40)  ,
	assessment_item_bank_name varchar(60)  ,
	child_of_form_section_id integer  ,
	learning_resource_id integer  ,
	guid                 varchar(40)  ,
	CONSTRAINT pk_assessment_form_section PRIMARY KEY ( assessment_form_section_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_form_section IS 'A section for an Assessment Form.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section.assessment_form_section_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section.identifier IS 'A unique number or alphanumeric code assigned to the Assessment Form Section using the system specified by Identification System for Assessment Form Section. [CEDS Element: Assessment Form Section Identifier, ID:001191]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section.ref_assessment_form_section_identification_system_id IS 'A coding scheme that is used for identification of an Assessment Form Section. [CEDS Element: Identification System for Assessment Form Section, ID:001190]  (Foreign key - Ref_Assessment_Form_Section_Identification_System)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section.published_date IS 'The published date of an educational resource, such as instructional media, an assessment form, or section of an assessment form. [CEDS Element: Learning Resource Published Date, ID:001184]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section.version IS 'The version number of the Assessment Form Section. [CEDS Element: Assessment Form Section Version, ID:001189]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section.section_time_limit IS 'If this section is timed, then this will identify the maximum amount of time the test taker can spend within this section. [CEDS Element: Assessment Form Section Time Limit, ID:001192]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section.section_sealed IS 'Indicates this section is sealed, meaning the test taker cannot enter the section until authorized by the proctor. [CEDS Element: Assessment Form Section Sealed, ID:001193]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section.section_reentry IS 'Indicates that this section can be re-entered, meaning the test taker can return to this section after they have left the section. A common example of this is a two section test where one section does not allow the use of a calculator and the other does. Typically the test taker cannot return to the non-calculator section after they have used a calculator. [CEDS Element: Assessment Form Section Reentry, ID:001194]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section.assessment_item_bank_identifier IS 'If the assessment is provided with an item bank, then this identifies the item bank: a unique code or number used by the item banking system. [CEDS Element: Assessment Item Bank Identifier, ID:001181]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section.assessment_item_bank_name IS 'If the assessment is provided with an item bank, then this is the name of the item bank. [CEDS Element: Assessment Item Bank Name, ID:001182]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section.child_of_form_section_id IS 'Foreign key - Assessment_Form_Section (this table)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section.learning_resource_id IS 'Foreign key - Learning_Resource';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section.guid IS 'The globally unique identifier of an Assessment Form Section using a RFC 4122 compliant 32-character hexadecimal string, such as 21EC2020-3AEA-1069-A2DD-08002B30309D. [CEDS Element: Assessment Form Section GUID, ID:000980]';

CREATE TABLE ceds6sc_rdx.assessment_form_section_assessment_item ( 
	assessment_form_section_item_id integer  NOT NULL,
	sequence_number      integer  NOT NULL,
	assessment_form_section_id integer  NOT NULL,
	assessment_item_id   integer  NOT NULL,
	CONSTRAINT pk_assessment_form_section_assessment_item PRIMARY KEY ( assessment_form_section_item_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_form_section_assessment_item IS 'The association of an Assessment Item to an Assessment Form Section.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section_assessment_item.assessment_form_section_item_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section_assessment_item.sequence_number IS 'The position of the assessment section presented in the sequence of sections within an assessment form. [CEDS Element: Assessment Form Section Sequence Number, ID:000979]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section_assessment_item.assessment_form_section_id IS 'Foreign key - Assessment_Form_Section';

COMMENT ON COLUMN ceds6sc_rdx.assessment_form_section_assessment_item.assessment_item_id IS 'Foreign key - Assessment_Item';

CREATE TABLE ceds6sc_rdx.assessment_item_apip ( 
	assessment_item_id   integer  NOT NULL,
	adaptive_indicator   bool  ,
	response_processing_template_url varchar(300)  ,
	response_processing_xml text  ,
	response_declaration_xml text  ,
	outcome_declaration_xml text  ,
	template_declaration_xml text  ,
	template_processing_xml text  ,
	modal_feedback_xml   text  ,
	item_body_xml        text  ,
	CONSTRAINT pk_assessment_item_body PRIMARY KEY ( assessment_item_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_item_apip IS 'The templates, processing and declaration data for an assessment item APIP.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_apip.assessment_item_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_apip.adaptive_indicator IS 'This indicator determines whether an assessment item is an adaptive item. [CEDS Element: Assessment Item Adaptive Indicator, ID:001139]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_apip.response_processing_template_url IS 'These templates are described using the processing language defined in IMS Global APIP specification and are distributed (in XML form) along with it. Delivery engines that support generalized response processing do not need to implement special mechanisms to support them as a template file can be parsed directly while processing the assessment item that refers to it. This element provides the URL for the template. [CEDS Element: Assessment Item APIP Response Processing Template URL, ID:001131]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_apip.response_processing_xml IS 'Response processing is the process by which the Delivery Engine assigns outcomes based on the learner''s responses. The outcomes may be used to provide feedback to the learner Feedback is either provided immediately following the end of the learner''s attempt or it is provided at some later time, perhaps as part of a summary report on the item session. The XML from the IMS Global APIP Specification would be included. [CEDS Element: Assessment Item APIP Response Processing XML, ID:001132]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_apip.response_declaration_xml IS 'Response declarations state what the response variables include.  The response declaration may assign an optional correct response. The XML from the IMS Global APIP Specification would be included. [CEDS Element: Assessment Item APIP Response Declaration XML, ID:001133]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_apip.outcome_declaration_xml IS 'Outcome variables are declared by outcome declarations. Their value is set either from a default given in the declaration itself or by a response_Rule during response processing.  The XML from the IMS Global APIP Specification would be included. [CEDS Element: Assessment Item APIP Outcome Declaration XML, ID:001134]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_apip.template_declaration_xml IS 'Template declarations declare item variables that are to be used specifically for the purposes of cloning items. They can have their value set only during template processing. They are referred to within the item body in order to individualize the clone and possibly also within the response Processing rules if the cloning process affects the way the item is scored.  The XML from the IMS Global APIP Specification would be included. [CEDS Element: Assessment Item APIP Template Declaration XML, ID:001135]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_apip.template_processing_xml IS 'Template processing consists of one or more template rules that are followed by the cloning engine or delivery system in order to assign values to the template variables. Template processing is identical in form to response_Processing except that the purpose is to assign values to template variables, not outcome variables. The XML from the IMS Global APIP Specification would be included. [CEDS Element: Assessment Item APIP Template Processing XML, ID:001136]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_apip.modal_feedback_xml IS 'Modal feedback is shown to the candidate directly following response processing. The value of an outcome variable is used in conjunction with the show_Hide and identifier attributes to determine whether or not the feedback is shown in a similar way to feedback_Element. The XML from the IMS Global APIP Specification would be included. [CEDS Element: Assessment Item APIP Modal Feedback XML, ID:001137]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_apip.item_body_xml IS 'The item body contains the text, graphics, media objects, and interactions that describe the item''s content and information about how it is structured. The body is presented by combining it with stylesheet information, either explicitly or implicitly using the default style rules of the delivery or authoring system. This element contains the appropriate XML from the IMS Global APIP Specification defining the various item body interactions. [CEDS Element: Assessment Item APIP Item Body XML, ID:001138]';

CREATE TABLE ceds6sc_rdx.assessment_item_characteristic ( 
	assessment_item_characteristic_id integer  NOT NULL,
	assessment_item_id   integer  NOT NULL,
	ref_assessment_item_characteristic_type_id integer  ,
	value              varchar(30)  ,
	response_choice_pattern varchar(100)  ,
	CONSTRAINT pk_assessment_item_characteristic PRIMARY KEY ( assessment_item_characteristic_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_item_characteristic IS 'The type and value for a psychometric measure.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_characteristic.assessment_item_characteristic_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_characteristic.assessment_item_id IS 'Foreign key - Assessment_Item';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_characteristic.ref_assessment_item_characteristic_type_id IS 'The type of psychometric measure provided for assessment item. [CEDS Element: Assessment Item Characteristic Type, ID:000392]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_characteristic.value IS 'A psychometric measure provided for an assessment item. [CEDS Element: Assessment Item Characteristic Value, ID:000709]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_characteristic.response_choice_pattern IS 'The distribution of responses for each choice in the assessment item. [CEDS Element: Assessment Item Response Choice Pattern, ID:000393]';

CREATE TABLE ceds6sc_rdx.assessment_item_response ( 
	assessment_item_response_id integer  NOT NULL,
	value              varchar(300)  ,
	score_value          varchar(60)  ,
	ref_assess_item_response_status_id integer  ,
	ref_proficiency_status_id integer  ,
	aid_set_used         varchar(30)  ,
	descriptive_feedback varchar(300)  ,
	scaffolding_item_flag bool  ,
	hint_count           integer  ,
	hint_included_answer bool  ,
	duration             time  ,
	first_attempt_duration time  ,
	start_time           time  ,
	start_date           date  ,
	security_issue       varchar(300)  ,
	assessment_item_id   integer  NOT NULL,
	assessment_participant_session_id integer  NOT NULL,
	result_xml           text  ,
	assessment_item_response_descriptive_feedback_date date  ,
	ref_assessment_item_response_score_status_id integer  ,
	CONSTRAINT pk_assessment_item_response PRIMARY KEY ( assessment_item_response_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_item_response IS 'Information related to a specific response to an assessment item by the person being assessed. The entity includes the response, a score or indication that the response was correct or incorrect and other information such as response time. ';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.assessment_item_response_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.value IS 'A specific response to an assessment item by the person being assessed. [CEDS Element: Assessment Item Response Value, ID:001063]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.score_value IS 'The score given to a person''s response to an assessment item. [CEDS Element: Assessment Item Response Score Value, ID:000724]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.ref_assess_item_response_status_id IS 'The status of the response for a given item. [CEDS Element: Assessment Item Response Status, ID:000405]  (Foreign key - Ref_Assessment_Item_Response_Status)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.ref_proficiency_status_id IS 'An indication of whether a student''s scores were proficient. [CEDS Element: Proficiency Status, ID:000573]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.aid_set_used IS 'A tool or aid set used while viewing the item. This can include things like a calculator, reference tools, etc. [CEDS Element: Assessment Item Response Aid Set Used, ID:000406]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.descriptive_feedback IS 'The formative descriptive feedback that was given to a learner in response to the results from a scored/evaluated assessment item. [CEDS Element: Assessment Item Response Descriptive Feedback, ID:000891]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.scaffolding_item_flag IS 'Indicates that the response is to a scaffolding problem rather than the main/assigned problem.  A scaffolding item is a follow-up formative assessment item used to assess prerequisite or component skills, presented immediately after a learner gives an incorrect answer on the previous item. [CEDS Element: Assessment Item Response Scaffolding Item Flag, ID:000954]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.hint_count IS 'The total number of hints presented as the learner responded to a formative assessment item.  This may include hints requested by the learner or hints automatically presented such as in an online tutoring system. Presentation of a scaffolding item is a separate response record and not counted as a hint. [CEDS Element: Assessment Item Response Hint Count, ID:000955]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.hint_included_answer IS 'Indicates that one of the hints presented included the correct answer. [CEDS Element: Assessment Item Response Hint Included Answer, ID:000956]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.duration IS 'The total amount of time in seconds or milliseconds  that a person spent responding to a given assessment item. [CEDS Element: Assessment Item Response Duration, ID:000402]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.first_attempt_duration IS 'The amount of time in seconds or milliseconds that a person took to give an initial response, a first attempt to answer a formative assessment item. [CEDS Element: Assessment Item Response First Attempt Duration, ID:000957]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.start_time IS 'The time of day that the assessment item was presented to the learner. [CEDS Element: Assessment Item Response Start Time, ID:000958]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.start_date IS 'The date on which the assessment item was presented to the learner. [CEDS Element: Assessment Item Response Start Date, ID:000959]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.security_issue IS 'The description of security issue, if any, related to a learner''s response to an assessment item. [CEDS Element: Assessment Item Response Security Issue, ID:000969]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.assessment_item_id IS 'Foreign key - Assessment_Item.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.assessment_participant_session_id IS 'Foreign key - Assessment_Participant_Session';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.result_xml IS 'The assessment item result formatted according to the IMS Global QTI Specification. [CEDS Element: Assessment Item Result XML, ID: 001284]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.assessment_item_response_descriptive_feedback_date IS 'The date and time the descriptive feedback was entered in response to the results from a scored/evaluated assessment item. [CEDS Element: Assessment Item Response Descriptive Feedback Date, ID:001537]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_item_response.ref_assessment_item_response_score_status_id IS 'The status of scoring a person''s response to an assessment item. [CEDS Element: Assessment Item Response Score Status, ID:001538]';

CREATE TABLE ceds6sc_rdx.assessment_item_rubric_criterion_result ( 
	assessment_item_response_id integer  NOT NULL,
	rubric_criterion_level_id integer  NOT NULL,
	CONSTRAINT pk_assessment_item_rubric_criterion_result PRIMARY KEY ( assessment_item_response_id, rubric_criterion_level_id )
 );

CREATE TABLE ceds6sc_rdx.assessment_levels_for_which_designed ( 
	assessment_levels_for_which_designed_id integer  NOT NULL,
	assessment_id        integer  NOT NULL,
	ref_grade_level_id   integer  NOT NULL,
	CONSTRAINT pk_assessment_levels_for_which_designed PRIMARY KEY ( assessment_levels_for_which_designed_id ),
	CONSTRAINT ix_assessment_levels_for_which_designed UNIQUE ( assessment_id, ref_grade_level_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_levels_for_which_designed IS 'The association of an Assessment to one or more grade levels for which the assessment is designed.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_levels_for_which_designed.assessment_levels_for_which_designed_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_levels_for_which_designed.assessment_id IS 'Foreign key - Assessment';

COMMENT ON COLUMN ceds6sc_rdx.assessment_levels_for_which_designed.ref_grade_level_id IS 'Foreign key - Ref_Grade_Level';

CREATE TABLE ceds6sc_rdx.assessment_need_apip_control ( 
	assessment_need_apip_control_id integer  NOT NULL,
	assessment_personal_needs_profile_control_id integer  NOT NULL,
	assessment_need_time_multiplier varchar(9)  ,
	line_reader_highlight_color char(6)  ,
	overlay_color        char(6)  ,
	background_color     char(6)  ,
	ref_assessment_need_increased_whitespacing_type_id integer  ,
	CONSTRAINT pk_assessment_need_apip_control PRIMARY KEY ( assessment_need_apip_control_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_need_apip_control IS 'Used as part of an Assessment Personal Needs Profile to define the control attributes.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_control.assessment_need_apip_control_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_control.assessment_personal_needs_profile_control_id IS 'Foreign key - Assessment_Personal_Needs_Profile_Control';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_control.assessment_need_time_multiplier IS 'Defines the multiplier to be applied to the time limit to determine the total testing time allowed when Additional Testing Time is specified as part of an Assessment Personal Needs Profile.  If the value is ‘unlimited’ then there is no time limit for the test. [CEDS Element: Assessment Need Time Multiplier, ID:001049]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_control.line_reader_highlight_color IS 'The color defined as part of an Assessment Personal Needs Profile to be used to highlight the point of line reader activity i.e. the line being read. [CEDS Element: Assessment Need Line Reader Highlight Color, ID:001050]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_control.overlay_color IS 'This is the preferred color for the overlay for screen enhancement defined as part of an Assessment Personal Needs Profile. [CEDS Element: Assessment Need Overlay Color, ID:001051]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_control.background_color IS 'This is the preferred Background color for screen enhancement defined as part of an Assessment Personal Needs Profile. [CEDS Element: Assessment Need Background Color, ID:001053]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_apip_control.ref_assessment_need_increased_whitespacing_type_id IS 'Defines the user preferences for white spacing in lines, words and characters as part of an Assessment Personal Needs Profile. [CEDS Element: Assessment Need Increased Whitespacing Type, ID:001054]  (Foreign key - Ref_Assessment_Need_Increased_Whitespacing_Type)';

CREATE TABLE ceds6sc_rdx.assessment_need_braille ( 
	assessment_need_braille_id integer  NOT NULL,
	assessment_personal_needs_profile_display_id integer  ,
	ref_assessment_need_usage_type_id integer  ,
	ref_assessment_need_braille_grade_type_id integer  ,
	ref_assessment_need_number_of_braille_dots_id integer  ,
	number_of_braille_cells integer  ,
	ref_assessment_need_braille_mark_type_id integer  ,
	braille_dot_pressure decimal(10,4)  ,
	ref_assessment_need_braille_status_cell_type_id integer  ,
	CONSTRAINT pk_assessment_need_braille PRIMARY KEY ( assessment_need_braille_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_need_braille IS 'Defines as part of an Assessment Personal Needs Profile the attributes for Braille display';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_braille.assessment_need_braille_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_braille.assessment_personal_needs_profile_display_id IS 'Foreign key - Assessment_Person_Need_Profile_Display.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_braille.ref_assessment_need_usage_type_id IS 'Defines as part of an Assessment Personal Needs Profile the rating for the collection of Access for All (Af_A) needs and preferences. [CEDS Element: Assessment Need Usage Type, ID:001026]  (Foreign key - Ref_Assessment_Need_Usage_Type)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_braille.ref_assessment_need_braille_grade_type_id IS 'Defines as part of an Assessment Personal Needs Profile the grade of Braille to use when using a Braille display. [CEDS Element: Assessment Need Braille Grade Type, ID:001032]  (Foreign key - Ref_Assessment_Need_Braille_Grade)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_braille.ref_assessment_need_number_of_braille_dots_id IS 'Defines as part of an Assessment Personal Needs Profile the number of dots in a Braille cell. [CEDS Element: Assessment Need Number of Braille Dots Type, ID:001033]  (Foreign key - Ref_Assessment_Need_Number_Of_Braille_Dots)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_braille.number_of_braille_cells IS 'Defines as part of an Assessment Personal Needs Profile the number of active Braille cells in a Braille display. [CEDS Element: Assessment Need Number of Braille Cells, ID:001034]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_braille.ref_assessment_need_braille_mark_type_id IS 'Defines as part of an Assessment Personal Needs Profile what textual properties to mark when using a Braille display. [CEDS Element: Assessment Need Braille Mark Type, ID:001035]  (Foreign key - Ref_Assessment_Need_Braille_Mark_Type)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_braille.braille_dot_pressure IS 'Defines as part of an Assessment Personal Needs Profile the resistance pressure of Braille display pins. [CEDS Element: Assessment Need Braille Dot Pressure, ID:001036]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_need_braille.ref_assessment_need_braille_status_cell_type_id IS 'Defines as part of an Assessment Personal Needs Profile the preferred presence or location of a Braille display status cell. [CEDS Element: Assessment Need Braille Status Cell Type, ID:001037]  (Foreign key - Ref_Assessment_Need_Braille_Status_Cell_Type)';

CREATE TABLE ceds6sc_rdx.assessment_participant_session ( 
	assessment_participant_session_id integer  NOT NULL,
	actual_start_date_time date  ,
	actual_end_date_time date  ,
	time_assessed        varchar(30)  ,
	ref_assessment_platform_type_id integer  ,
	delivery_device_details varchar(300)  ,
	security_issue       varchar(300)  ,
	ref_assessment_session_special_circumstance_type_id integer  ,
	special_event_description varchar(60)  ,
	location_id          integer  ,
	ref_language_id      integer  ,
	assessment_form_section_id integer  ,
	assessment_session_id integer  NOT NULL,
	assessment_registration_id integer  ,
	assessment_participant_session_database_name varchar(300)  ,
	assessment_participant_session_guid varchar(40)  ,
	CONSTRAINT pk_assessment_participant_session PRIMARY KEY ( assessment_participant_session_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_participant_session IS 'An entity that includes information about a specific person''s participation in an Assessment Session. ';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.assessment_participant_session_id IS 'PK';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.actual_start_date_time IS 'Date and time the assessment actually began. [CEDS Element: Assessment Session Actual Start Date Time, ID:001021]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.actual_end_date_time IS 'Date and time the assessment actually ended. [CEDS Element: Assessment Session Actual End Date Time, ID:001022]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.time_assessed IS 'The overall time a learner actually spent during the  assessment session. [CEDS Element: Assessment Participant Session Time Assessed, ID:000407]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.ref_assessment_platform_type_id IS 'The platform with which the assessment was delivered to the student during the assessment session. [CEDS Element: Assessment Participant Session Platform Type, ID:000386]  (Foreign key - Ref_Assessment_Platform_Type)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.delivery_device_details IS 'The details about the device or platform by with which the assessment was delivered to the learner. [CEDS Element: Assessment Participant Session Delivery Device Details, ID:001003]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.security_issue IS 'The description of a security issue, if any, discovered for an administration of an assessment, such as suspected cheating by a student or a teacher changing answers after a student takes the test. [CEDS Element: Assessment Session Security Issue, ID:000968]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.ref_assessment_session_special_circumstance_type_id IS 'An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc. [CEDS Element: Assessment Session Special Circumstance Type, ID:000389]  (Foreign key - Ref_Assessment_Special_Circumstance)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.special_event_description IS 'Describes special events that occur before during or after the assessment session that may impact use of results according to rules related to the Assessment Registration Testing Indicator. [CEDS Element: Assessment Session Special Event Description, ID:001093]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.location_id IS 'The description of the place where an assessment is administered. [CEDS Element: Assessment Session Location, ID:000597]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.ref_language_id IS 'The language that the assessment is administered. [CEDS Element: Assessment Participant Session Language, ID:000371]  (Foreign key - Ref_Language)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.assessment_form_section_id IS 'Foreign key - Assessment_Form_Section';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.assessment_session_id IS 'Foreign key - Assessment_Session';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.assessment_registration_id IS 'Foreign key - Assessment_Registration';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.assessment_participant_session_database_name IS 'The name of the database that was used to administer the test. [CEDS Element: Assessment Participant Session Database Name, ID:001539]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_participant_session.assessment_participant_session_guid IS 'A globally unique identifier for an instance of a person taking an assessment. [CEDS Element: Assessment Participant Session GUID, ID:001540]';

CREATE TABLE ceds6sc_rdx.assessment_performance_level ( 
	assessment_performance_level_id integer  NOT NULL,
	identifier           varchar(40)  ,
	assessment_subtest_id integer  ,
	score_metric         varchar(30)  ,
	label                varchar(20)  ,
	lower_cut_score      varchar(30)  ,
	upper_cut_score      varchar(30)  ,
	descriptive_feedback text  ,
	CONSTRAINT pk_assessment_performance_level PRIMARY KEY ( assessment_performance_level_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_performance_level IS 'Information about levels of performance used to classify or label the results of an assessment.  Four styles are supported:
   1. Specification of performance level by lower and upper cut scores
   2. Specification of performance level by cut score - lower only
   3. Specification of performance level without any mapping to scores
   4. Specification of performance level with mapping to other scores';

COMMENT ON COLUMN ceds6sc_rdx.assessment_performance_level.assessment_performance_level_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_performance_level.identifier IS 'A unique number or alphanumeric code assigned to an assessment performance level. [CEDS Element: Assessment Performance Level Identifier, ID:000717]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_performance_level.assessment_subtest_id IS 'Foreign key - Assessment_Subtest';

COMMENT ON COLUMN ceds6sc_rdx.assessment_performance_level.score_metric IS 'The metric or scale used for score reporting. [CEDS Element: Assessment Performance Level Score Metric, ID:000417]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_performance_level.label IS 'A label representing the performance level appropriate for use on a report. [CEDS Element: Assessment Performance Level Label, ID:000718]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_performance_level.lower_cut_score IS 'Lowest possible score for the performance level. [CEDS Element: Assessment Performance Level Lower Cut Score, ID:000418]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_performance_level.upper_cut_score IS 'Highest possible score for the performance level. [CEDS Element: Assessment Performance Level Upper Cut Score, ID:000419]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_performance_level.descriptive_feedback IS 'A feedback message designed to be reported with the assessment performance level. [CEDS Element: Assessment Performance Level Descriptive Feedback, ID:001218]';

CREATE TABLE ceds6sc_rdx.assessment_personal_need_screen_reader ( 
	assessment_personal_need_screen_reader_id integer  NOT NULL,
	assessment_personal_needs_profile_display_id integer  NOT NULL,
	ref_assessment_need_usage_type_id integer  ,
	speech_rate          integer  ,
	pitch                decimal(10,4)  ,
	volume               decimal(10,4)  ,
	CONSTRAINT pk_assessment_personal_need_screen_reader PRIMARY KEY ( assessment_personal_need_screen_reader_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_personal_need_screen_reader IS 'Defines as part of an Assessment Personal Needs Profile the attributes for a screen reader.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_need_screen_reader.assessment_personal_need_screen_reader_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_need_screen_reader.assessment_personal_needs_profile_display_id IS 'Foreign key - Assessment_Personnal_Needs_Profile_Display';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_need_screen_reader.ref_assessment_need_usage_type_id IS 'Defines as part of an Assessment Personal Needs Profile the rating for the collection of Access for All (Af_A) needs and preferences. [CEDS Element: Assessment Need Usage Type, ID:001026]  (Foreign key - Ref_Assessment_Need_Usage_Type)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_need_screen_reader.speech_rate IS 'Defines as part of an Assessment Personal Needs Profile the rate of speech of a speech synthesizer. [CEDS Element: Assessment Need Speech Rate, ID:001028]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_need_screen_reader.pitch IS 'Defines as part of an Assessment Personal Needs Profile the pitch of a speech synthesizer. [CEDS Element: Assessment Need Pitch, ID:001087]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_need_screen_reader.volume IS 'Defines as part of an Assessment Personal Needs Profile the volume of a speech synthesizer. [CEDS Element: Assessment Need Volume, ID:001029]';

CREATE TABLE ceds6sc_rdx.assessment_personal_needs_profile_content ( 
	assessment_personal_needs_profile_content_id integer  NOT NULL,
	assessment_personal_needs_profile_id integer  NOT NULL,
	ref_assessment_need_hazard_type_id integer  ,
	ref_assessment_need_support_tool_id integer  ,
	cognitive_guidance_activate_by_default_indicator bool  ,
	cognitive_guidance_assigned_support_indicator bool  ,
	scaffolding_assigned_support_indicator bool  ,
	scaffolding_activate_by_default_indicator bool  ,
	chunking_assigned_support_indicator bool  ,
	chunking_activate_by_default_indicator bool  ,
	keyword_emphasis_assigned_support_indicator bool  ,
	keyword_emphasis_activate_by_default_indicator bool  ,
	reduced_answers_assigned_support_indicator bool  ,
	reduced_answers_activate_by_default_indicator bool  ,
	negatives_removed_assigned_support_indicator bool  ,
	negatives_removed_activate_by_default_indicator bool  ,
	ref_keyword_translations_language_id integer  ,
	keyword_translations_assigned_support_indicator bool  ,
	keyword_translations_activate_by_default_indicator bool  ,
	CONSTRAINT pk_assessment_needs_profile_content PRIMARY KEY ( assessment_personal_needs_profile_content_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile_content.assessment_personal_needs_profile_content_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile_content.assessment_personal_needs_profile_id IS 'Foreign key - Assessment_Personal_Needs_Profile';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile_content.ref_assessment_need_hazard_type_id IS 'Defines as part of an Assessment Personal Needs Profile a characteristic of a digital resource that may be specified as being dangerous to a user. [CEDS Element: Assessment Need Hazard Type, ID:001024]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile_content.ref_assessment_need_support_tool_id IS 'Defines as part of an Assessment Personal Needs Profile the electronic tool associated with a resource. [CEDS Element: Assessment Need Support Tool Type, ID:001025]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_personal_needs_profile_content.ref_keyword_translations_language_id IS 'Defines as part of an Assessment Personal Needs Profile the default language for the keyword translation. [CEDS Element: Assessment Need Keyword Translation Language Type, ID:001039]';

CREATE TABLE ceds6sc_rdx.assessment_registration ( 
	assessment_registration_id integer  NOT NULL,
	creation_date        date  ,
	days_of_instruction_prior_to_assessment integer  ,
	score_publish_date   date  ,
	test_attempt_identifier varchar(40)  ,
	retest_indicator     bool  ,
	course_section_organization_id integer  ,
	ref_assessment_participation_indicator_id integer  ,
	testing_indicator    varchar(300)  ,
	ref_assessment_purpose_id integer  ,
	ref_assessment_reason_not_tested_id integer  ,
	ref_assessment_reason_not_completing_id integer  ,
	ref_grade_level_to_be_assessed_id integer  ,
	ref_grade_level_when_assessed_id integer  ,
	person_id            integer  NOT NULL,
	assessment_form_id   integer  NOT NULL,
	organization_id      integer  ,
	school_organization_id integer  ,
	lea_organization_id  integer  ,
	assessment_administration_id integer  ,
	assigned_by_person_id integer  ,
	assessment_registration_completion_status_date_time date  ,
	ref_assessment_registration_completion_status_id integer  ,
	CONSTRAINT pk_assessment_registration PRIMARY KEY ( assessment_registration_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_registration IS 'Information related to a specific person registered for an Assessment Administration, assigned a specific  Assessment Form for participation in one or more Assessment Sessions.
';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.assessment_registration_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.creation_date IS 'Date/time assignment is made. [CEDS Element: Assessment Registration Creation Date, ID:001017]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.days_of_instruction_prior_to_assessment IS 'The number of days of instruction the student has taken prior to testing. [CEDS Element: Assessment Registration Days of Instruction, ID:001015]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.score_publish_date IS 'The date set by the testing program when the test scores are published.  For formative or classroom assessments, this will likely be the date when the scored the individual test.  For summative assessments, this date is likely set for a group of assessments when the processing system releases the scores. [CEDS Element: Assessment Registration Score Publish Date, ID:001056]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.test_attempt_identifier IS 'A unique identifier for the test attempt assigned by the delivery system. [CEDS Element: Assessment Registration Test Attempt Identifier, ID:001162]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.retest_indicator IS 'Indicates if this registration is for a retest (retake). Retest can occur if a student failed a prior attempt and is eligible to retake. Other retest scenarios also can occur. [CEDS Element: Assessment Registration Retest Indicator, ID:001016]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.course_section_organization_id IS 'Foreign key - Course_Section';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.ref_assessment_participation_indicator_id IS 'An indication of whether a student participated in an assessment. [CEDS Element: Assessment Registration Participation Indicator, ID:000025]  (Foreign key - Ref_Assessment_Participation_Indicator)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.testing_indicator IS 'Indicates rules about use of results based on Special Events before during or after the test.  The option set values are determined by the testing program. [CEDS Element: Assessment Registration Testing Indicator, ID:001055]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.ref_assessment_purpose_id IS 'The reason for which an assessment is designed or delivered. [CEDS Element: Assessment Purpose, ID:000026]  (Foreign key - Ref_Assessment_Purpose)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.ref_assessment_reason_not_tested_id IS 'The primary reason a student is not tested. [CEDS Element: Reason Not Tested, ID:000228]  (Foreign key - Ref_Assessment_Reason_Not_Tested)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.ref_assessment_reason_not_completing_id IS 'The primary reason a participant did not complete an assessment. [CEDS Element: Assessment Registration Reason Not Completing, ID:000540]  (Foreign key - Ref_Assessment_Reason_Not_Completing)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.ref_grade_level_to_be_assessed_id IS 'The grade or developmental level of a student when registering for an assessment, when taking the assessment, or for which an assessment is design.  [CEDS Elements: Grade Level When Assessed (000126), Assessment Registration Grade Level To Be Assessed (001057)]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.ref_grade_level_when_assessed_id IS 'The grade or developmental level of a student when registering for an assessment, when taking the assessment, or for which an assessment is design.  [CEDS Elements: Grade Level When Assessed (000126), Assessment Registration Grade Level To Be Assessed (001057)]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.person_id IS 'Person registering for the Assessment.  (Foreign Key - Person)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.assessment_form_id IS 'Foreign key - Assessment_Form';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.organization_id IS 'Foreign key - Organization';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.school_organization_id IS 'Foreign key - Organization.  Identifies the school.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.lea_organization_id IS 'Foreign key - Organization.  Identifies the LEA.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.assessment_administration_id IS 'Foreign key - Assessment_Administration';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.assigned_by_person_id IS 'The unique identifier of the person who assigned the assessment to the learner. [CEDS Element: Assessment Registration Assignor Identifier, ID:000889]  (Foreign key - Person)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.assessment_registration_completion_status_date_time IS 'The date and time the completion and scoring status was changed for an instance of a person taking an assessment. [CEDS Element: Assessment Registration Completion Status Date Time, ID:001542]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_registration.ref_assessment_registration_completion_status_id IS 'The completion and scoring status for an instance of a person taking an assessment. [CEDS Element: Assessment Registration Completion Status, ID:001541]';

CREATE TABLE ceds6sc_rdx.assessment_result ( 
	assessment_result_id integer  NOT NULL,
	score_value          varchar(35)  ,
	ref_score_metric_type_id integer  ,
	preliminary_indicator bool  ,
	ref_assessment_pretest_outcome_id integer  ,
	number_of_responses  integer  ,
	diagnostic_statement text  ,
	diagnostic_statement_source varchar(300)  ,
	descriptive_feedback varchar(300)  ,
	descriptive_feedback_source varchar(60)  ,
	instructional_recommendation varchar(100)  ,
	included_in_ayp_calculation bool  ,
	date_updated         date  ,
	date_created         date  ,
	assessment_subtest_id integer  NOT NULL,
	assessment_registration_id integer  NOT NULL,
	ref_el_outcome_measurement_level_id integer  ,
	ref_outcome_time_point_id integer  ,
	assessment_result_descriptive_feedback_date_time date  ,
	assessment_result_score_standard_error decimal(9,2)  ,
	ref_assessment_result_data_type_id integer  ,
	ref_assessment_result_score_type_id integer  ,
	CONSTRAINT pk_assessment_result PRIMARY KEY ( assessment_result_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_result IS 'An entity that includes information about a person''s results from an assessment which may be for the entire assessment or one aspect of evaluation. The scoring method is defined by the related Assessment Subtest. The entity includes the score value and information about the score, such as a diagnostic statement. ';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.assessment_result_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.score_value IS 'A meaningful raw score, derived score, or statistical expression of the performance of a person on an assessment. The type of result is indicated by the Assessment Score Metric Type element. The results can be expressed as a number, percentile, range, level, etc. The score relates to all scored items or a sub test scoring one aspect of performance on the test. This value may or may not correspond to one or more Performance Levels. [CEDS Element: Assessment Result Score Value, ID:000245]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.ref_score_metric_type_id IS 'The specific method used to report the performance and achievement of the assessment. This is the metric that is being used to derive the scores. [CEDS Element: Assessment Score Metric Type, ID:000369]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.preliminary_indicator IS 'If this score is preliminary, then this attribute value should be set.  Preliminary scores may be provided for early use by the assessment program or user while final scoring is occurring. [CEDS Element: Assessment Result Preliminary Indicator, ID:001007]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.ref_assessment_pretest_outcome_id IS 'The results of a pre-test in academic subjects. [CEDS Element: Assessment Result Pretest Outcome, ID:000572]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.number_of_responses IS 'The number of responses that are included with the Student Score Set. Responses are those items that were attempted (partially or fully answered) by the student and not necessarily the number of items in the assessment (which can be determined from the assessment object). [CEDS Element: Assessment Result Number of Responses, ID:001009]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.diagnostic_statement IS 'A statement intended for use by education professionals, using professional terminology, to interpret learner needs based on the scored/evaluated portion of an assessment.  This statement may inform Descriptive Feedback given to the learner. [CEDS Element: Assessment Result Diagnostic Statement, ID:001219]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.diagnostic_statement_source IS 'Identifies the source of the Diagnostic Statement based on a scored/evaluated portion of an assessment. [CEDS Element: Diagnostic Statement Source, ID:001008]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.descriptive_feedback IS 'The formative descriptive feedback that was given to a learner based on a scored/evaluated portion of an assessment as recorded in the result entity. [CEDS Element: Assessment Result Descriptive Feedback, ID:000890]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.descriptive_feedback_source IS 'Identifies the source of the descriptive feedback that was given to a learner based on a scored/evaluated portion of an assessment. May indicate if this is teacher, scorer, or system generated feedback. Values for this attribute would be determined by the assessment program. [CEDS Element: Assessment Result Descriptive Feedback Source, ID:001092]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.instructional_recommendation IS 'This provides the next steps for instruction for the student based upon the assessment results and student characteristics. [CEDS Element: Instructional Recommendation, ID:000370]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.included_in_ayp_calculation IS 'An indication of whether a proficiency score on the state assessment was included in the state’s calculation of adequate yearly progress (AYP). [CEDS Element: Assessment Result Included in Adequate Yearly Progress Calculation, ID:000576]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.date_updated IS 'The most recent date that the result was calculated/updated.  The value should be the same as Assessment Result Date Created if the subtest has only been scored once, but may be different if the score was recalculated with a different result. [CEDS Element: Assessment Result Date Updated, ID:000970]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.date_created IS 'The date on which the assessment result was generated. [CEDS Element: Assessment Result Date Created, ID:000971]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.assessment_subtest_id IS 'Foreign key - Assessment_Subtest';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.assessment_registration_id IS 'Foreign key - Assessment_Registration';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.ref_el_outcome_measurement_level_id IS 'Use for outcome measures in early learning. [CEDS Element: Early Learning Outcome Measurement Level, ID:001336]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.ref_outcome_time_point_id IS 'The point in time for which the result is used for an outcome measure. [CEDS Element: Early Learning Outcome Time Point, ID:001503]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.assessment_result_descriptive_feedback_date_time IS 'The date and time the descriptive feedback was entered for a scored/evaluated portion of an assessment. [CEDS Element: Assessment Result Descriptive Feedback Date Time, ID:001545]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.assessment_result_score_standard_error IS 'The measure of sampling variability and measurement error for the score, the amount of error to be expected in the score. [CEDS Element: Assessment Result Score Standard Error, ID:001546]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.ref_assessment_result_data_type_id IS ' The data type of the assessment result score value. [CEDS Element: Assessment Result Data Type, ID:001543]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result.ref_assessment_result_score_type_id IS 'Indicates the purpose for which this assessment score instance was recorded. [CEDS Element: Assessment Result Score Type, ID:001547]';

CREATE TABLE ceds6sc_rdx.assessment_result_rubric_criterion_result ( 
	assessment_result_rubric_criterion_result_id integer  NOT NULL,
	assessment_result_id integer  NOT NULL,
	rubric_criterion_level_id integer  NOT NULL,
	CONSTRAINT pk_assessment_result_rubric_criterion_result PRIMARY KEY ( assessment_result_rubric_criterion_result_id ),
	CONSTRAINT ix_assessment_result_rubric_criterion_level UNIQUE ( assessment_result_id, rubric_criterion_level_id ) 
 );

COMMENT ON COLUMN ceds6sc_rdx.assessment_result_rubric_criterion_result.assessment_result_rubric_criterion_result_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result_rubric_criterion_result.assessment_result_id IS 'Foreign key - Assessment_Result.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_result_rubric_criterion_result.rubric_criterion_level_id IS 'Foreign key - Rubric_Criterion_Level.';

CREATE TABLE ceds6sc_rdx.assessment_session_staff_role ( 
	assessment_session_staff_role_id integer  NOT NULL,
	ref_assessment_session_staff_role_type_id integer  ,
	person_id            integer  NOT NULL,
	assessment_session_id integer  ,
	assessment_participant_session_id integer  ,
	CONSTRAINT pk_assessment_session_staff_role PRIMARY KEY ( assessment_session_staff_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_session_staff_role IS 'The association of a Person to an Assessment identifying the role of the person.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session_staff_role.assessment_session_staff_role_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session_staff_role.ref_assessment_session_staff_role_type_id IS 'The type of role served related to the administration of an assessment session. [CEDS Element: Assessment Session Staff Role Type, ID:001212]  (Foreign key - Ref_Assessment_Session_Staff_Role_Type)';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session_staff_role.person_id IS 'Foreign key - Person';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session_staff_role.assessment_session_id IS 'Foreign key - Assessment_Session';

COMMENT ON COLUMN ceds6sc_rdx.assessment_session_staff_role.assessment_participant_session_id IS 'Foreign key - Assessment_Participant_Session';

CREATE TABLE ceds6sc_rdx.assessment_subtest_assessment_item ( 
	assessment_subtest_item_id integer  NOT NULL,
	assessment_subtest_id integer  NOT NULL,
	assessment_item_id   integer  NOT NULL,
	item_weight_correct  decimal(3,2)  ,
	item_weight_incorrect decimal(3,2)  ,
	item_weight_not_attempted decimal(3,2)  ,
	CONSTRAINT pk_assessment_subtest_assessment_item PRIMARY KEY ( assessment_subtest_item_id )
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_subtest_assessment_item IS 'The weighing factors for an Assessment Item on an Assessment Subtest.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_assessment_item.assessment_subtest_item_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_assessment_item.assessment_subtest_id IS 'Foreign key - Assessment_Subtest';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_assessment_item.assessment_item_id IS 'Foreign key - Assessment_Item';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_assessment_item.item_weight_correct IS 'A weighting factor for how the item score is used to compute a sub-test score when the item is correct or partially correct. Item weight of 1 indicates the full item score is used. A weight of .5 would indicate the item only contributes one half of the item score to the subtest. A weight of 0 indicates the item does not affect the sub test score. [CEDS Element: Assessment Form Subtest Item Weight Correct, ID:001010]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_assessment_item.item_weight_incorrect IS 'A weighting factor for how the item score is used to compute a sub-test score when the item is attempted and incorrect. Item weight should be a negative value if the item subtracts from the score if missed. [CEDS Element: Assessment Form Subtest Item Weight Incorrect, ID:001012]';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_assessment_item.item_weight_not_attempted IS 'A weighting factor for how the item score is used to compute a sub-test score when the item has not been attempted by the student. Item weight should be a negative value if the item subtracts from the score if not attempted. [CEDS Element: Assessment Form Subtest Item Weight Not Attempted, ID:001013]';

CREATE TABLE ceds6sc_rdx.assessment_subtest_learning_standard_item ( 
	assessment_sub_test_learning_standard_item_id integer  NOT NULL,
	assessment_subtest_id integer  NOT NULL,
	learning_standard_item_id integer  NOT NULL,
	CONSTRAINT pk_assessment_subtest_learning_standard_item PRIMARY KEY ( assessment_sub_test_learning_standard_item_id ),
	CONSTRAINT ix_assessment_subtest_learning_standard_item UNIQUE ( assessment_subtest_id, learning_standard_item_id ) 
 );

COMMENT ON TABLE ceds6sc_rdx.assessment_subtest_learning_standard_item IS 'The learning standard items utilized by an assessment subtest.';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_learning_standard_item.assessment_sub_test_learning_standard_item_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_learning_standard_item.assessment_subtest_id IS 'Foreign key - Assessment_Subtest';

COMMENT ON COLUMN ceds6sc_rdx.assessment_subtest_learning_standard_item.learning_standard_item_id IS 'Foreign key - Learning_Standard_Item';

CREATE TABLE ceds6sc_rdx.authentication ( 
	authentication_id    integer  NOT NULL,
	organization_person_role_id integer  NOT NULL,
	identity_provider_name varchar(60)  ,
	identity_provider_uri varchar(300)  ,
	login_identifier     varchar(40)  ,
	start_date           date  ,
	end_date             date  ,
	CONSTRAINT pk_authentication PRIMARY KEY ( authentication_id )
 );

COMMENT ON TABLE ceds6sc_rdx.authentication IS 'An application or service that can authenticate the identity of a person. The CEDS entity that includes information about an authentication provider, the login identifier used to authenticate a person''s identity, and other information related to authentication of a person''s identity. ';

COMMENT ON COLUMN ceds6sc_rdx.authentication.authentication_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.authentication.organization_person_role_id IS 'Foreign key - Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.authentication.identity_provider_name IS 'The name of a provider that can authenticate the identity of an person. [CEDS Element: Authentication Identity Provider Name, ID:001168]';

COMMENT ON COLUMN ceds6sc_rdx.authentication.identity_provider_uri IS 'The Uniform Resource Identifier (URI) of the  Authentication Identity Provider. [CEDS Element: Authentication Identity Provider URI, ID:001169]';

COMMENT ON COLUMN ceds6sc_rdx.authentication.login_identifier IS 'The login identifier for the person for the specified Authentication Identity Provider. [CEDS Element: Authentication Identity Provider Login Identifier, ID:001170]';

COMMENT ON COLUMN ceds6sc_rdx.authentication.start_date IS 'The date on which the  an associated person may begin to use the specified Authentication Identity Provider to authenticate identity. [CEDS Element: Authentication Identity Provider Start Date, ID:001171]';

COMMENT ON COLUMN ceds6sc_rdx.authentication.end_date IS 'The date after which the  an associated person is no longer allowed to use the specified Authentication Identity Provider to authenticate identity. [CEDS Element: Authentication Identity Provider End Date, ID:001172]';

CREATE TABLE ceds6sc_rdx.competency_set ( 
	competency_set_id    integer  NOT NULL,
	child_of_competency_set integer  ,
	ref_completion_criteria_id integer  ,
	completion_criteria_threshold integer  ,
	CONSTRAINT pk_competency_set PRIMARY KEY ( competency_set_id )
 );

COMMENT ON TABLE ceds6sc_rdx.competency_set IS 'The set of one or more competencies and criteria for completion of a learning goal, unit, course, program, degree, certification, or other achievement.   (The criteria may be ‘all’ competencies in the set or ‘at-least’ # of competencies. Sets may be nested, e.g. all in subset A and 3 of 5 from subset B.)';

COMMENT ON COLUMN ceds6sc_rdx.competency_set.competency_set_id IS 'Surrogate key';

COMMENT ON COLUMN ceds6sc_rdx.competency_set.child_of_competency_set IS 'Foreign key - Compentency_Set (this table)';

COMMENT ON COLUMN ceds6sc_rdx.competency_set.ref_completion_criteria_id IS 'The criteria for the set of competencies that represent completion or partial completion of a unit, course, program, degree, certification, or other achievement/award. Specifies whether completion requires achievement of all items in the set or some number of items. [CEDS Element: Competency Set Completion Criteria, ID:000877]';

COMMENT ON COLUMN ceds6sc_rdx.competency_set.completion_criteria_threshold IS 'The minimum number of competencies in the set that must be achieved for completion or partial completion of a unit, course, program, degree, certification, or other achievement/award. [CEDS Element: Competency Set Completion Criteria Threshold, ID:000878]';

CREATE TABLE ceds6sc_rdx.course ( 
	organization_id      integer  NOT NULL,
	description          varchar(60)  ,
	subject_abbreviation varchar(50)  ,
	sced_sequence_of_course varchar(50)  ,
	instructional_minutes integer  ,
	ref_course_level_characteristics_id integer  ,
	ref_course_credit_unit_id integer  ,
	credit_value         decimal(9,2)  ,
	ref_instruction_language integer  ,
	certification_description varchar(300)  ,
	ref_course_applicable_education_level_id integer  ,
	CONSTRAINT pk_course PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.course IS 'The organization of subject matter and related learning experiences provided for the instruction of students on a regular or systematic basis, usually for a predetermined period of time (e.g., a semester or two-week workshop) to an individual or group of students (e.g., a class). ';

COMMENT ON COLUMN ceds6sc_rdx.course.organization_id IS 'Surrogate key from Organization.';

COMMENT ON COLUMN ceds6sc_rdx.course.description IS 'A description of the course content and/or goals. Reference may be made to state or national content standards. [CEDS Element: Course Description, ID:000517]';

COMMENT ON COLUMN ceds6sc_rdx.course.subject_abbreviation IS 'The alphabetic abbreviation of the academic department or discipline offering the course. It is one part of the total course identifier number.  [CEDS Element: Course Subject Abbreviation, ID:000066]';

COMMENT ON COLUMN ceds6sc_rdx.course.sced_sequence_of_course IS 'Where a specific course lies when it is part of a consecutive sequence of courses. This element should be interpreted as "part ''n'' of ''m'' parts. [CEDS Element: School Courses for the Exchange of Data Sequence of Course, ID:000250]';

COMMENT ON COLUMN ceds6sc_rdx.course.instructional_minutes IS 'The total number of instruction minutes in a given session, as determined by time in class, time on task (e.g., engaged in a class), or as estimated by a qualified course designer. [CEDS Element: Instructional Minutes, ID:000499]';

COMMENT ON COLUMN ceds6sc_rdx.course.ref_course_level_characteristics_id IS 'An indication of the general nature and difficulty of instruction provided throughout a course. [CEDS Element: Course Level Characteristic, ID:000061]  (Foreign key - Ref_Course_Level_Characteristic)';

COMMENT ON COLUMN ceds6sc_rdx.course.ref_course_credit_unit_id IS 'The type of credit (unit, semester, or quarter) associated with the credit hours earned for the course.  [CEDS Element: Course Credit Units, ID:000057]  (Foreign key - Ref_Course_Credit_Unit)';

COMMENT ON COLUMN ceds6sc_rdx.course.credit_value IS 'Measured in Carnegie units, the amount of credit available to a student who successfully meets the objectives of the course. [CEDS Element: Course Credit Value, ID:000058]';

COMMENT ON COLUMN ceds6sc_rdx.course.ref_instruction_language IS 'Surrogate key from Ref_Language.  The language of instruction, other than English, used in the program or course. [CEDS Element: Instruction Language, ID:000448]  (Foreign key - Ref_Language)';

COMMENT ON COLUMN ceds6sc_rdx.course.certification_description IS 'A description of the certification or recognition associated with this course (ex. Networking, CAD, etc.) [CEDS Elements: Course Certification Description, ID: 001302]';

COMMENT ON COLUMN ceds6sc_rdx.course.ref_course_applicable_education_level_id IS 'The education level, grade level or primary instructional level at which a course is intended. [CEDS Element: Course Applicable Education Level, ID:001301]';

CREATE TABLE ceds6sc_rdx.course_section_assessment_reporting ( 
	course_section_assessment_reporting_id integer  NOT NULL,
	organization_id      integer  ,
	ref_course_section_assessment_reporting_method_id integer  ,
	CONSTRAINT pk_course_section_assessment_reporting PRIMARY KEY ( course_section_assessment_reporting_id )
 );

COMMENT ON TABLE ceds6sc_rdx.course_section_assessment_reporting IS 'The method(s) that the instructor of the course uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. ';

COMMENT ON COLUMN ceds6sc_rdx.course_section_assessment_reporting.course_section_assessment_reporting_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.course_section_assessment_reporting.organization_id IS 'Surrogate key from Course_Section.';

COMMENT ON COLUMN ceds6sc_rdx.course_section_assessment_reporting.ref_course_section_assessment_reporting_method_id IS 'The method that the instructor of the course uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. In some cases, more than one type of reporting method may be used. [CEDS Element: Course Section Assessment Reporting Method, ID:000027]';

CREATE TABLE ceds6sc_rdx.course_section_schedule ( 
	course_section_schedule_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	class_meeting_days   varchar(60)  ,
	class_beginning_time time  ,
	class_ending_time    time  ,
	class_period         varchar(30)  ,
	time_day_identifier  varchar(40)  ,
	CONSTRAINT pk_course_section_schedule PRIMARY KEY ( course_section_schedule_id )
 );

COMMENT ON TABLE ceds6sc_rdx.course_section_schedule IS 'The days and times when a Course Section meets.';

COMMENT ON COLUMN ceds6sc_rdx.course_section_schedule.course_section_schedule_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.course_section_schedule.organization_id IS 'Surrogate key from Course_Section.';

COMMENT ON COLUMN ceds6sc_rdx.course_section_schedule.class_meeting_days IS 'The day(s) of the week (e.g., Monday, Wednesday) that the class meets or an indication that a class meets out-of-school or self-paced. [CEDS Element: Class Meeting Days, ID:000521]';

COMMENT ON COLUMN ceds6sc_rdx.course_section_schedule.class_beginning_time IS 'An indication of the time of day the class begins. [CEDS Element: Class Beginning Time, ID:000519]';

COMMENT ON COLUMN ceds6sc_rdx.course_section_schedule.class_ending_time IS 'An indication of the time of day the class ends. [CEDS Element: Class Ending Time, ID:000520]';

COMMENT ON COLUMN ceds6sc_rdx.course_section_schedule.class_period IS 'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules). [CEDS Element: Class Period, ID:000522]';

COMMENT ON COLUMN ceds6sc_rdx.course_section_schedule.time_day_identifier IS 'The unique identifier for the locally defined rotation cycle date code when the class meets (e.g., in a two day schedule, valid values could be a and b, or 1 and 2). [CEDS Element: Timetable Day Identifier, ID:000523]';

CREATE TABLE ceds6sc_rdx.cte_student_academic_record ( 
	organization_person_role_id integer  NOT NULL,
	credits_attempted_cumulative decimal(9,2)  ,
	credits_earned_cumulative decimal(9,2)  ,
	ref_professional_technical_credential_type_id integer  ,
	diploma_or_credential_award_date char(7)  ,
	CONSTRAINT pk_cte_student_academic_record PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.cte_student_academic_record IS 'Summary academic record information for a career and technical education student.  ';

COMMENT ON COLUMN ceds6sc_rdx.cte_student_academic_record.organization_person_role_id IS 'Inherited surrogate Key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.cte_student_academic_record.credits_attempted_cumulative IS 'The cumulative number of credits a person attempts to earn by taking courses during his or her enrollment in the current school as well as those credits transferred from schools in which the person had been previously enrolled. [CEDS Element: Credits Attempted Cumulative, ID:000073]';

COMMENT ON COLUMN ceds6sc_rdx.cte_student_academic_record.credits_earned_cumulative IS 'The cumulative number of credits a person earns by completing courses or examinations during his or her enrollment in the current school as well as those credits transferred from schools in which the person had been previously enrolled. [CEDS Element: Credits Earned Cumulative, ID:000074]';

COMMENT ON COLUMN ceds6sc_rdx.cte_student_academic_record.ref_professional_technical_credential_type_id IS 'An indicator of the category of credential conferred by a state occupational licensing entity or industry organization for competency in a specific area measured by a set of pre-established standards. [CEDS Element: Professional or Technical Credential Conferred, ID:000783]';

COMMENT ON COLUMN ceds6sc_rdx.cte_student_academic_record.diploma_or_credential_award_date IS 'The month and year on which the diploma/credential is awarded to a student in recognition of his/her completion of the curricular requirements. [CEDS Element: Diploma or Credential Award Date, ID:000081]';

CREATE TABLE ceds6sc_rdx.early_childhood_credential ( 
	person_credential_id integer  NOT NULL,
	ref_early_childhood_credential_id integer  NOT NULL,
	CONSTRAINT pk_early_childhood_credential PRIMARY KEY ( person_credential_id )
 );

COMMENT ON TABLE ceds6sc_rdx.early_childhood_credential IS 'The credential related to early childhood education or development held by a person.';

COMMENT ON COLUMN ceds6sc_rdx.early_childhood_credential.person_credential_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.early_childhood_credential.ref_early_childhood_credential_id IS 'The credential related to early childhood education or development held by a person. [CEDS Element: Early Childhood Credential, ID:000345]  (Foreign key - Ref_Early_Childhood_Credential)';

CREATE TABLE ceds6sc_rdx.el_child_developmental_assessment ( 
	person_id            integer  NOT NULL,
	ref_child_developmental_screening_status_id integer  ,
	ref_developmental_evaluation_finding_id integer  ,
	CONSTRAINT pk_el_child_developmental_assessment PRIMARY KEY ( person_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_child_developmental_assessment.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.el_child_developmental_assessment.ref_child_developmental_screening_status_id IS 'The result of a brief standardized screening tool aiding in the identification of children at risk of a developmental delay/disorder. [CEDS Element: Child Developmental Screening Status, ID:000314]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_developmental_assessment.ref_developmental_evaluation_finding_id IS 'Child developmental delay/disability determined by procedure used by appropriate qualified personnel. [CEDS Element: Developmental Evaluation Finding, ID:000315]';

CREATE TABLE ceds6sc_rdx.el_child_individualized_program ( 
	person_id            integer  NOT NULL,
	ref_idea_iep_status_id integer  ,
	individualized_program_id integer  ,
	ref_idea_part_c_eligibility_category_id integer  ,
	CONSTRAINT pk_el_child_individualized_program PRIMARY KEY ( person_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_child_individualized_program.person_id IS 'Surrogate key from Person.';

COMMENT ON COLUMN ceds6sc_rdx.el_child_individualized_program.ref_idea_iep_status_id IS 'The status of an individualized services plan for a specified reporting period or on a specified date. [CEDS Element: IDEA IEP Status, ID:001501]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_individualized_program.individualized_program_id IS 'Foreign key - Individualized_Program';

COMMENT ON COLUMN ceds6sc_rdx.el_child_individualized_program.ref_idea_part_c_eligibility_category_id IS 'The category under which a person under 3 years of age is eligible for early intervention services under IDEA Part C. [CEDS Element: IDEA Part C Eligibility Category, ID:001656]';

CREATE TABLE ceds6sc_rdx.el_child_program_eligibility ( 
	organization_person_role_id integer  NOT NULL,
	ref_el_program_eligibility_status_id integer  ,
	status_date          date  ,
	expiration_date      date  ,
	CONSTRAINT pk_el_child_program_eligibility PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_child_program_eligibility.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.el_child_program_eligibility.ref_el_program_eligibility_status_id IS 'The status of eligibility for the child. [CEDS Element: Early Learning Program Eligibility Status, ID:001339]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_program_eligibility.status_date IS 'The date of status of eligibility. [CEDS Element: Early Learning Program Eligibility Status Date, ID: 001340]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_program_eligibility.expiration_date IS 'The date on which the child is no longer eligible for the Program. [CEDS Element: Early Learning Program Eligibility Expiration Date, 001338]';

CREATE TABLE ceds6sc_rdx.el_child_services_application ( 
	organization_person_role_id integer  NOT NULL,
	el_application_identifier varchar(40)  ,
	application_date     date  ,
	el_enrollment_application_document_identifier varchar(40)  ,
	el_enrollment_application_document_name varchar(60)  ,
	el_enrollment_application_document_type varchar(100)  ,
	el_application_required_document bool  ,
	el_enrollment_application_verification_date date  ,
	el_enrollment_application_verification_reason_type varchar(100)  ,
	site_preference_rank varchar(300)  ,
	CONSTRAINT pk_el_child_services_application PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_child_services_application.organization_person_role_id IS 'Surrogate key from Organization_Person_Role';

COMMENT ON COLUMN ceds6sc_rdx.el_child_services_application.el_application_identifier IS 'Identifier for the application for enrollment or direct services filled out on behalf of a child [CEDS Element: Early Learning Application Identifier, ID:001597]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_services_application.application_date IS 'The year, month and day on which an individual  application is received by the organization. [CEDS Element: Application Date, ID:000323]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_services_application.el_enrollment_application_document_identifier IS 'Identifier for an enrollment application document record. [CEDS Element: Early Learning Enrollment Application Document Identifier, ID:001593]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_services_application.el_enrollment_application_document_name IS 'Document name for an enrollment application document record. [CEDS Element: Early Learning Enrollment Application Document Name, ID:001594]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_services_application.el_enrollment_application_document_type IS 'Document type for an enrollment application document record. [CEDS Element: Early Learning Enrollment Application Document Type, ID:001595]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_services_application.el_application_required_document IS 'Identifies a specific document required for enrollment. [CEDS Element: Early Learning Application Required Document, ID:001599]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_services_application.el_enrollment_application_verification_date IS 'Date the required document was verified for the enrollment application [CEDS Element: Early Learning Enrollment Application Verification Date, ID:001592]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_services_application.el_enrollment_application_verification_reason_type IS 'Identifies the reason for verification of enrollment application information [CEDS Element: Early Learning Enrollment Application Verification Reason Type, ID:001600]';

COMMENT ON COLUMN ceds6sc_rdx.el_child_services_application.site_preference_rank IS 'The applicant preference that the family has for the program sites. [CEDS Element: Site Preference Rank, ID:001627]';

CREATE TABLE ceds6sc_rdx.el_class_section ( 
	organization_id      integer  NOT NULL,
	ref_service_option_id integer  ,
	hours_available_per_day decimal(4,2)  ,
	days_available_per_week integer  ,
	ref_environment_setting_id integer  ,
	el_program_annual_operating_weeks integer  ,
	language_translation_policy bool  ,
	group_size           integer  ,
	CONSTRAINT pk_el_class_section PRIMARY KEY ( organization_id )
 );

COMMENT ON TABLE ceds6sc_rdx.el_class_section IS 'A cohort of children receiving services together, or in some cases individually, usually for a predetermined amount of time, with at least one assigned primary teacher. ';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section.ref_service_option_id IS 'Nature of program, class or group in which a person is enrolled. [CEDS Element: Service Option Variation, ID:000353]  (Foreign key - Ref_Service_Option)';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section.hours_available_per_day IS 'The number of hours per day the site or classroom is open for children to attend. [CEDS Element: Hours Available Per Day, ID:000354]';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section.days_available_per_week IS 'The number of days per week the site or classroom is open for children to attend. [CEDS Element: Days Available Per Week, ID:000355]';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section.ref_environment_setting_id IS 'The site or setting in which  a person receives care, education, and/or services are provided. [CEDS Element: Early Childhood Setting, ID:000356]  (Foreign key - Ref_Environment_Setting)';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section.el_program_annual_operating_weeks IS 'The number of operating weeks per year for an early learning program. [CEDS Element: Early Learning Program Annual Operating Weeks, ID:000825]';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section.language_translation_policy IS 'Indicates that the organization or class/group has  translation services available . [CEDS Element: Language Translation Policy, ID:001226]';

COMMENT ON COLUMN ceds6sc_rdx.el_class_section.group_size IS 'The number of slots/spaces available. [CEDS Element: Early Learning Group Size, ID: 001329]';

CREATE TABLE ceds6sc_rdx.el_enrollment ( 
	organization_person_role_id integer  NOT NULL,
	application_date     date  ,
	enrollment_date      date  ,
	ref_idea_environment_el_id integer  ,
	number_of_days_in_attendance decimal(8,2)  ,
	ref_food_service_participation_id integer  ,
	ref_service_option_id integer  ,
	el_class_section_id  integer  ,
	ref_el_federal_funding_type_id integer  ,
	CONSTRAINT xpk_ecenrollment PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.el_enrollment IS 'Enrollment of early learners in a program, class, or section.';

COMMENT ON COLUMN ceds6sc_rdx.el_enrollment.organization_person_role_id IS 'Inherited surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.el_enrollment.application_date IS 'The date on which an individual  application is received by the organization. [CEDS Element: Application Date, ID:000323]';

COMMENT ON COLUMN ceds6sc_rdx.el_enrollment.enrollment_date IS 'The date on which a person is considered officially enrolled in the program. [CEDS Element: Enrollment Date, ID:000324]';

COMMENT ON COLUMN ceds6sc_rdx.el_enrollment.ref_idea_environment_el_id IS 'The program in which children ages 3 through 5 attend and in which these children receive special education and related services. [CEDS Element: IDEA Educational Environment for Early Childhood, ID:000559]  (Foreign key - Ref_IDEA_Enrollment_EL)';

COMMENT ON COLUMN ceds6sc_rdx.el_enrollment.number_of_days_in_attendance IS 'The number of days a person is present when school is in session during a given reporting period. [CEDS Element: Number of Days in Attendance, ID:000202]';

COMMENT ON COLUMN ceds6sc_rdx.el_enrollment.ref_food_service_participation_id IS 'An indication of a student''s participation in free, reduced price, full price breakfast, lunch, snack, supper, and milk programs. [CEDS Element: Participation in School Food Service Programs, ID:000325]  (Foreign key - Ref_Food_Service_Participation)';

COMMENT ON COLUMN ceds6sc_rdx.el_enrollment.ref_service_option_id IS 'Nature of program, class or group in which a person is enrolled. [CEDS Element: Service Option Variation, ID:000353]  (Foreign key - Ref_Service_Option)';

COMMENT ON COLUMN ceds6sc_rdx.el_enrollment.el_class_section_id IS 'Foreign key - ELClass_Section.';

COMMENT ON COLUMN ceds6sc_rdx.el_enrollment.ref_el_federal_funding_type_id IS 'Federal source that contributes to the EL program [CEDS Element: Early Learning Federal Funding Type, ID:001328]';

CREATE TABLE ceds6sc_rdx.el_facility_licensing ( 
	el_facility_licensing_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_el_facility_licensing_status_id integer  ,
	state_licensed_facility_capacity integer  ,
	initial_licensing_date date  ,
	continuing_license_date date  ,
	ref_license_exempt_id integer  ,
	CONSTRAINT pk_el_facility_licensing PRIMARY KEY ( el_facility_licensing_id )
 );

COMMENT ON TABLE ceds6sc_rdx.el_facility_licensing IS 'The status and attributes of the facility license for an early learning organization.';

COMMENT ON COLUMN ceds6sc_rdx.el_facility_licensing.el_facility_licensing_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.el_facility_licensing.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN ceds6sc_rdx.el_facility_licensing.ref_el_facility_licensing_status_id IS 'The status of the facility license. [CEDS Element: Facility Licensing Status, ID:000984]  (Foreign key - Ref_EL_Facility_Licensing_Status)';

COMMENT ON COLUMN ceds6sc_rdx.el_facility_licensing.state_licensed_facility_capacity IS 'The maximum number of children for which a state licensed a facility. [CEDS Element: State Licensed Facility Capacity, ID:000865]';

COMMENT ON COLUMN ceds6sc_rdx.el_facility_licensing.initial_licensing_date IS 'The date on which a program or center received its initial license. [CEDS Element: Initial License Date, ID:000348]';

COMMENT ON COLUMN ceds6sc_rdx.el_facility_licensing.continuing_license_date IS 'The date on which a program or center received its continuing license. [CEDS Element: Continuing License Date, ID:000349]';

COMMENT ON COLUMN ceds6sc_rdx.el_facility_licensing.ref_license_exempt_id IS 'The program or center is legally exempt from licensing. [CEDS Element: License Exempt, ID:000350]  (Foreign key - Ref_License_Exempt)';

CREATE TABLE ceds6sc_rdx.el_organization_funds ( 
	organization_id      integer  NOT NULL,
	ref_el_federal_funding_type_id integer  ,
	ref_el_local_revenue_source_id integer  ,
	ref_el_other_federal_funding_sources_id integer  ,
	ref_el_state_revenue_source_id integer  ,
	ref_billable_basis_type_id integer  ,
	ref_reimbursement_type_id integer  ,
	CONSTRAINT pk_el_organization_funds PRIMARY KEY ( organization_id )
 );

COMMENT ON COLUMN ceds6sc_rdx.el_organization_funds.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_funds.ref_el_federal_funding_type_id IS 'Federal source, even if administered by state or local, that contributes to the EL program. [CEDS Element: Early Learning Federal Funding Type, ID:001328]';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_funds.ref_el_local_revenue_source_id IS 'Funds that originate at the local level, and not from the state or federal level, that contribute to EL program. [CEDS Element: Early Learning Local Revenue Source, ID:001603]';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_funds.ref_el_other_federal_funding_sources_id IS 'The other contributing funding sources. [CEDS Element: Early Learning Other Federal Funding Sources, ID:001335]';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_funds.ref_el_state_revenue_source_id IS ' Funds that originate at the State, and not from a federal or local source, that contribute to EL program. [CEDS Element: Early Learning State Revenue Source, ID:001605]';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_funds.ref_billable_basis_type_id IS 'The event/action that results in a billable action. [CEDS Element: Billable Basis Type, ID:001582]';

COMMENT ON COLUMN ceds6sc_rdx.el_organization_funds.ref_reimbursement_type_id IS 'A billable basis which defines payment. This is how state agencies/programs move funding to the local provider/agency. [CEDS Element: Reimbursement Type, ID:001622]';

CREATE TABLE ceds6sc_rdx.el_program_licensing ( 
	el_program_licensing_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	ref_el_program_license_status_id integer  ,
	initial_license_date date  ,
	continuing_license_date date  ,
	license_suspension_status bool  ,
	license_revocation_status bool  ,
	number_of_fatalities integer  ,
	number_of_injuries   integer  ,
	ref_license_exempt_id integer  ,
	CONSTRAINT pk_el_program_licensing PRIMARY KEY ( el_program_licensing_id )
 );

COMMENT ON TABLE ceds6sc_rdx.el_program_licensing IS 'The status and attributes of the licensing for an early learning program.';

COMMENT ON COLUMN ceds6sc_rdx.el_program_licensing.el_program_licensing_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.el_program_licensing.organization_id IS 'Surrogate key from Organization';

COMMENT ON COLUMN ceds6sc_rdx.el_program_licensing.ref_el_program_license_status_id IS 'The current licensing status for an early learning program. [CEDS Element: Early Learning Program Licensing Status, ID:000828]  (Foreign key - Ref_EL_Program_License_Status)';

COMMENT ON COLUMN ceds6sc_rdx.el_program_licensing.initial_license_date IS 'The date on which a program or center received its initial license. [CEDS Element: Initial License Date, ID:000348]';

COMMENT ON COLUMN ceds6sc_rdx.el_program_licensing.continuing_license_date IS 'The date on which a program or center received its continuing license. [CEDS Element: Continuing License Date, ID:000349]';

COMMENT ON COLUMN ceds6sc_rdx.el_program_licensing.license_suspension_status IS 'An indication of whether a program''s license was suspended due to violations as determined by the state. [CEDS Element: Early Learning Program License Suspension Status, ID:000837]';

COMMENT ON COLUMN ceds6sc_rdx.el_program_licensing.license_revocation_status IS 'An indication of whether a program''s license was revoked due to violations as determined by the state. [CEDS Element: Early Learning Program License Revocation Status, ID:000838]';

COMMENT ON COLUMN ceds6sc_rdx.el_program_licensing.number_of_fatalities IS 'Number of child fatalities at the program in the past year, as defined by the State [CEDS Element: Number of Early Learning Fatalities, ID:000835]';

COMMENT ON COLUMN ceds6sc_rdx.el_program_licensing.number_of_injuries IS 'Number of child injuries at the program in the past year, as defined by the State. [CEDS Element: Number of Early Learning Injuries, ID:000836]';

COMMENT ON COLUMN ceds6sc_rdx.el_program_licensing.ref_license_exempt_id IS 'The program or center is legally exempt from licensing. [CEDS Element: License Exempt, ID:000350]  (Foreign key - Ref_License_Exempt)';

CREATE TABLE ceds6sc_rdx.el_quality_rating_improvement ( 
	el_quality_rating_improvement_id integer  NOT NULL,
	organization_id      integer  NOT NULL,
	number_qris_levels   integer  ,
	qris_award_date      date  ,
	qris_expiration_date date  ,
	ref_qris_participation_id integer  ,
	qris_score           varchar(45)  ,
	CONSTRAINT pk_el_quality_rating_improvement PRIMARY KEY ( el_quality_rating_improvement_id )
 );

COMMENT ON TABLE ceds6sc_rdx.el_quality_rating_improvement IS 'The early learning organization''s Quality Rating and Improvement System (QRIS) attributes.';

COMMENT ON COLUMN ceds6sc_rdx.el_quality_rating_improvement.el_quality_rating_improvement_id IS 'Surrogate Key';

COMMENT ON COLUMN ceds6sc_rdx.el_quality_rating_improvement.organization_id IS 'Surrogate key from Organization.';

COMMENT ON COLUMN ceds6sc_rdx.el_quality_rating_improvement.number_qris_levels IS 'Number of quality levels in the Quality Rating and Improvement System (QRIS). [CEDS Element: Number of Quality Rating and Improvement System Levels, ID:000843]';

COMMENT ON COLUMN ceds6sc_rdx.el_quality_rating_improvement.qris_award_date IS 'Date Quality Rating and Improvement System score, level or rating was awarded. [CEDS Element: Quality Rating and Improvement System Award Date, ID:000830]';

COMMENT ON COLUMN ceds6sc_rdx.el_quality_rating_improvement.qris_expiration_date IS 'Date Quality Rating and Improvement System score, level or rating expires. [CEDS Element: Quality Rating and Improvement System Expiration Date, ID:000831]';

COMMENT ON COLUMN ceds6sc_rdx.el_quality_rating_improvement.ref_qris_participation_id IS 'Surrogate key from Ref_QRIS_Participation.  Program site participates in a Quality Rating and Improvement System (QRIS). [CEDS Element: Quality Rating and Improvement System Participation, ID:000357]';

COMMENT ON COLUMN ceds6sc_rdx.el_quality_rating_improvement.qris_score IS 'The score, rating or level received by a program for its Quality Rating and Improvement System (QRIS). [CEDS Element: Quality Rating and Improvement System Score, ID:000358]';

CREATE TABLE ceds6sc_rdx.el_staff ( 
	organization_person_role_id integer  NOT NULL,
	ref_child_development_associate_type_id integer  ,
	CONSTRAINT pk_el_staff PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.el_staff IS 'Early learning staff attributes.';

COMMENT ON COLUMN ceds6sc_rdx.el_staff.organization_person_role_id IS 'Inherited surrogate key from Organization_Person_Role.';

COMMENT ON COLUMN ceds6sc_rdx.el_staff.ref_child_development_associate_type_id IS 'Type of Child Development Associate credential as defined by options. [CEDS Element: Child Development Associate Type, ID:000806]  (Foreign key - Ref_Child_Dev_Associate_Type)';

CREATE TABLE ceds6sc_rdx.el_staff_education ( 
	organization_person_role_id integer  NOT NULL,
	ecdegree_or_certificate_holder bool  ,
	total_college_credits_earned decimal(10,2)  ,
	ref_el_level_of_specialization_id integer  ,
	total_approved_eccredits_earned decimal(10,2)  ,
	school_age_education_ps_credits decimal(10,2)  ,
	ref_el_professional_development_topic_area_id integer  ,
	CONSTRAINT pk_el_staff_education PRIMARY KEY ( organization_person_role_id )
 );

COMMENT ON TABLE ceds6sc_rdx.el_staff_education IS 'Early childhood credentials and education credits held by an early learning staff member.';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_education.organization_person_role_id IS 'PK';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_education.ecdegree_or_certificate_holder IS 'Staff has a degree in early childhood regardless of level. [CEDS Element: Early Childhood Degree or Certificate Holder, ID:000789]';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_education.total_college_credits_earned IS 'Total number of college credits earned, including all credits within a degree and outside a degree, regardless of whether they all are early childhood credits. [CEDS Element: Early Learning Staff Total College Credits Earned, ID:000792]';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_education.ref_el_level_of_specialization_id IS 'The extent to which a person concentrates upon a particular subject matter area during his or her period of study at an educational institution. [CEDS Element: Level of Specialization in Early Learning, ID:000341]';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_education.total_approved_eccredits_earned IS 'Total semester credits earned in early childhood regardless of whether credits are earned as part of an early childhood degree program, other degree program or outside of a degree program. [CEDS Element: Total Approved Early Childhood Credits Earned, ID:001086]';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_education.school_age_education_ps_credits IS 'The number of college course credit hours an individual has successfully completed that are related to K-12 education, parks and recreation, and juvenile justice. [CEDS Element: Number of School-age Education Postsecondary Credit Hours, ID:000816]';

COMMENT ON COLUMN ceds6sc_rdx.el_staff_education.ref_el_professional_development_topic_area_id IS 'The topical area of competence needed for  professional development. [CEDS Element: Early Learning Professional Development Topic Area, ID:001337]';
