--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

-- Started on 2021-02-15 09:16:59

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3130 (class 0 OID 24642)
-- Dependencies: 210
-- Data for Name: adresse; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.adresse (adresse_id, numero, type_voie, nom_voie, complement_adresse, code_postal, ville) VALUES (1, 11, 'rue', 'des Clotais', NULL, 91160, 'Champlan');
INSERT INTO public.adresse (adresse_id, numero, type_voie, nom_voie, complement_adresse, code_postal, ville) VALUES (2, 5, 'rue', 'du Pélican', NULL, 44110, 'Châteaubriant');
INSERT INTO public.adresse (adresse_id, numero, type_voie, nom_voie, complement_adresse, code_postal, ville) VALUES (3, NULL, 'Lieu-dit', 'La Dorelle', NULL, 86120, 'Bournand');
INSERT INTO public.adresse (adresse_id, numero, type_voie, nom_voie, complement_adresse, code_postal, ville) VALUES (4, 8, 'route', 'Arc-en-ciel', 'Nintendo Switch', 99999, 'Royaume Champignon');
INSERT INTO public.adresse (adresse_id, numero, type_voie, nom_voie, complement_adresse, code_postal, ville) VALUES (5, 13, 'avenue', 'du Shampoing', 'Rayon Douche', 0, 'Auchan');
INSERT INTO public.adresse (adresse_id, numero, type_voie, nom_voie, complement_adresse, code_postal, ville) VALUES (6, 152, 'rue', 'du Président François Mitterand', NULL, 91160, 'Longjumeau');
INSERT INTO public.adresse (adresse_id, numero, type_voie, nom_voie, complement_adresse, code_postal, ville) VALUES (7, 92, 'avenue', 'des Champs-Elysées', NULL, 75000, 'Paris');
INSERT INTO public.adresse (adresse_id, numero, type_voie, nom_voie, complement_adresse, code_postal, ville) VALUES (8, 3, 'route', 'des écoles', 'A côté du dentiste', 78950, 'Gambais');
INSERT INTO public.adresse (adresse_id, numero, type_voie, nom_voie, complement_adresse, code_postal, ville) VALUES (9, NULL, 'x', 'x', NULL, 99999, 'x');


--
-- TOC entry 3126 (class 0 OID 24616)
-- Dependencies: 206
-- Data for Name: aide_memoire; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.aide_memoire (produit_a_preparer_id, ingredient_id, quantite_ingredients) VALUES (1, 3, 6);
INSERT INTO public.aide_memoire (produit_a_preparer_id, ingredient_id, quantite_ingredients) VALUES (2, 5, 3);
INSERT INTO public.aide_memoire (produit_a_preparer_id, ingredient_id, quantite_ingredients) VALUES (3, 6, 4);


--
-- TOC entry 3131 (class 0 OID 24650)
-- Dependencies: 211
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.client (client_id, nom, prenom, date_naissance, numero_telephone, adresse_mail, adresse_id) VALUES (1, 'Princesse', 'Peach', '1985-08-04', '0616520755', 'princesse.peach@royaumechampignon.com', 4);
INSERT INTO public.client (client_id, nom, prenom, date_naissance, numero_telephone, adresse_mail, adresse_id) VALUES (2, 'Garnier', 'Palmolive', '2002-03-05', '0913177483', 'palmolive.garnier2002@dove.net', 5);
INSERT INTO public.client (client_id, nom, prenom, date_naissance, numero_telephone, adresse_mail, adresse_id) VALUES (3, 'Renaud', 'Sony', '1996-01-17', '0652981703', 'sony.renaud17@outlook.fr', 3);
INSERT INTO public.client (client_id, nom, prenom, date_naissance, numero_telephone, adresse_mail, adresse_id) VALUES (4, 'Guivarch', 'Constance', '1990-12-03', '0910446813', 'guivarchconstance@gmail.com', 2);
INSERT INTO public.client (client_id, nom, prenom, date_naissance, numero_telephone, adresse_mail, adresse_id) VALUES (5, 'Letavernier', 'Marion', '1975-12-31', '0718107911', 'marion.letavernier@laposte.net', 1);
INSERT INTO public.client (client_id, nom, prenom, date_naissance, numero_telephone, adresse_mail, adresse_id) VALUES (6, 'invité', 'invité', '1970-01-01', '1234567890', 'invite@ocpizza.com', 9);


