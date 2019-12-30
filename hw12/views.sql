CREATE OR REPLACE VIEW services_service_categories AS
SELECT
	sc.name AS service_category_name,
	s.name AS servise
FROM
	services AS s
	JOIN service_categories AS sc ON s.service_category_id = sc.id;
  
CREATE OR REPLACE VIEW services_gov_agencie AS
SELECT
	ga.name AS gov_agencie,
	s.name AS servise
FROM
	services AS s
	JOIN government_agencies AS ga ON s.gov_agency_id = ga.id;
  
CREATE OR REPLACE VIEW services_life_sit AS
SELECT
	lsc.name AS life_situation_category,
	ls.name AS life_situation,
	s.name AS servise
FROM
	services AS s
	JOIN life_situations AS ls ON s.life_situation_id = ls.id
    JOIN life_situation_categories AS lsc ON lsc.id = ls.life_situation_category_id
order by lsc.name, ls.name, s.name;