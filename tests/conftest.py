from pathlib import Path
import json
import pandas as pd
import psycopg2

import pytest

#from fhir.resources.conceptmap import ConceptMap


# Example patient that has links to all other resources
def patient_id():
    return '01aa15d9-3114-5220-b492-332361c2f91c'


# Initialize database connection to mimic
@pytest.fixture(scope="session")
def db_conn():
    sqluser = 'postgres'
    sqlpass = 'postgres'
    dbname = 'mimic'
    host = 'localhost'

    conn = psycopg2.connect(
        dbname=dbname, user=sqluser, password=sqlpass, host=host
    )
    return conn


# Initialize database connection to hapi
@pytest.fixture(scope="session")
def db_conn_hapi():
    sqluser = 'postgres'
    sqlpass = 'postgres'
    dbname = 'hapi_r4'
    host = 'localhost'

    conn = psycopg2.connect(
        dbname=dbname, user=sqluser, password=sqlpass, host=host
    )
    return conn


# Generic function to get single resource from the DB
def get_single_resource(db_conn, table_name):
    q_resource = f"SELECT * FROM mimic_fhir.{table_name} LIMIT 1"
    resource = pd.read_sql_query(q_resource, db_conn)

    return resource.fhir[0]


# Get a single resource with a link to a specific patient
def get_single_resource_by_pat(db_conn, table_name):
    q_resource = f"SELECT * FROM mimic_fhir.{table_name} WHERE patient_id = '{patient_id()}' LIMIT 1"
    resource = pd.read_sql_query(q_resource, db_conn)

    return resource.fhir[0]


# Return a single patient resource
@pytest.fixture(scope="session")
def patient_resource(db_conn):
    return get_single_resource(db_conn, 'patient')


# Return a single encounter resource
@pytest.fixture(scope="session")
def encounter_resource(db_conn):
    return get_single_resource(db_conn, 'encounter')


# Return a single condition resource
@pytest.fixture(scope="session")
def condition_resource(db_conn):
    return get_single_resource(db_conn, 'condition')


# Return a single encounter_icu resource
@pytest.fixture(scope="session")
def encounter_icu_resource(db_conn):
    return get_single_resource(db_conn, 'encounter_icu')


# Return a single medication administration resource
@pytest.fixture(scope="session")
def medadmin_resource(db_conn):
    return get_single_resource(db_conn, 'medication_administration')


# Return a single medication administration icu resource
@pytest.fixture(scope="session")
def medadmin_icu_resource(db_conn):
    return get_single_resource(db_conn, 'medication_administration_icu')


# Return a single medication request resource
@pytest.fixture(scope="session")
def medication_request_resource(db_conn):
    return get_single_resource(db_conn, 'medication_request')


# Return a single medication resource
@pytest.fixture(scope="session")
def medication_resource(db_conn):
    return get_single_resource(db_conn, 'medication')


# Return a single observation_chartevents resource
@pytest.fixture(scope="session")
def observation_chartevents_resource(db_conn):
    return get_single_resource(db_conn, 'observation_chartevents')


# Return a single observation_dateevents resource
@pytest.fixture(scope="session")
def observation_datetimeevents_resource(db_conn):
    return get_single_resource(db_conn, 'observation_datetimeevents')


# Return a single observation_labs resource
@pytest.fixture(scope="session")
def observation_labs_resource(db_conn):
    return get_single_resource(db_conn, 'observation_labs')


# Return a single observation_micro_test resource
@pytest.fixture(scope="session")
def observation_micro_test_resource(db_conn):
    return get_single_resource(db_conn, 'observation_micro_test')


# Return a single observation_micro_org resource
@pytest.fixture(scope="session")
def observation_micro_org_resource(db_conn):
    return get_single_resource(db_conn, 'observation_micro_org')


# Return a single observation_micro_susc resource
@pytest.fixture(scope="session")
def observation_micro_susc_resource(db_conn):
    return get_single_resource(db_conn, 'observation_micro_susc')


# Return a single observation_outputevents resource
@pytest.fixture(scope="session")
def observation_outputevents_resource(db_conn):
    return get_single_resource(db_conn, 'observation_outputevents')


# Return a single procedure resource
@pytest.fixture(scope="session")
def procedure_resource(db_conn):
    return get_single_resource(db_conn, 'procedure')


# Return a single procedure_icu resource
@pytest.fixture(scope="session")
def procedure_icu_resource(db_conn):
    return get_single_resource(db_conn, 'procedure_icu')