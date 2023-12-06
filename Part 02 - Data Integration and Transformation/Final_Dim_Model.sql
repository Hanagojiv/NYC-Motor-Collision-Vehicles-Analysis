/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      final_pre_dim.DM1
 *
 * Date Created : Thursday, April 20, 2023 23:48:30
 * Target DBMS : Microsoft SQL Server 2019
 */

/* 
 * TABLE: dim_arrest_borough 
 */

CREATE TABLE dim_arrest_borough(
    borough_sk        int            IDENTITY(1,1),
    boro_code         char(1)        NULL,
    borough           varchar(80)    NULL,
    DI_JobID          varchar(20)    NULL,
    DI_Create_Date    datetime       CONSTRAINT [DF__dim_arres__DI_Cr__24927208] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT PK__dim_arre__E0852AFE44BC1538 PRIMARY KEY NONCLUSTERED (borough_sk)
)

go


IF OBJECT_ID('dim_arrest_borough') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_arrest_borough >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_arrest_borough >>>'
go

/* 
 * TABLE: Dim_BODILY_INJURY 
 */

CREATE TABLE Dim_BODILY_INJURY(
    BODILY_INJURY_SK    int            IDENTITY(1,1),
    BODILY_INJURY       varchar(80)    NULL,
    DI_PID              varchar(20)    NULL,
    DI_Create_Date      datetime       CONSTRAINT [DF__Dim_BODIL__DI_Cr__276EDEB3] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_BODI__560162625FA53F7E PRIMARY KEY NONCLUSTERED (BODILY_INJURY_SK)
)

go


IF OBJECT_ID('Dim_BODILY_INJURY') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_BODILY_INJURY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_BODILY_INJURY >>>'
go

/* 
 * TABLE: Dim_COMPLAINT 
 */

CREATE TABLE Dim_COMPLAINT(
    COMPLAINT_SK      int             IDENTITY(1,1),
    COMPLAINT         varchar(255)    NULL,
    DI_PID            varchar(20)     NULL,
    DI_Create_Date    datetime        CONSTRAINT [DF__Dim_COMPL__DI_Cr__2A4B4B5E] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_COMP__966AF70858E65B10 PRIMARY KEY NONCLUSTERED (COMPLAINT_SK)
)

go


IF OBJECT_ID('Dim_COMPLAINT') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_COMPLAINT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_COMPLAINT >>>'
go

/* 
 * TABLE: Dim_CONTRIBUTING_FACTOR 
 */

CREATE TABLE Dim_CONTRIBUTING_FACTOR(
    CONTRIBUTING_FACTOR_SK    int             IDENTITY(1,1),
    CONTRIBUTING_FACTOR       varchar(255)    NULL,
    DI_PID                    varchar(20)     NULL,
    DI_Create_Date            datetime        CONSTRAINT [DF__Dim_CONTR__DI_Cr__2D27B809] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_CONT__B5F90DB13B99D15E PRIMARY KEY NONCLUSTERED (CONTRIBUTING_FACTOR_SK)
)

go


IF OBJECT_ID('Dim_CONTRIBUTING_FACTOR') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_CONTRIBUTING_FACTOR >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_CONTRIBUTING_FACTOR >>>'
go

/* 
 * TABLE: Dim_Date 
 */

CREATE TABLE Dim_Date(
    date_sk               int         NOT NULL,
    date                  date        NULL,
    date_NK               date        NULL,
    QtrYear_SK            int         NULL,
    QtrYear_Name          char(10)    NULL,
    MonthYear_SK          int         NULL,
    MonthYear_Name        char(10)    NULL,
    Day_in_Month          int         NULL,
    Day_in_Year           int         NULL,
    Day_Count             int         NULL,
    Day_Name              char(10)    NULL,
    Day_Abr               char(3)     NULL,
    Week_in_Year          int         NULL,
    Week_Count            int         NULL,
    Month_ID              int         NULL,
    Month_Name            char(10)    NULL,
    Month_Abr             char(3)     NULL,
    Month_Count           int         NULL,
    First_Day_of_Month    date        NULL,
    Last_Day_of_Month     date        NULL,
    Qtr_ID                int         NULL,
    Date_Year             int         NULL,
    CONSTRAINT PK35 PRIMARY KEY NONCLUSTERED (date_sk)
)

go


IF OBJECT_ID('Dim_Date') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Date >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Date >>>'
go

/* 
 * TABLE: Dim_DRIVER_LICENSE_JURISDICTION 
 */

CREATE TABLE Dim_DRIVER_LICENSE_JURISDICTION(
    DRIVER_LICENSE_JURISDICTION_SK    int             IDENTITY(1,1),
    DRIVER_LICENSE_JURISDICTION       varchar(255)    NULL,
    DI_PID                            varchar(20)     NULL,
    DI_Create_Date                    datetime        CONSTRAINT [DF__Dim_DRIVE__DI_Cr__300424B4] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_DRIV__337B452E4CFFC5C3 PRIMARY KEY NONCLUSTERED (DRIVER_LICENSE_JURISDICTION_SK)
)

