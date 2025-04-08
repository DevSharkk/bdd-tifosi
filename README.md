# Base de données Le Tifosi

Ce projet contient la base de données pour le restaurant Le Tifosi, spécialisé dans la street-food italienne.

## Installation de MySQL

### Sous Windows
1. Téléchargez et installez MySQL : https://dev.mysql.com/downloads/installer/
   - Ou installez XAMPP : https://www.apachefriends.org/fr/index.html
2. Pendant l'installation, notez bien le mot de passe root que vous définissez

## Configuration de la base de données

1. Ouvrez un terminal (PowerShell ou CMD)

2. Connectez-vous à MySQL en tant que root :
   ```bash
   mysql -u root -p
   ```
   Entrez votre mot de passe root quand demandé

3. Exécutez les scripts dans l'ordre :

   a. Création de la base et de l'utilisateur :
   ```sql
   source schema/01_create_database.sql
   ```

   b. Création des tables :
   ```sql
   source schema/02_create_tables.sql
   ```

   c. Insertion des données :
   ```sql
   source schema/03_insert_data.sql
   ```

   d. Test des requêtes :
   ```sql
   source queries/04_test_queries.sql
   ```

## Vérification de l'installation

Pour vérifier que tout fonctionne, connectez-vous avec l'utilisateur tifosi :
```bash
mysql -u tifosi -p
```
Mot de passe : tifosi123

Puis tapez ces commandes :
```sql
USE tifosi;
SHOW TABLES;
SELECT * FROM focaccia;
```

## En cas de problème

Si vous rencontrez des erreurs :
1. Vérifiez que MySQL est bien installé et en cours d'exécution
2. Vérifiez que vous êtes dans le bon répertoire (où se trouvent les dossiers schema/, data/, queries/)
3. Si une table existe déjà, vous pouvez réinitialiser la base avec :
   ```sql
   DROP DATABASE IF EXISTS tifosi;
   ```
   Puis recommencez l'installation depuis le début 