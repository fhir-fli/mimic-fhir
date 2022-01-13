WITH fhir_medication_mix AS (
	SELECT
  		pr.pharmacy_id AS pr_PHARMACY_ID
  		--, MIN(pr.form_rx) as pr_FORM_RX
  
  		, json_agg(json_build_object(
      		'itemReference', 
          		jsonb_build_object('reference', 'Medication/' || 
                    uuid_generate_v5(ns_medication.uuid, 
						CASE 
                        WHEN md.drug_id IS NOT NULL 
                        THEN CAST(md.drug_id AS TEXT) 
                        ELSE CAST(pr.ndc AS TEXT) END
					)                    
            )
          )) as pr_INGREDIENTS
  
  		-- reference uuids
  		, uuid_generate_v5(ns_medication.uuid, CAST(pr.pharmacy_id AS TEXT)) AS uuid_DRUG
  	FROM
  		mimic_hosp.prescriptions pr	 
  		INNER JOIN fhir_etl.subjects sub
  			ON pr.subject_id = sub.subject_id 
        LEFT JOIN fhir_etl.map_drug_id md
        	ON pr.drug = md.drug
  		LEFT JOIN fhir_etl.uuid_namespace ns_medication 
  			ON ns_medication.name = 'Medication'
  	GROUP BY 
  		pr.pharmacy_id
  		, ns_medication.uuid
)

INSERT INTO mimic_fhir.medication
SELECT 
	uuid_DRUG AS id
	, jsonb_strip_nulls(jsonb_build_object(
    	'resourceType', 'Medication'
        , 'id', uuid_DRUG
        , 'ingredient', pr_INGREDIENTS
    )) AS fhir 
FROM
	fhir_medication_mix
