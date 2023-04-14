-- modification table, colomn / requete et jointure BDD


-- sélectionne tous les coaches
-- Select * from coach


-- supprime de la table un coach, avec id_coach 2
-- delete from coach where id_coach = 2;


-- donner moi id_membre pour un membre d'euro fit choisi 
-- select id_membre 
-- from membre
-- where nom_membre = "Kubara"
 
 
-- sélection un membre qui a le prenom Milena
-- select nom_membre FROM membre
-- where prenom_membre="Milena";
 
 
 -- sélection des personnes qui habite en Pologne
 -- select * from membre join adresse using (id_adresse) 
 -- join pays using (id_pays)
 -- where nom_pays="Pologne";


 -- select * from euro_fit_zuzanna.membre
 -- order by prenom_membre asc; 


-- select nom_membre, prenom_membre from euro_fit_zuzanna.membre
-- order by prenom_membre asc; 


-- select * from activite_client where date_activite="2023-04-10";


-- Select * from activite where libele like "Z%";


-- je supprime dans la table activite_client, le libele
-- alter table activite_client
-- drop column libele;


-- je change le nom 
-- alter table activite_client
-- rename columndateheure_fin TO date_heure_fin;