--
-- TOC entry 3136 (class 0 OID 24690)
-- Dependencies: 216
-- Data for Name: commande; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.commande (commande_id, date_heure, pizzeria_id, personnel_id, client_id, adresse_id, type_paiement_id, facture_id) VALUES (1, '2021-02-11 18:52:00', 1, 1, 2, 5, 1, 4);
INSERT INTO public.commande (commande_id, date_heure, pizzeria_id, personnel_id, client_id, adresse_id, type_paiement_id, facture_id) VALUES (2, '2021-06-16 12:15:00', 2, 2, 1, 4, 1, 3);
INSERT INTO public.commande (commande_id, date_heure, pizzeria_id, personnel_id, client_id, adresse_id, type_paiement_id, facture_id) VALUES (3, '2021-09-28 14:10:00', 3, 1, 4, 2, 1, 2);
INSERT INTO public.commande (commande_id, date_heure, pizzeria_id, personnel_id, client_id, adresse_id, type_paiement_id, facture_id) VALUES (4, '2021-01-01 22:50:00', 2, 1, 3, 3, 1, 1);


--
-- TOC entry 3132 (class 0 OID 24658)
-- Dependencies: 212
-- Data for Name: compte; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.compte (compte_id, identifiant, mot_passe, client_id) VALUES (1, 'ppeach', 'mario40885', 1);
INSERT INTO public.compte (compte_id, identifiant, mot_passe, client_id) VALUES (2, 'sonyrenaud', 'mercedesporsche', 3);
INSERT INTO public.compte (compte_id, identifiant, mot_passe, client_id) VALUES (3, 'lollipopcherry', 'chupachups', 5);
INSERT INTO public.compte (compte_id, identifiant, mot_passe, client_id) VALUES (4, 'gammedouche', 'headnshoulders', 2);
INSERT INTO public.compte (compte_id, identifiant, mot_passe, client_id) VALUES (5, 'superUdriveChbt', 'drivemagUChbt', 4);
INSERT INTO public.compte (compte_id, identifiant, mot_passe, client_id) VALUES (6, 'invité', 'invité', 6);


--
-- TOC entry 3135 (class 0 OID 24682)
-- Dependencies: 215
-- Data for Name: comptecollaborateur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.comptecollaborateur (compte_collab_id, identifiant, mot_passe, droit_acces, personnel_id) VALUES (1, 'acceuilOCPLongjumeau', 'acceuilOCPLongjumeau', 'acceuil', 1);
INSERT INTO public.comptecollaborateur (compte_collab_id, identifiant, mot_passe, droit_acces, personnel_id) VALUES (2, 'pizzaioloOCPParisCE', 'pizzaioloOCPParisCE', 'pizzaiolo', 2);
INSERT INTO public.comptecollaborateur (compte_collab_id, identifiant, mot_passe, droit_acces, personnel_id) VALUES (3, 'livraisonOCPGambaisEcoles', 'livraisonOCPGambaisEcoles', 'livraison', 3);


--
-- TOC entry 3138 (class 0 OID 24813)
-- Dependencies: 218
-- Data for Name: etatstatutcommande; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.etatstatutcommande (statut_commande_id, commande_id, date_heure) VALUES (3, 3, '2021-09-28 15:10:00');
INSERT INTO public.etatstatutcommande (statut_commande_id, commande_id, date_heure) VALUES (5, 4, '2021-01-01 23:30:00');
INSERT INTO public.etatstatutcommande (statut_commande_id, commande_id, date_heure) VALUES (8, 2, '2021-06-16 13:00:00');
INSERT INTO public.etatstatutcommande (statut_commande_id, commande_id, date_heure) VALUES (4, 1, '2021-02-11 19:45:00');


--
-- TOC entry 3127 (class 0 OID 24621)
-- Dependencies: 207
-- Data for Name: facture; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.facture (facture_id, prix, date) VALUES (1, 33.6, '2021-01-01');
INSERT INTO public.facture (facture_id, prix, date) VALUES (2, 13.2, '2021-09-28');
INSERT INTO public.facture (facture_id, prix, date) VALUES (3, 28, '2021-06-16');
INSERT INTO public.facture (facture_id, prix, date) VALUES (4, 21, '2021-02-11');


--
-- TOC entry 3120 (class 0 OID 24577)
-- Dependencies: 200
-- Data for Name: ingredient; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ingredient (ingredient_id, nom, prix_unitaire) VALUES (1, 'origan', 0.1);
INSERT INTO public.ingredient (ingredient_id, nom, prix_unitaire) VALUES (2, 'crème fraîche', 0.28);
INSERT INTO public.ingredient (ingredient_id, nom, prix_unitaire) VALUES (3, 'mozzarella', 0.15);
INSERT INTO public.ingredient (ingredient_id, nom, prix_unitaire) VALUES (4, 'tomate', 0.15);
INSERT INTO public.ingredient (ingredient_id, nom, prix_unitaire) VALUES (5, 'saumon fumé', 1.5);
INSERT INTO public.ingredient (ingredient_id, nom, prix_unitaire) VALUES (6, 'viande hachée', 0.95);


