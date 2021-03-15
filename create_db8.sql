
CREATE TABLE public.Ingredient (
                ingredient_id INTEGER NOT NULL,
                nom VARCHAR NOT NULL,
                prix_unitaire REAL NOT NULL,
                CONSTRAINT ingredient_id_pk PRIMARY KEY (ingredient_id)
);


CREATE TABLE public.Stock (
                stock_id INTEGER NOT NULL,
                quantite_theorique REAL NOT NULL,
                quantite_reelle REAL NOT NULL,
                seuil_minimum REAL NOT NULL,
                CONSTRAINT stock_id_pk PRIMARY KEY (stock_id)
);


CREATE TABLE public.StockIngredients (
                ingredient_id INTEGER NOT NULL,
                stock_id INTEGER NOT NULL,
                quantite REAL NOT NULL,
                CONSTRAINT stockingredients_pk PRIMARY KEY (ingredient_id, stock_id)
);


CREATE TABLE public.Produit (
                produit_id INTEGER NOT NULL,
                nom VARCHAR NOT NULL,
                prix_unitaire REAL NOT NULL,
                description VARCHAR NOT NULL,
                CONSTRAINT produit_id_pk PRIMARY KEY (produit_id)
);


CREATE TABLE public.StockProduit (
                produit_id INTEGER NOT NULL,
                stock_id INTEGER NOT NULL,
                quantite REAL NOT NULL,
                CONSTRAINT stockproduit_pk PRIMARY KEY (produit_id, stock_id)
);


CREATE TABLE public.ProduitAPreparer (
                produit_a_preparer_id INTEGER NOT NULL,
                nom VARCHAR NOT NULL,
                prix_unitaire REAL NOT NULL,
                description VARCHAR NOT NULL,
                produit_id INTEGER NOT NULL,
                CONSTRAINT produitapreparer_pk PRIMARY KEY (produit_a_preparer_id)
);


CREATE TABLE public.Aide_memoire (
                produit_a_preparer_id INTEGER NOT NULL,
                ingredient_id INTEGER NOT NULL,
                quantite_ingredients REAL NOT NULL,
                CONSTRAINT aide_memoire_pk PRIMARY KEY (produit_a_preparer_id, ingredient_id)
);


CREATE TABLE public.Facture (
                facture_id INTEGER NOT NULL,
                prix REAL NOT NULL,
                date DATE NOT NULL,
                CONSTRAINT facture_id_pk PRIMARY KEY (facture_id)
);


CREATE TABLE public.TypePaiement (
                type_paiement_id INTEGER NOT NULL,
                nom VARCHAR NOT NULL,
                CONSTRAINT type_paiement_id_pk PRIMARY KEY (type_paiement_id)
);


CREATE TABLE public.StatutCommande (
                statut_commande_id INTEGER NOT NULL,
                nom VARCHAR NOT NULL,
                CONSTRAINT statut_commande_id_pk PRIMARY KEY (statut_commande_id)
);


CREATE TABLE public.Adresse (
                adresse_id INTEGER NOT NULL,
                numero INTEGER,
                type_voie VARCHAR NOT NULL,
                nom_voie VARCHAR NOT NULL,
                complement_adresse VARCHAR,
                code_postal INTEGER NOT NULL,
                ville VARCHAR NOT NULL,
                CONSTRAINT adresse_id_pk PRIMARY KEY (adresse_id)
);


CREATE TABLE public.Client (
                client_id INTEGER NOT NULL,
                nom VARCHAR NOT NULL,
                prenom VARCHAR NOT NULL,
                date_naissance DATE NOT NULL,
                numero_telephone VARCHAR NOT NULL,
                adresse_mail VARCHAR NOT NULL,
                adresse_id INTEGER NOT NULL,
                CONSTRAINT client_id_pk PRIMARY KEY (client_id)
);


CREATE TABLE public.Compte (
                compte_id INTEGER NOT NULL,
                identifiant VARCHAR NOT NULL,
                mot_passe VARCHAR NOT NULL,
                client_id INTEGER NOT NULL,
                CONSTRAINT compte_id_pk PRIMARY KEY (compte_id)
);


CREATE TABLE public.Pizzeria (
                pizzeria_id INTEGER NOT NULL,
                nom VARCHAR NOT NULL,
                adresse_id INTEGER NOT NULL,
                CONSTRAINT pizzeria_id_pk PRIMARY KEY (pizzeria_id)
);


CREATE TABLE public.Personnel (
                personnel_id INTEGER NOT NULL,
                fonction VARCHAR NOT NULL,
                pizzeria_id INTEGER NOT NULL,
                CONSTRAINT personnel_id_pk PRIMARY KEY (personnel_id)
);


