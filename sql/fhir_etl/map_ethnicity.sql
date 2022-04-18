DROP TABLE IF EXISTS fhir_etl.map_ethnicity;
CREATE TABLE fhir_etl.map_ethnicity(
    mimic_ethnicity         VARCHAR NOT NULL,
    fhir_ethnicity_display  VARCHAR NOT NULL,
    fhir_ethnicity_code     VARCHAR NOT NULL,
    fhir_system             VARCHAR NOT NULL
);


INSERT INTO fhir_etl.map_ethnicity
    (mimic_ethnicity, fhir_ethnicity_display, fhir_ethnicity_code, fhir_system)
VALUES 
    ('BLACK/AFRICAN', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('MULTIPLE RACE/ETHNICITY', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('WHITE - OTHER EUROPEAN', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('WHITE - EASTERN EUROPEAN', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('ASIAN', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('ASIAN - ASIAN INDIAN', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('ASIAN - KOREAN', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('ASIAN - CHINESE', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('BLACK/AFRICAN AMERICAN', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('AMERICAN INDIAN/ALASKA NATIVE', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('NATIVE HAWAIIAN OR OTHER PACIFIC ISLANDER', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('BLACK/CAPE VERDEAN', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('WHITE', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('WHITE - BRAZILIAN', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('WHITE - RUSSIAN', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('BLACK/CARIBBEAN ISLAND', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('ASIAN - SOUTH EAST ASIAN', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('PORTUGUESE', 'Not Hispanic or Latino', '2186-5', 'urn:oid:2.16.840.1.113883.6.238'),
    ('HISPANIC/LATINO - CUBAN', 'Hispanic or Latino', '2135-2', 'urn:oid:2.16.840.1.113883.6.238'),
    ('HISPANIC/LATINO - PUERTO RICAN', 'Hispanic or Latino', '2135-2', 'urn:oid:2.16.840.1.113883.6.238'),
    ('HISPANIC/LATINO - HONDURAN', 'Hispanic or Latino', '2135-2', 'urn:oid:2.16.840.1.113883.6.238'),
    ('HISPANIC/LATINO - COLUMBIAN', 'Hispanic or Latino', '2135-2', 'urn:oid:2.16.840.1.113883.6.238'),
    ('HISPANIC/LATINO - CENTRAL AMERICAN', 'Hispanic or Latino', '2135-2', 'urn:oid:2.16.840.1.113883.6.238'),
    ('HISPANIC OR LATINO', 'Hispanic or Latino', '2135-2', 'urn:oid:2.16.840.1.113883.6.238'),
    ('HISPANIC/LATINO - GUATEMALAN', 'Hispanic or Latino', '2135-2', 'urn:oid:2.16.840.1.113883.6.238'),
    ('HISPANIC/LATINO - MEXICAN', 'Hispanic or Latino', '2135-2', 'urn:oid:2.16.840.1.113883.6.238'),
    ('HISPANIC/LATINO - DOMINICAN', 'Hispanic or Latino', '2135-2', 'urn:oid:2.16.840.1.113883.6.238'),
    ('SOUTH AMERICAN', 'Hispanic or Latino', '2135-2', 'urn:oid:2.16.840.1.113883.6.238'),
    ('HISPANIC/LATINO - SALVADORAN', 'Hispanic or Latino', '2135-2', 'urn:oid:2.16.840.1.113883.6.238'),
    ('PATIENT DECLINED TO ANSWER', 'asked but unknown', 'ASKU', 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor'),
    ('UNABLE TO OBTAIN', 'unknown', 'UNK', 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor'),
    ('UNKNOWN', 'unknown', 'UNK', 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor'),
    ('OTHER', 'unknown', 'UNK', 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor');