--
-- TOC entry 3137 (class 0 OID 24698)
-- Dependencies: 217
-- Data for Name: lignecommande; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.lignecommande (produit_id, commande_id, quantite, prix) VALUES (2, 2, 1, 1.2);
INSERT INTO public.lignecommande (produit_id, commande_id, quantite, prix) VALUES (5, 2, 1, 12);
INSERT INTO public.lignecommande (produit_id, commande_id, quantite, prix) VALUES (1, 1, 3, 3.6);
INSERT INTO public.lignecommande (produit_id, commande_id, quantite, prix) VALUES (7, 1, 3, 30);
INSERT INTO public.lignecommande (produit_id, commande_id, quantite, prix) VALUES (6, 3, 2, 24);
INSERT INTO public.lignecommande (produit_id, commande_id, quantite, prix) VALUES (8, 3, 2, 4);
INSERT INTO public.lignecommande (produit_id, commande_id, quantite, prix) VALUES (5, 4, 1, 6);
INSERT INTO public.lignecommande (produit_id, commande_id, quantite, prix) VALUES (6, 4, 1, 12);
INSERT INTO public.lignecommande (produit_id, commande_id, quantite, prix) VALUES (9, 4, 2, 3);


--
-- TOC entry 3134 (class 0 OID 24674)
-- Dependencies: 214
-- Data for Name: personnel; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.personnel (personnel_id, fonction, pizzeria_id) VALUES (1, 'Accueil', 1);
INSERT INTO public.personnel (personnel_id, fonction, pizzeria_id) VALUES (2, 'Pizzaiolo', 2);
INSERT INTO public.personnel (personnel_id, fonction, pizzeria_id) VALUES (3, 'Livreur', 3);


--
-- TOC entry 3133 (class 0 OID 24666)
-- Dependencies: 213
-- Data for Name: pizzeria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pizzeria (pizzeria_id, nom, adresse_id) VALUES (1, 'OC Pizza Longjumeau', 6);
INSERT INTO public.pizzeria (pizzeria_id, nom, adresse_id) VALUES (2, 'OC Pizza Paris Champs-Elysées', 7);
INSERT INTO public.pizzeria (pizzeria_id, nom, adresse_id) VALUES (3, 'OC Pizza Gambais Ecoles', 8);


--
-- TOC entry 3123 (class 0 OID 24595)
-- Dependencies: 203
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.produit (produit_id, nom, prix_unitaire, description) VALUES (1, 'Coca-cola', 1.2, 'Canette 33cl');
INSERT INTO public.produit (produit_id, nom, prix_unitaire, description) VALUES (2, 'Sprite', 1.2, 'Canette 33cl');
INSERT INTO public.produit (produit_id, nom, prix_unitaire, description) VALUES (3, 'Ketchup', 0.1, 'Dosette individuelle de ketchup');
INSERT INTO public.produit (produit_id, nom, prix_unitaire, description) VALUES (4, 'Mayonnaise', 0.1, 'Dosette individuelle de mayonnaise');
INSERT INTO public.produit (produit_id, nom, prix_unitaire, description) VALUES (5, 'Pizza base tomate', 2.5, 'Pizza base sauce tomate');
INSERT INTO public.produit (produit_id, nom, prix_unitaire, description) VALUES (6, 'Pizza base crème fraîche', 2.5, 'Pizza base crème fraîche');
INSERT INTO public.produit (produit_id, nom, prix_unitaire, description) VALUES (7, 'Pizza sauce barbecue', 2.5, 'Pizza base sauce barbecue');
INSERT INTO public.produit (produit_id, nom, prix_unitaire, description) VALUES (8, 'Tiramisu', 2, 'Tiramisu');
INSERT INTO public.produit (produit_id, nom, prix_unitaire, description) VALUES (9, 'Tarte aux pommes', 1.5, 'Tarte aux pommes');


--
-- TOC entry 3125 (class 0 OID 24608)
-- Dependencies: 205
-- Data for Name: produitapreparer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.produitapreparer (produit_a_preparer_id, nom, prix_unitaire, description, produit_id) VALUES (1, 'Pizza Margherita', 6, 'Pizza tomate/mozzarella/origan', 5);
INSERT INTO public.produitapreparer (produit_a_preparer_id, nom, prix_unitaire, description, produit_id) VALUES (2, 'Pizza Marina', 12, 'Pizza crème fraîche/saumon fumé/mozzarella/origan', 6);
INSERT INTO public.produitapreparer (produit_a_preparer_id, nom, prix_unitaire, description, produit_id) VALUES (3, 'Pizza Bolognaise', 10, 'Pizza barbecue/viande hachée/mozzarella/origan', 7);