go


IF OBJECT_ID('Dim_DRIVER_LICENSE_JURISDICTION') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_DRIVER_LICENSE_JURISDICTION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_DRIVER_LICENSE_JURISDICTION >>>'
go

/* 
 * TABLE: Dim_DRIVER_LICENSE_STATUS 
 */

CREATE TABLE Dim_DRIVER_LICENSE_STATUS(
    DRIVER_LICENSE_STATUS_SK    int             IDENTITY(1,1),
    DRIVER_LICENSE_STATUS       varchar(255)    NULL,
    DI_PID                      varchar(20)     NULL,
    DI_Create_Date              datetime        CONSTRAINT [DF__Dim_DRIVE__DI_Cr__32E0915F] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_DRIV__D2EBE310DB2EBEDB PRIMARY KEY NONCLUSTERED (DRIVER_LICENSE_STATUS_SK)
)

go


IF OBJECT_ID('Dim_DRIVER_LICENSE_STATUS') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_DRIVER_LICENSE_STATUS >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_DRIVER_LICENSE_STATUS >>>'
go

/* 
 * TABLE: Dim_EJECTION 
 */

CREATE TABLE Dim_EJECTION(
    EJECTION_SK       int            IDENTITY(1,1),
    EJECTION          varchar(80)    NULL,
    DI_PID            varchar(20)    NULL,
    DI_Create_Date    datetime       CONSTRAINT [DF__Dim_EJECT__DI_Cr__35BCFE0A] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_EJEC__89FD18F4AA4B4C42 PRIMARY KEY NONCLUSTERED (EJECTION_SK)
)

go


IF OBJECT_ID('Dim_EJECTION') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_EJECTION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_EJECTION >>>'
go

/* 
 * TABLE: Dim_EMOTIONAL_STATUS 
 */

CREATE TABLE Dim_EMOTIONAL_STATUS(
    EMOTIONAL_STATUS_SK    int            IDENTITY(1,1),
    EMOTIONAL_STATUS       varchar(80)    NULL,
    DI_PID                 varchar(20)    NULL,
    DI_Create_Date         datetime       CONSTRAINT [DF__Dim_EMOTI__DI_Cr__38996AB5] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_EMOT__DD0DDFCC21BF71A2 PRIMARY KEY NONCLUSTERED (EMOTIONAL_STATUS_SK)
)

go


IF OBJECT_ID('Dim_EMOTIONAL_STATUS') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_EMOTIONAL_STATUS >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_EMOTIONAL_STATUS >>>'
go

/* 
 * TABLE: Dim_PED_ACTION 
 */

CREATE TABLE Dim_PED_ACTION(
    PED_ACTION_SK     int             IDENTITY(1,1),
    PED_ACTION        varchar(255)    NULL,
    DI_PID            varchar(20)     NULL,
    DI_Create_Date    datetime        CONSTRAINT [DF__Dim_PED_A__DI_Cr__3B75D760] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_PED___0FB8A1A4FC7F5851 PRIMARY KEY NONCLUSTERED (PED_ACTION_SK)
)

go


IF OBJECT_ID('Dim_PED_ACTION') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_PED_ACTION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_PED_ACTION >>>'
go

/* 
 * TABLE: Dim_PED_LOCATION 
 */

CREATE TABLE Dim_PED_LOCATION(
    PED_LOCATION_SK    int             IDENTITY(1,1),
    PED_LOCATION       varchar(255)    NULL,
    DI_PID             varchar(20)     NULL,
    DI_Create_Date     datetime        CONSTRAINT [DF__Dim_PED_L__DI_Cr__3E52440B] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_PED___75218EA5947C60AA PRIMARY KEY NONCLUSTERED (PED_LOCATION_SK)
)

go


IF OBJECT_ID('Dim_PED_LOCATION') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_PED_LOCATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_PED_LOCATION >>>'
go

/* 
 * TABLE: Dim_PED_ROLE 
 */

CREATE TABLE Dim_PED_ROLE(
    PED_ROLE_SK       int             IDENTITY(1,1),
    PED_ROLE          varchar(255)    NULL,
    DI_PID            varchar(20)     NULL,
    DI_Create_Date    datetime        CONSTRAINT [DF__Dim_PED_R__DI_Cr__412EB0B6] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_PED___DD4B8B986848CF98 PRIMARY KEY NONCLUSTERED (PED_ROLE_SK)
)

go


IF OBJECT_ID('Dim_PED_ROLE') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_PED_ROLE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_PED_ROLE >>>'
go

/* 
 * TABLE: Dim_PERSON_INJURY 
 */

CREATE TABLE Dim_PERSON_INJURY(
    PERSON_INJURY_SK    int            IDENTITY(1,1),
    PERSON_INJURY       varchar(80)    NULL,
    DI_PID              varchar(20)    NULL,
    DI_Create_Date      datetime       CONSTRAINT [DF__Dim_PERSO__DI_Cr__440B1D61] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_PERS__E763CE7839671376 PRIMARY KEY NONCLUSTERED (PERSON_INJURY_SK)
)

