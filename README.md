# Mains-d'Or

Application mobile de marketplace d'artisans : chaque artisan crée sa boutique et vend ses créations, chaque acheteur découvre, commande et suit ses achats. Projet de licence en informatique.

> *Mains-d'Or : le savoir-faire des artisans, à portée de main.*

## Fonctionnalités

**Acheteur**
- Inscription et connexion
- Parcours des boutiques et du catalogue, recherche, filtres
- Fiche produit, panier, passage de commande
- Suivi des commandes : en attente, confirmée, expédiée, livrée

**Artisan**
- Création et gestion de sa boutique
- Gestion des produits (images, prix, stock)
- Réception des commandes et mise à jour de leur statut

## Technologies

| Besoin | Outil |
|---|---|
| Application mobile | Flutter (Dart) |
| Gestion d'état | flutter_bloc |
| Navigation | go_router |
| Backend et base de données | Supabase (PostgreSQL, Auth, Storage) |
| Injection de dépendances | get_it |

## Équipe

| Membre | Rôle | Dossier principal |
|---|---|---|
| [Ton nom] | Front-end (application Flutter) | `app/` |
| Nassima | Backend (authentification, règles RLS, fonctions SQL, repositories) | `supabase/` et `app/lib/**/data/` |
| Sirine | Base de données (tables, relations, données de test) | `supabase/migrations/` |

## Structure du dépôt

```
mains-d-or/
├── README.md
├── CONTRIBUTING.md
├── docs/
│   ├── diagrammes/     # diagrammes de séquence (Mermaid)
│   └── maquettes/      # exports Figma
├── supabase/
│   ├── migrations/     # scripts SQL (tables, RLS)
│   └── seed.sql        # données de test
└── app/                # projet Flutter
```

## Maquette

Maquette interactive : [à compléter : lien Figma]

Les exports d'écrans sont dans `docs/maquettes/`.

## Installation

Prérequis : Flutter SDK, Android Studio ou un téléphone Android, un projet Supabase.

```bash
git clone https://github.com/<pseudo>/mains-d-or.git
cd mains-d-or

# Première fois seulement : créer le projet Flutter dans app/
flutter create --org com.mainsdor --project-name mains_dor app

cd app
flutter pub get
flutter run
```

Configuration Supabase : créer un fichier `app/.env` (jamais envoyé sur GitHub) contenant :

```
SUPABASE_URL=...
SUPABASE_ANON_KEY=...
```

Ne jamais mettre la clé `service_role` dans le dépôt ni dans l'application.

## Avancement

| Jalon | Contenu | État |
|---|---|---|
| J3 Conception | Cahier des charges, diagrammes, maquettes, dépôt | En cours |
| J4 Prototype | Navigation complète, au moins 50 % des fonctionnalités | À faire |
| J5 Version bêta | Toutes les fonctionnalités, persistance, premiers tests | À faire |
| J6 Dépôt final | Code, APK, rapport, vidéo | À faire |
