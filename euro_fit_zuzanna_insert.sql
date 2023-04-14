
-- insertion BDD

-- insert into coach (id_coach, prenom_coach, nom_coach, mail_coach, tel_coach)
-- values (1, "Lisa", "Johns", "lisa.johns@gmail.com", "+33612345543"),
-- (2, "Claire", "Huard", "h.claire@gmail.com", "+33612345543"),
-- (3, "Szymon", "Kruszonja", "kruszona-choach@gonet.pl", "+48612345543");


-- Select * from coach

-- insert into pays (id_pays, nom_pays)
-- values (1,"France"),(2,"Pays Bas"),(3,"Pologne");

-- Select * from pays

  
-- insert into adresse (id_adresse, numero_adresse, rue_adresse, ville_adresse, code_postale_adresse, id_pays)
-- values (1, 242, "BD Fragonard", "Grasse", "O6740", 1),
-- (2, 4901, "st Dage", "Amsterdam", "79009A", 2),
-- (3, 18, "Ulica Ks Niedzieli", "Katowice", "84200", 3);

-- Select * from adresse


-- insert into type_abonnement (id_type_abonnement, libele, prix_abonnement)
-- values (1, "VIP", 200),
-- (2, "Premium Inernational", 175),
-- (3, "Premium", 150);
       
-- Select * from type_abonnement
      
--  insert into membre (id_membre, nom_membre, prenom_membre, email_membre, tel_membre, id_adresse)
--  values (1,"Demongeot", "Clement", "clement.d06@hotmail.com", "+33675329955", 1),
--   (2,"Becker", "Carine", "carine.becker@gmail.com", "+47775329922", 2),
--   (3,"Kubara", "Milena", "m.kubara.pl@gmail.com", "+48775377901", 3);
            
            
-- select * from membre
           
           
-- insert into abonnement (id_abonnement, date_debut, date_fin, num_badge, id_type_abonnement, id_membre)
-- values (1,"2022-11-05", "2023-10-05", "004453326", 3, 1),
-- (2,"2023-01-05", "2024-01-04", "0048577443", 2, 2),
-- (3,"2023-04-02", "2024-04-01", "0047799329", 1, 3);

-- select * from abonnement

-- insert into activite (id_activite, libele, id_coach)
-- values (1,"Fit-boxing", 1),
		-- (2,"Zumba", 3),
       --  (3,"Pliate", 2);

-- select * from activite


-- insert into activite_client (id_activite_client, date_heure_debut, date_heure_fin, date_activite, id_membre, id_activite)
-- values (1,"2023-04-10 10:00", "2023-04-10 11:15", "2023-04-10", 1, 2),
--   (2,"2023-04-10 14:00", "2023-04-10 15:00", "2023-04-10", 2, 3),
--   (3,"2023-04-12 09:00", "2023-04-12 10:00", "2023-04-12", 3, 1);

-- select * from activite_client