go


IF OBJECT_ID('Dim_PERSON_INJURY') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_PERSON_INJURY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_PERSON_INJURY >>>'
go

/* 
 * TABLE: Dim_PERSON_SEX 
 */

CREATE TABLE Dim_PERSON_SEX(
    PERSON_SEX_SK     int            IDENTITY(1,1),
    PERSON_SEX        varchar(10)    NULL,
    DI_PID            varchar(20)    NULL,
    DI_Create_Date    datetime       CONSTRAINT [DF__Dim_PERSO__DI_Cr__46E78A0C] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_PERS__A6F61C9EA05E0F92 PRIMARY KEY NONCLUSTERED (PERSON_SEX_SK)
)

go


IF OBJECT_ID('Dim_PERSON_SEX') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_PERSON_SEX >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_PERSON_SEX >>>'
go

/* 
 * TABLE: Dim_PersonType 
 */

CREATE TABLE Dim_PersonType(
    PERSON_TYPE_SK    int            IDENTITY(1,1),
    PERSON_TYPE       varchar(80)    NULL,
    DI_PID            varchar(20)    NULL,
    DI_Create_Date    datetime       CONSTRAINT [DF__Dim_Perso__DI_Cr__49C3F6B7] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_Pers__18A528B242AEFB13 PRIMARY KEY NONCLUSTERED (PERSON_TYPE_SK)
)

go


IF OBJECT_ID('Dim_PersonType') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_PersonType >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_PersonType >>>'
go

/* 
 * TABLE: Dim_POINT_OF_IMPACT 
 */

CREATE TABLE Dim_POINT_OF_IMPACT(
    POINT_OF_IMPACT_SK    int             IDENTITY(1,1),
    POINT_OF_IMPACT       varchar(255)    NULL,
    DI_PID                varchar(20)     NULL,
    DI_Create_Date        datetime        CONSTRAINT [DF__Dim_POINT__DI_Cr__4CA06362] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_POIN__078D491F9FCE9812 PRIMARY KEY NONCLUSTERED (POINT_OF_IMPACT_SK)
)

go


IF OBJECT_ID('Dim_POINT_OF_IMPACT') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_POINT_OF_IMPACT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_POINT_OF_IMPACT >>>'
go

/* 
 * TABLE: Dim_POSITION_IN_VEHICLE 
 */

CREATE TABLE Dim_POSITION_IN_VEHICLE(
    POSITION_IN_VEHICLE_SK    int             IDENTITY(1,1),
    POSITION_IN_VEHICLE       varchar(255)    NULL,
    DI_PID                    varchar(20)     NULL,
    DI_Create_Date            datetime        CONSTRAINT [DF__Dim_POSIT__DI_Cr__4F7CD00D] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_POSI__57BFB4BCF805B385 PRIMARY KEY NONCLUSTERED (POSITION_IN_VEHICLE_SK)
)

go


IF OBJECT_ID('Dim_POSITION_IN_VEHICLE') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_POSITION_IN_VEHICLE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_POSITION_IN_VEHICLE >>>'
go

/* 
 * TABLE: Dim_PRE_CRASH 
 */

CREATE TABLE Dim_PRE_CRASH(
    PRE_CRASH_SK      int             IDENTITY(1,1),
    PRE_CRASH         varchar(255)    NULL,
    DI_PID            varchar(20)     NULL,
    DI_Create_Date    datetime        CONSTRAINT [DF__Dim_PRE_C__DI_Cr__52593CB8] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_PRE___AA790D66D80DECCD PRIMARY KEY NONCLUSTERED (PRE_CRASH_SK)
)

go


IF OBJECT_ID('Dim_PRE_CRASH') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_PRE_CRASH >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_PRE_CRASH >>>'
go

/* 
 * TABLE: Dim_PUBLIC_PROPERTY_DAMAGE 
 */

CREATE TABLE Dim_PUBLIC_PROPERTY_DAMAGE(
    PUBLIC_PROPERTY_DAMAGE_SK    int             IDENTITY(1,1),
    PUBLIC_PROPERTY_DAMAGE       varchar(255)    NULL,
    DI_PID                       varchar(20)     NULL,
    DI_Create_Date               datetime        CONSTRAINT [DF__Dim_PUBLI__DI_Cr__6D0D32F4] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_PUBL__2AF417C4532D452E PRIMARY KEY NONCLUSTERED (PUBLIC_PROPERTY_DAMAGE_SK)
)

go


IF OBJECT_ID('Dim_PUBLIC_PROPERTY_DAMAGE') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_PUBLIC_PROPERTY_DAMAGE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_PUBLIC_PROPERTY_DAMAGE >>>'
go

/* 
 * TABLE: Dim_SAFETY_EQUIPMENT 
 */