CREATE TABLE public.CompteCollaborateur (
                compte_collab_id INTEGER NOT NULL,
                identifiant VARCHAR NOT NULL,
                mot_passe VARCHAR NOT NULL,
                droit_acces VARCHAR NOT NULL,
                personnel_id INTEGER NOT NULL,
                CONSTRAINT compte_collab_id PRIMARY KEY (compte_collab_id)
);


CREATE TABLE public.Commande (
                commande_id INTEGER NOT NULL,
                date_heure DATE NOT NULL,
                pizzeria_id INTEGER NOT NULL,
                personnel_id INTEGER NOT NULL,
                client_id INTEGER NOT NULL,
                adresse_id INTEGER NOT NULL,
                type_paiement_id INTEGER NOT NULL,
                facture_id INTEGER NOT NULL,
                CONSTRAINT commande_id_pk PRIMARY KEY (commande_id)
);


CREATE TABLE public.EtatStatutCommande (
                statut_commande_id INTEGER NOT NULL,
                commande_id INTEGER NOT NULL,
                date_heure DATE NOT NULL,
                CONSTRAINT etatstatutcommande_pk PRIMARY KEY (statut_commande_id, commande_id)
);


CREATE TABLE public.LigneCommande (
                produit_id INTEGER NOT NULL,
                commande_id INTEGER NOT NULL,
                quantite INTEGER NOT NULL,
                prix REAL NOT NULL,
                CONSTRAINT ligne_commande_id_pk PRIMARY KEY (produit_id, commande_id)
);


ALTER TABLE public.Aide_memoire ADD CONSTRAINT ingr_dient_aide_m_moire_fk
FOREIGN KEY (ingredient_id)
REFERENCES public.Ingredient (ingredient_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.StockIngredients ADD CONSTRAINT ingredient_stockingredients_fk
FOREIGN KEY (ingredient_id)
REFERENCES public.Ingredient (ingredient_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.StockIngredients ADD CONSTRAINT stock_stockingredients_fk
FOREIGN KEY (stock_id)
REFERENCES public.Stock (stock_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.StockProduit ADD CONSTRAINT stock_stockproduit_fk
FOREIGN KEY (stock_id)
REFERENCES public.Stock (stock_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ProduitAPreparer ADD CONSTRAINT produit_produitapreparer_fk
FOREIGN KEY (produit_id)
REFERENCES public.Produit (produit_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.LigneCommande ADD CONSTRAINT produit_lignecommande_fk
FOREIGN KEY (produit_id)
REFERENCES public.Produit (produit_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.StockProduit ADD CONSTRAINT produit_stockproduit_fk
FOREIGN KEY (produit_id)
REFERENCES public.Produit (produit_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Aide_memoire ADD CONSTRAINT produitapreparer_aide_m_moire_fk
FOREIGN KEY (produit_a_preparer_id)
REFERENCES public.ProduitAPreparer (produit_a_preparer_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT facture_commande_fk
FOREIGN KEY (facture_id)
REFERENCES public.Facture (facture_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT typepaiement_commande_fk
FOREIGN KEY (type_paiement_id)
REFERENCES public.TypePaiement (type_paiement_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.EtatStatutCommande ADD CONSTRAINT statutcommande_etatstatutcommande_fk
FOREIGN KEY (statut_commande_id)
REFERENCES public.StatutCommande (statut_commande_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Pizzeria ADD CONSTRAINT adresse_pizzeria_fk
FOREIGN KEY (adresse_id)
REFERENCES public.Adresse (adresse_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT adresse_commande_fk
FOREIGN KEY (adresse_id)
REFERENCES public.Adresse (adresse_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Client ADD CONSTRAINT adresse_client_fk
FOREIGN KEY (adresse_id)
REFERENCES public.Adresse (adresse_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT client_commande_fk
FOREIGN KEY (client_id)
REFERENCES public.Client (client_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Compte ADD CONSTRAINT client_compte_fk
FOREIGN KEY (client_id)
REFERENCES public.Client (client_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT pizzeria_commande_fk
FOREIGN KEY (pizzeria_id)
REFERENCES public.Pizzeria (pizzeria_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Personnel ADD CONSTRAINT pizzeria_personnel_fk
FOREIGN KEY (pizzeria_id)
REFERENCES public.Pizzeria (pizzeria_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT personnel_commande_fk
FOREIGN KEY (personnel_id)
REFERENCES public.Personnel (personnel_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.CompteCollaborateur ADD CONSTRAINT personnel_comptecollaborateur_fk
FOREIGN KEY (personnel_id)
REFERENCES public.Personnel (personnel_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.LigneCommande ADD CONSTRAINT commande_lignecommande_fk
FOREIGN KEY (commande_id)
REFERENCES public.Commande (commande_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.EtatStatutCommande ADD CONSTRAINT commande_etatstatutcommande_fk
FOREIGN KEY (commande_id)
REFERENCES public.Commande (commande_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
