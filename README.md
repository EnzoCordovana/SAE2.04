# SAE2.04

Dans le cadre de la SAE2.04, nous devons faire une base de donnée pour un réseau d'agences immobilières.

## Structure des relations

Le schéma est donné ci-dessous pour gérer les biens qui lui sont confiés.


>   PROPRIO     (<u>IdP</u>, Nom, Prenom) </br>
>   ESPACE      (<u>IdE</u>, Designation, Superficie, IdERattach#) </br>
>   BIEN        (<u>IdEBien#</u>, Categorie, Type, IdP#, Ville, Prix)

Les clefs primaires sont soulignées et les clefs étrangères sont postfixées par #.

## Partie 1 : Création de la BD IMMO

**Q1** : Ecrivez le Script SQL de création de la BD IMMO avec SQLdeveloper ou Live SQL

**Q2** : Définissez un jeu de données et écrire le Script SQL associé avec SQLdeveloper ou Live SQL (au moins 20 tuples par tables)

**Q3** : Donnez, en csv, les tables de la base.

## Partie 2 : Interrogation et mise à jour de la BD IMMO

**Q1** : Donner le nombre de biens pour chaque catégorie et chaque type.

**Q2** : Quels sont les espaces (identifiant, désignation) composant (directement ou pas) le bien d’identifiant 945.

**Q3** : Quels sont les propriétaires n’ayant aucun bien à Marseille.

**Q4** : Quelles sont les villes dans lesquelles plus de 10 maisons de villes (catégorie) sont proposées ?

**Q5** : Pour les différents biens, donnez l’écart entre leur prix et le prix minimal proposé pour les biens.

**Q6** : Pour les différents biens, donnez l’écart entre leur prix et le prix minimal proposé dans leur catégorie.

**Q7** : Pour chaque propriétaire ayant au moins deux studios, donnez le nombre total de biens.

**Q8** : Quels sont les propriétaires qui ont un bien de chaque catégorie.

**Q9** : Quels sont les biens (identifiant) ayant la terrasse (désignation) la plus grande ?

**Q10** : Quels sont les propriétaires (identifiant) ayant des biens dans les mêmes catégories que les biens du propriétaire 105.

**Q11** : Reformuler la requêtes Q6 en utilisant une vue (VIEW).

## Partie 3 : Visualisation des données de la BD IMMO