CREATE TABLE Dim_SAFETY_EQUIPMENT(
    SAFETY_EQUIPMENT_SK    int             IDENTITY(1,1),
    SAFETY_EQUIPMENT       varchar(255)    NULL,
    DI_PID                 varchar(20)     NULL,
    DI_Create_Date         datetime        CONSTRAINT [DF__Dim_SAFET__DI_Cr__5535A963] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_SAFE__4F00192870F5E7B7 PRIMARY KEY NONCLUSTERED (SAFETY_EQUIPMENT_SK)
)

go


IF OBJECT_ID('Dim_SAFETY_EQUIPMENT') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_SAFETY_EQUIPMENT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_SAFETY_EQUIPMENT >>>'
go

/* 
 * TABLE: Dim_STATE_REGISTRATION 
 */

CREATE TABLE Dim_STATE_REGISTRATION(
    STATE_REGISTRATION_SK    int            IDENTITY(1,1),
    STATE_REGISTRATION       varchar(80)    NULL,
    DI_PID                   varchar(20)    NULL,
    DI_Create_Date           datetime       CONSTRAINT [DF__Dim_STATE__DI_Cr__5812160E] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_STAT__CCA21E58C32D2AAE PRIMARY KEY NONCLUSTERED (STATE_REGISTRATION_SK)
)

go


IF OBJECT_ID('Dim_STATE_REGISTRATION') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_STATE_REGISTRATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_STATE_REGISTRATION >>>'
go

/* 
 * TABLE: Dim_TRAVEL_DIRECTION 
 */

CREATE TABLE Dim_TRAVEL_DIRECTION(
    TRAVEL_DIRECTION_SK    int             IDENTITY(1,1),
    TRAVEL_DIRECTION       varchar(255)    NULL,
    DI_PID                 varchar(20)     NULL,
    DI_Create_Date         datetime        CONSTRAINT [DF__Dim_TRAVE__DI_Cr__5AEE82B9] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_TRAV__34C8B85BC4268E15 PRIMARY KEY NONCLUSTERED (TRAVEL_DIRECTION_SK)
)

go


IF OBJECT_ID('Dim_TRAVEL_DIRECTION') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_TRAVEL_DIRECTION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_TRAVEL_DIRECTION >>>'
go

/* 
 * TABLE: Dim_VEHICLE_DAMAGE 
 */

CREATE TABLE Dim_VEHICLE_DAMAGE(
    VEHICLE_DAMAGE_SK    int             IDENTITY(1,1),
    VEHICLE_DAMAGE       varchar(255)    NULL,
    DI_PID               varchar(20)     NULL,
    DI_Create_Date       datetime        CONSTRAINT [DF__Dim_VEHIC__DI_Cr__5DCAEF64] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_VEHI__8F589654CFF1105F PRIMARY KEY NONCLUSTERED (VEHICLE_DAMAGE_SK)
)

go


IF OBJECT_ID('Dim_VEHICLE_DAMAGE') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_VEHICLE_DAMAGE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_VEHICLE_DAMAGE >>>'
go

/* 
 * TABLE: Dim_VEHICLE_MAKE 
 */

CREATE TABLE Dim_VEHICLE_MAKE(
    VEHICLE_MAKE_SK    int            IDENTITY(1,1),
    VEHICLE_MAKE       varchar(80)    NULL,
    DI_PID             varchar(20)    NULL,
    DI_Create_Date     datetime       CONSTRAINT [DF__Dim_VEHIC__DI_Cr__60A75C0F] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_VEHI__41290B500996BDC2 PRIMARY KEY NONCLUSTERED (VEHICLE_MAKE_SK)
)

go


IF OBJECT_ID('Dim_VEHICLE_MAKE') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_VEHICLE_MAKE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_VEHICLE_MAKE >>>'
go

/* 
 * TABLE: Dim_VEHICLE_MODEL 
 */

CREATE TABLE Dim_VEHICLE_MODEL(
    VEHICLE_MODEL_SK    int            IDENTITY(1,1),
    VEHICLE_MODEL       varchar(80)    NULL,
    DI_PID              varchar(20)    NULL,
    DI_Create_Date      datetime       CONSTRAINT [DF__Dim_VEHIC__DI_Cr__6383C8BA] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_VEHI__76DF90ABCFCED07A PRIMARY KEY NONCLUSTERED (VEHICLE_MODEL_SK)
)

go


IF OBJECT_ID('Dim_VEHICLE_MODEL') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_VEHICLE_MODEL >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_VEHICLE_MODEL >>>'
go

/* 
 * TABLE: Dim_VEHICLE_TYPE 
 */

CREATE TABLE Dim_VEHICLE_TYPE(
    VEHICLE_TYPE_SK    int            IDENTITY(1,1),
    VEHICLE_TYPE       varchar(80)    NULL,
    DI_PID             varchar(20)    NULL,
    DI_Create_Date     datetime       CONSTRAINT [DF__Dim_VEHIC__DI_Cr__66603565] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__Dim_VEHI__ECDC62B77446403A PRIMARY KEY NONCLUSTERED (VEHICLE_TYPE_SK)
)

