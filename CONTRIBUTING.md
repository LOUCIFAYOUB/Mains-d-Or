# Guide de contribution

## Règles de base

- Personne ne travaille directement sur `main`.
- Une branche par tâche, créée à partir de `develop`.
- Toujours faire `git pull` avant de commencer à travailler.
- Aucune clé secrète dans le dépôt.

## Branches

| Branche | Rôle |
|---|---|
| `main` | Version stable |
| `develop` | Intégration du travail de l'équipe |
| `feature/<nom>` | Une fonctionnalité (ex. `feature/auth-ui`, `feature/rls-policies`, `feature/schema-tables`) |

## Cycle de travail

```bash
git checkout develop
git pull
git checkout -b feature/ma-tache
# ... travailler ...
git add .
git commit -m "Ajout de la page de connexion"
git push -u origin feature/ma-tache
```

Puis ouvrir une Pull Request vers `develop`. Une autre personne relit et fusionne.

## Messages de commit

Phrase courte qui décrit le changement : « Ajout de la table orders », « Correction du total du panier ».

## Conventions de code (Flutter)

- Un dossier par fonctionnalité dans `app/lib/features/` avec `data`, `domain`, `presentation`.
- Un Bloc par fonctionnalité (events, states).
- Les Blocs n'appellent jamais Supabase directement : tout passe par un repository.
