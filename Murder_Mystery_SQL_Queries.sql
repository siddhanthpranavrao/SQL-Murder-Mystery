SELECT * FROM crime_scene_report
WHERE city = "SQL City" AND type = "murder" AND date = 20180115

SELECT * FROM person
WHERE address_street_name = "Northwestern Dr"
ORDER BY address_number DESC

SELECT * FROM person
WHERE address_street_name = "Franklin Ave"
AND name LIKE "%Annabel%"

SELECT * FROM interview
WHERE person_id IN (14887, 16371)

SELECT * FROM drivers_license
WHERE plate_number LIKE "%H42W%"
AND gender = "male"

SELECT * FROM get_fit_now_member m
LEFT JOIN get_fit_now_check_in ci
ON m.id = ci.membership_id
WHERE m.id LIKE "48Z%"
AND membership_status = "gold"

SELECT * FROM person
WHERE license_id IN (
	SELECT id FROM drivers_license
	WHERE plate_number LIKE "%H42W%"
	AND gender = "male"
)

SELECT * FROM facebook_event_checkin
WHERE person_id IN (
67318, 51739
)

SELECT * FROM facebook_event_checkin
WHERE person_id IN (
	SELECT p.id FROM person p
	LEFT JOIN income i
	ON p.ssn = i.ssn
	LEFT JOIN drivers_license dl
	ON p.license_id = dl.id
	WHERE (dl.height >= 65 AND dl.height <= 67)
	AND dl.gender = "female"
	AND dl.car_make = "Tesla"
	AND dl.car_model = "Model S"
)