go


IF OBJECT_ID('Dim_VEHICLE_TYPE') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_VEHICLE_TYPE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_VEHICLE_TYPE >>>'
go

/* 
 * TABLE: dim_vehicle_type_code 
 */

CREATE TABLE dim_vehicle_type_code(
    vehicle_type_code_SK    int            IDENTITY(1,1),
    vehicle_type_code       varchar(80)    NULL,
    DI_JobID                varchar(20)    NULL,
    DI_Create_Date          datetime       CONSTRAINT [DF__dim_vehic__DI_Cr__693CA210] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT PK__dim_vehi__1E36A19E54525E4A PRIMARY KEY NONCLUSTERED (vehicle_type_code_SK)
)

go


IF OBJECT_ID('dim_vehicle_type_code') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_vehicle_type_code >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_vehicle_type_code >>>'
go

/* 
 * TABLE: ERR_Model_Year 
 */

CREATE TABLE ERR_Model_Year(
    COLLISION_ID    int            NULL,
    CRASH_DATE      datetime       NULL,
    VEHICLE_YEAR    varchar(80)    NULL,
    V_UNIQUE_ID     int            NULL
)

go


IF OBJECT_ID('ERR_Model_Year') IS NOT NULL
    PRINT '<<< CREATED TABLE ERR_Model_Year >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE ERR_Model_Year >>>'
go

/* 
 * TABLE: fct_collision_crashes 
 */

CREATE TABLE fct_collision_crashes(
    collision_sk                      bigint            NOT NULL,
    collision_id                      bigint            NULL,
    collision_dt                      datetime          NULL,
    collision_day                     date              NULL,
    collision_time                    time(7)           NULL,
    collision_hour                    int               NULL,
    collision_dayoftheweek            int               NULL,
    borough_sk                        int               NULL,
    borough                           varchar(80)       NULL,
    zip_code                          varchar(40)       NULL,
    off_street_name                   varchar(40)       NULL,
    on_street_name                    varchar(40)       NULL,
    cross_street_name                 varchar(40)       NULL,
    latitude                          numeric(24, 6)    NULL,
    longitude                         numeric(24, 6)    NULL,
    location                          varchar(256)      NULL,
    number_of_cyclist_injured         int               NULL,
    number_of_cyclist_killed          int               NULL,
    number_of_motorist_injured        int               NULL,
    number_of_motorist_killed         int               NULL,
    number_of_pedestrians_injured     int               NULL,
    number_of_pedestrians_killed      int               NULL,
    number_of_persons_injured         int               NULL,
    number_of_persons_killed          int               NULL,
    number_of_vehicles_involved       int               NULL,
    number_of_contributing_factors    int               NULL,
    DI_JobID                          varchar(20)       NULL,
    DI_Create_Date                    datetime          CONSTRAINT [DF__fct_colli__DI_Cr__6FE99F9F] DEFAULT (getdate()) NOT NULL,
    collision_dt_sk                   int               NULL,
    CONSTRAINT PK__fct_coll__9981790273679CCB PRIMARY KEY NONCLUSTERED (collision_sk)
)

go


IF OBJECT_ID('fct_collision_crashes') IS NOT NULL
    PRINT '<<< CREATED TABLE fct_collision_crashes >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fct_collision_crashes >>>'
go

/* 
 * TABLE: fct_collision_crashes_vehicles 
 */

CREATE TABLE fct_collision_crashes_vehicles(
    collision_sk            bigint         NOT NULL,
    collision_id            bigint         NOT NULL,
    Vehicle_number          int            NOT NULL,
    vehicle_type_code_SK    int            NULL,
    DI_JobID                varchar(20)    NULL,
    DI_Create_Date          datetime       CONSTRAINT [DF__fct_colli__DI_Cr__72C60C4A] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT PK__fct_coll__17A5BE056B4EE40B PRIMARY KEY NONCLUSTERED (collision_sk, Vehicle_number)
)

go


IF OBJECT_ID('fct_collision_crashes_vehicles') IS NOT NULL
    PRINT '<<< CREATED TABLE fct_collision_crashes_vehicles >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fct_collision_crashes_vehicles >>>'
go

/* 
 * TABLE: fct_collision_persons 
 */

