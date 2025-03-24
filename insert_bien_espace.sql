INSERT INTO ESPACE (IdE, Designation, Superficie, IdERattach) VALUES
(900,'Superficie',50,NULL)
    (901,'Salon Cuisine',22,900)
    (902,'Chambre 1',10.5,900)
    (903,'Chambre 2',8.5,900)
    (904,'Salle de bain',2.5,900)

(910,'Superficie',337,NULL)
    (911,'Superficie maison',156,910)
        (9110,'Rez de chaussée',103,911)
            (9111,'Entree',4,9110)
            (9112,'Cuisine',15,9110)
            (9113,'Salle a manger',12,9110)
            (9114,'Buanderie',6,9110)
            (9115,'salle de bain 1',15,9110)
            (9116,'Salon',30,9110)
            (9117,'Escalier',4,9110)
            (9118,'Chambre 1',15,9110)
                (91180,'Dressing',4,9118)
        (9120,'Etage',72,911) 
            (9121,'Chambre 2',14,9120)
                (91210,'Salle de bain 2',5,9121)
            (9122,'Chambre 3',14,9120)
                (91221,'Salle de bain 3',5,9122)
            (9123,'Chambre 4',14,9120)
                (91230,'Salle de bain 4',5,9123)
            (9124,'Salle de bain 5',6,9120)
            (9125,'Escalier',4,9120)
            
;

INSERT INTO BIEN (IdEBien, Categorie, Type, IdP, Ville, Prix) VALUES
(900,'Appartement','Studio',01,'Marseille',161350)
(910,'Maison','Villa',02,'Bordeaux',698000)