--
-- TOC entry 3129 (class 0 OID 24634)
-- Dependencies: 209
-- Data for Name: statutcommande; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.statutcommande (statut_commande_id, nom) VALUES (1, 'En cours de commande');
INSERT INTO public.statutcommande (statut_commande_id, nom) VALUES (2, 'Commande créée');
INSERT INTO public.statutcommande (statut_commande_id, nom) VALUES (3, 'Attente préparation');
INSERT INTO public.statutcommande (statut_commande_id, nom) VALUES (4, 'En préparation');
INSERT INTO public.statutcommande (statut_commande_id, nom) VALUES (5, 'Commande prête');
INSERT INTO public.statutcommande (statut_commande_id, nom) VALUES (6, 'Attente livraison');
INSERT INTO public.statutcommande (statut_commande_id, nom) VALUES (7, 'En cours de livraison');
INSERT INTO public.statutcommande (statut_commande_id, nom) VALUES (8, 'Commande livrée');


--
-- TOC entry 3121 (class 0 OID 24585)
-- Dependencies: 201
-- Data for Name: stock; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stock (stock_id, quantite_theorique, quantite_reelle, seuil_minimum) VALUES (1, 2500, 2500, 500);
INSERT INTO public.stock (stock_id, quantite_theorique, quantite_reelle, seuil_minimum) VALUES (2, 5700, 5000, 500);
INSERT INTO public.stock (stock_id, quantite_theorique, quantite_reelle, seuil_minimum) VALUES (3, 5200, 4500, 450);
INSERT INTO public.stock (stock_id, quantite_theorique, quantite_reelle, seuil_minimum) VALUES (4, 2300, 2000, 200);
INSERT INTO public.stock (stock_id, quantite_theorique, quantite_reelle, seuil_minimum) VALUES (5, 500, 485, 70);
INSERT INTO public.stock (stock_id, quantite_theorique, quantite_reelle, seuil_minimum) VALUES (6, 500, 426, 70);


--
-- TOC entry 3122 (class 0 OID 24590)
-- Dependencies: 202
-- Data for Name: stockingredients; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stockingredients (ingredient_id, stock_id, quantite) VALUES (1, 4, 2000);
INSERT INTO public.stockingredients (ingredient_id, stock_id, quantite) VALUES (2, 2, 5000);
INSERT INTO public.stockingredients (ingredient_id, stock_id, quantite) VALUES (3, 2, 5000);
INSERT INTO public.stockingredients (ingredient_id, stock_id, quantite) VALUES (4, 2, 5000);
INSERT INTO public.stockingredients (ingredient_id, stock_id, quantite) VALUES (5, 3, 4500);
INSERT INTO public.stockingredients (ingredient_id, stock_id, quantite) VALUES (6, 1, 2500);


--
-- TOC entry 3124 (class 0 OID 24603)
-- Dependencies: 204
-- Data for Name: stockproduit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stockproduit (produit_id, stock_id, quantite) VALUES (1, 5, 485);
INSERT INTO public.stockproduit (produit_id, stock_id, quantite) VALUES (2, 6, 426);
INSERT INTO public.stockproduit (produit_id, stock_id, quantite) VALUES (3, 5, 485);
INSERT INTO public.stockproduit (produit_id, stock_id, quantite) VALUES (4, 6, 426);
INSERT INTO public.stockproduit (produit_id, stock_id, quantite) VALUES (5, 2, 5000);
INSERT INTO public.stockproduit (produit_id, stock_id, quantite) VALUES (6, 3, 4500);
INSERT INTO public.stockproduit (produit_id, stock_id, quantite) VALUES (7, 4, 2000);
INSERT INTO public.stockproduit (produit_id, stock_id, quantite) VALUES (8, 5, 485);
INSERT INTO public.stockproduit (produit_id, stock_id, quantite) VALUES (9, 6, 426);


--
-- TOC entry 3128 (class 0 OID 24626)
-- Dependencies: 208
-- Data for Name: typepaiement; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.typepaiement (type_paiement_id, nom) VALUES (1, 'Paiement en ligne');
INSERT INTO public.typepaiement (type_paiement_id, nom) VALUES (2, 'Paiement à la livraison');
INSERT INTO public.typepaiement (type_paiement_id, nom) VALUES (3, 'Paiement sur place');


-- Completed on 2021-02-15 09:16:59

--
-- PostgreSQL database dump complete
--