CREATE TABLE fct_collision_persons(
    P_UNIQUE_ID               int            NOT NULL,
    collision_persons_SK      char(10)       NOT NULL,
    COLLISION_ID              int            NULL,
    PERSON_ID                 varchar(80)    NULL,
    PERSON_TYPE_SK            int            NOT NULL,
    PERSON_INJURY_SK          int            NOT NULL,
    VEHICLE_ID                varchar(80)    NULL,
    PERSON_AGE                int            NULL,
    EJECTION_SK               int            NOT NULL,
    EMOTIONAL_STATUS_SK       int            NOT NULL,
    BODILY_INJURY_SK          int            NOT NULL,
    POSITION_IN_VEHICLE_SK    int            NOT NULL,
    SAFETY_EQUIPMENT_SK       int            NOT NULL,
    PED_LOCATION_SK           int            NOT NULL,
    PED_ACTION_SK             int            NOT NULL,
    COMPLAINT_SK              int            NOT NULL,
    PED_ROLE_SK               int            NOT NULL,
    PERSON_SEX_SK             int            NOT NULL,
    DI_PID                    varchar(20)    NULL,
    DI_Create_Date            datetime       CONSTRAINT [DF__fct_colli__DI_Cr__75A278F5] DEFAULT (getdate()) NULL,
    CONSTRAINT PK__fct_coll__61C2690981CE96DC PRIMARY KEY NONCLUSTERED (collision_persons_SK)
)

go


IF OBJECT_ID('fct_collision_persons') IS NOT NULL
    PRINT '<<< CREATED TABLE fct_collision_persons >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fct_collision_persons >>>'
go

/* 
 * TABLE: fct_collision_persons_contributing_factors 
 */

CREATE TABLE fct_collision_persons_contributing_factors(
    TABLE_SK                  int            IDENTITY(1,1),
    COLLISION_ID              int            NULL,
    PERSON_ID                 varchar(80)    NULL,
    FACTOR_NUMBER             int            NULL,
    CONTRIBUTING_FACTOR_SK    int            NOT NULL,
    DI_PID                    varchar(20)    NULL,
    DI_Create_Date            datetime       CONSTRAINT [DF__fct_colli__DI_Cr__787EE5A0] DEFAULT (getdate()) NULL,
    collision_persons_SK      char(10)       NOT NULL,
    CONSTRAINT PK__fct_coll__8530F6F004C1AADA PRIMARY KEY NONCLUSTERED (TABLE_SK)
)

go


IF OBJECT_ID('fct_collision_persons_contributing_factors') IS NOT NULL
    PRINT '<<< CREATED TABLE fct_collision_persons_contributing_factors >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fct_collision_persons_contributing_factors >>>'
go

/* 
 * TABLE: fct_Collisions_Vehicles 
 */

CREATE TABLE fct_Collisions_Vehicles(
    V_UNIQUE_ID                       int              NOT NULL,
    Collisions_Vehicles_SK            char(10)         NOT NULL,
    COLLISION_ID                      int              NULL,
    VEHICLE_ID                        varchar(80)      NULL,
    STATE_REGISTRATION_SK             int              NOT NULL,
    VEHICLE_TYPE_SK                   int              NOT NULL,
    VEHICLE_MAKE_SK                   int              NOT NULL,
    VEHICLE_MODEL_SK                  int              NOT NULL,
    VEHICLE_YEAR                      varchar(80)      NULL,
    TRAVEL_DIRECTION_SK               int              NOT NULL,
    VEHICLE_OCCUPANTS                 int              NULL,
    DRIVER_LICENSE_STATUS_SK          int              NOT NULL,
    DRIVER_LICENSE_JURISDICTION_SK    int              NOT NULL,
    PRE_CRASH_SK                      int              NOT NULL,
    POINT_OF_IMPACT_SK                int              NOT NULL,
    PUBLIC_PROPERTY_DAMAGE_SK         int              NOT NULL,
    PUBLIC_PROPERTY_DAMAGE_TYPE       varchar(1024)    NULL,
    DI_PID                            varchar(20)      NULL,
    DI_Create_Date                    datetime         CONSTRAINT [DF__fct_Colli__DI_Cr__7B5B524B] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT PK__fct_Coll__61C2690914FBD527 PRIMARY KEY NONCLUSTERED (V_UNIQUE_ID)
)

go


IF OBJECT_ID('fct_Collisions_Vehicles') IS NOT NULL
    PRINT '<<< CREATED TABLE fct_Collisions_Vehicles >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fct_Collisions_Vehicles >>>'
go

/* 
 * TABLE: fct_Collisions_Vehicles_Contributing_Factors 
 */

CREATE TABLE fct_Collisions_Vehicles_Contributing_Factors(
    Collisions_Vehicles_Contributing_Factors_SK    int            IDENTITY(1,1),
    COLLISION_ID                                   int            NULL,
    VEHICLE_ID                                     varchar(80)    NULL,
    VEHICLE_CONTRIBUTING_NUMBER                    int            NULL,
    CONTRIBUTING_FACTOR_SK                         int            NOT NULL,
    DI_PID                                         varchar(20)    NULL,
    DI_Create_Date                                 datetime       CONSTRAINT [DF__fct_Colli__DI_Cr__7E37BEF6] DEFAULT (getdate()) NOT NULL,
    V_UNIQUE_ID                                    int            NOT NULL,
    CONSTRAINT PK__fct_Coll__8530F6F0206E6F8D PRIMARY KEY NONCLUSTERED (Collisions_Vehicles_Contributing_Factors_SK)
)

go


IF OBJECT_ID('fct_Collisions_Vehicles_Contributing_Factors') IS NOT NULL
    PRINT '<<< CREATED TABLE fct_Collisions_Vehicles_Contributing_Factors >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fct_Collisions_Vehicles_Contributing_Factors >>>'
go

/* 
 * TABLE: fct_Collisions_Vehicles_Vehicle_Damage 
 */

CREATE TABLE fct_Collisions_Vehicles_Vehicle_Damage(
    Collisions_Vehicles_Vehicle_Damage_SK    int            IDENTITY(1,1),
    COLLISION_ID                             int            NULL,
    VEHICLE_ID                               varchar(80)    NULL,
    VEHICLE_DAMAGE_NUMBER                    int            NULL,
    VEHICLE_DAMAGE_SK                        int            NOT NULL,
    DI_PID                                   varchar(20)    NULL,
    DI_Create_Date                           datetime       CONSTRAINT [DF__fct_Colli__DI_Cr__01142BA1] DEFAULT (getdate()) NOT NULL,
    V_UNIQUE_ID                              int            NOT NULL,
    CONSTRAINT PK__fct_Coll__8530F6F021AAF658 PRIMARY KEY NONCLUSTERED (Collisions_Vehicles_Vehicle_Damage_SK)
)

go


IF OBJECT_ID('fct_Collisions_Vehicles_Vehicle_Damage') IS NOT NULL
    PRINT '<<< CREATED TABLE fct_Collisions_Vehicles_Vehicle_Damage >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fct_Collisions_Vehicles_Vehicle_Damage >>>'
go

/* 
 * TABLE: ERR_Model_Year 
 */

ALTER TABLE ERR_Model_Year ADD CONSTRAINT Reffct_Collisions_Vehicles20 
    FOREIGN KEY (V_UNIQUE_ID)
    REFERENCES fct_Collisions_Vehicles(V_UNIQUE_ID)
go


/* 
 * TABLE: fct_collision_crashes 
 */

ALTER TABLE fct_collision_crashes ADD CONSTRAINT Refdim_arrest_borough4 
    FOREIGN KEY (borough_sk)
    REFERENCES dim_arrest_borough(borough_sk)
go

ALTER TABLE fct_collision_crashes ADD CONSTRAINT RefDim_Date37 
    FOREIGN KEY (collision_dt_sk)
    REFERENCES Dim_Date(date_sk)
go


/* 
 * TABLE: fct_collision_crashes_vehicles 
 */

ALTER TABLE fct_collision_crashes_vehicles ADD CONSTRAINT Refdim_vehicle_type_code26 
    FOREIGN KEY (vehicle_type_code_SK)
    REFERENCES dim_vehicle_type_code(vehicle_type_code_SK)
go


/* 
 * TABLE: fct_collision_persons 
 */

ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_EMOTIONAL_STATUS3 
    FOREIGN KEY (EMOTIONAL_STATUS_SK)
    REFERENCES Dim_EMOTIONAL_STATUS(EMOTIONAL_STATUS_SK)
go

ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_POSITION_IN_VEHICLE10 
    FOREIGN KEY (POSITION_IN_VEHICLE_SK)
    REFERENCES Dim_POSITION_IN_VEHICLE(POSITION_IN_VEHICLE_SK)
go

ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_PED_ACTION11 
    FOREIGN KEY (PED_ACTION_SK)
    REFERENCES Dim_PED_ACTION(PED_ACTION_SK)
go

ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_BODILY_INJURY12 
    FOREIGN KEY (BODILY_INJURY_SK)
    REFERENCES Dim_BODILY_INJURY(BODILY_INJURY_SK)
go

ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_PED_LOCATION15 
    FOREIGN KEY (PED_LOCATION_SK)
    REFERENCES Dim_PED_LOCATION(PED_LOCATION_SK)
go

ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_COMPLAINT16 
    FOREIGN KEY (COMPLAINT_SK)
    REFERENCES Dim_COMPLAINT(COMPLAINT_SK)
go

ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_PED_ROLE23 
    FOREIGN KEY (PED_ROLE_SK)
    REFERENCES Dim_PED_ROLE(PED_ROLE_SK)
go

ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_SAFETY_EQUIPMENT27 
    FOREIGN KEY (SAFETY_EQUIPMENT_SK)
    REFERENCES Dim_SAFETY_EQUIPMENT(SAFETY_EQUIPMENT_SK)
go

ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_PERSON_INJURY28 
    FOREIGN KEY (PERSON_INJURY_SK)
    REFERENCES Dim_PERSON_INJURY(PERSON_INJURY_SK)
go

ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_PERSON_SEX31 
    FOREIGN KEY (PERSON_SEX_SK)
    REFERENCES Dim_PERSON_SEX(PERSON_SEX_SK)
go

ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_PersonType35 
    FOREIGN KEY (PERSON_TYPE_SK)
    REFERENCES Dim_PersonType(PERSON_TYPE_SK)
go

ALTER TABLE fct_collision_persons ADD CONSTRAINT RefDim_EJECTION36 
    FOREIGN KEY (EJECTION_SK)
    REFERENCES Dim_EJECTION(EJECTION_SK)
go


/* 
 * TABLE: fct_collision_persons_contributing_factors 
 */

ALTER TABLE fct_collision_persons_contributing_factors ADD CONSTRAINT Reffct_collision_persons5 
    FOREIGN KEY (collision_persons_SK)
    REFERENCES fct_collision_persons(collision_persons_SK)
go

ALTER TABLE fct_collision_persons_contributing_factors ADD CONSTRAINT RefDim_CONTRIBUTING_FACTOR24 
    FOREIGN KEY (CONTRIBUTING_FACTOR_SK)
    REFERENCES Dim_CONTRIBUTING_FACTOR(CONTRIBUTING_FACTOR_SK)
go


/* 
 * TABLE: fct_Collisions_Vehicles 
 */

ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_POINT_OF_IMPACT2 
    FOREIGN KEY (POINT_OF_IMPACT_SK)
    REFERENCES Dim_POINT_OF_IMPACT(POINT_OF_IMPACT_SK)
go

ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_VEHICLE_MAKE9 
    FOREIGN KEY (VEHICLE_MAKE_SK)
    REFERENCES Dim_VEHICLE_MAKE(VEHICLE_MAKE_SK)
go

ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_VEHICLE_MODEL13 
    FOREIGN KEY (VEHICLE_MODEL_SK)
    REFERENCES Dim_VEHICLE_MODEL(VEHICLE_MODEL_SK)
go

ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_PRE_CRASH14 
    FOREIGN KEY (PRE_CRASH_SK)
    REFERENCES Dim_PRE_CRASH(PRE_CRASH_SK)
go

ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_VEHICLE_TYPE21 
    FOREIGN KEY (VEHICLE_TYPE_SK)
    REFERENCES Dim_VEHICLE_TYPE(VEHICLE_TYPE_SK)
go

ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_PUBLIC_PROPERTY_DAMAGE22 
    FOREIGN KEY (PUBLIC_PROPERTY_DAMAGE_SK)
    REFERENCES Dim_PUBLIC_PROPERTY_DAMAGE(PUBLIC_PROPERTY_DAMAGE_SK)
go

ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_DRIVER_LICENSE_JURISDICTION29 
    FOREIGN KEY (DRIVER_LICENSE_JURISDICTION_SK)
    REFERENCES Dim_DRIVER_LICENSE_JURISDICTION(DRIVER_LICENSE_JURISDICTION_SK)
go

ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_STATE_REGISTRATION30 
    FOREIGN KEY (STATE_REGISTRATION_SK)
    REFERENCES Dim_STATE_REGISTRATION(STATE_REGISTRATION_SK)
go

ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_DRIVER_LICENSE_STATUS33 
    FOREIGN KEY (DRIVER_LICENSE_STATUS_SK)
    REFERENCES Dim_DRIVER_LICENSE_STATUS(DRIVER_LICENSE_STATUS_SK)
go

ALTER TABLE fct_Collisions_Vehicles ADD CONSTRAINT RefDim_TRAVEL_DIRECTION34 
    FOREIGN KEY (TRAVEL_DIRECTION_SK)
    REFERENCES Dim_TRAVEL_DIRECTION(TRAVEL_DIRECTION_SK)
go


/* 
 * TABLE: fct_Collisions_Vehicles_Contributing_Factors 
 */

ALTER TABLE fct_Collisions_Vehicles_Contributing_Factors ADD CONSTRAINT Reffct_Collisions_Vehicles18 
    FOREIGN KEY (V_UNIQUE_ID)
    REFERENCES fct_Collisions_Vehicles(V_UNIQUE_ID)
go

ALTER TABLE fct_Collisions_Vehicles_Contributing_Factors ADD CONSTRAINT RefDim_CONTRIBUTING_FACTOR25 
    FOREIGN KEY (CONTRIBUTING_FACTOR_SK)
    REFERENCES Dim_CONTRIBUTING_FACTOR(CONTRIBUTING_FACTOR_SK)
go


/* 
 * TABLE: fct_Collisions_Vehicles_Vehicle_Damage 
 */

ALTER TABLE fct_Collisions_Vehicles_Vehicle_Damage ADD CONSTRAINT RefDim_VEHICLE_DAMAGE1 
    FOREIGN KEY (VEHICLE_DAMAGE_SK)
    REFERENCES Dim_VEHICLE_DAMAGE(VEHICLE_DAMAGE_SK)
go

ALTER TABLE fct_Collisions_Vehicles_Vehicle_Damage ADD CONSTRAINT Reffct_Collisions_Vehicles19 
    FOREIGN KEY (V_UNIQUE_ID)
    REFERENCES fct_Collisions_Vehicles(V_UNIQUE_ID)
go


