# README

<!-- Exemple d’utilisation
Une interaction entre curl et le service de validation pourrait avoir l’air de ceci:

Listing 1: Exemple d’interaction avec le service de validation de ISBN.

# curl -i http://service/9782895406976/validate
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{"message":"Le ISBN 9782895406976 est valide."} -->

To validate your ISBN number type
curl -i http://service/your-number-here/validate
in your terminal with the server running.

VALID ISBN CODE:

les trois premiers chiffres du code GTIN-13 indiquent le pays du producteur ou du distributeur de l'article.
Les codes 978 et 979 n'étant pas attribués, on les a affectés au livre. Les codes 978 et 979 désignent donc "Bookland" – le Pays du Livre. Le code 978 est le premier utilisé et le code 979 sera employé au fur et à mesure des besoins.

pour être compatible avec tous les systèmes GTIN-13 installés, la clé de vérification de l'ISBN-13 (dernier chiffre du code) est calculée selon la même méthode que pour le code GTIN-13.

Pour obtenir le treizième chiffre de ces codes, il faut appliquer un schéma un peu différent. Prenez le premier chiffre, ajoutez trois fois le deuxième, puis une fois le troisième, puis trois fois le quatrième, et ainsi de suite jusqu’au douzième : si le terme est à une position impaire, on ajoute une fois ce chiffre, et si c’est une position paire, on l’ajoute trois fois. Voici l’opération à faire pour le code ci-dessus.

9 + 7 x 3 + 9 + 3 x 3 + 4 + 5 x 3 + 6 + 7 x 3 + 8 + 9 x 3 + 0 + 1 x 3 = 132

La clé de contrôle sera le chiffre à ajouter pour obtenir un multiple de 10, soit 8 ici. Il suffit en effet de prendre le dernier chiffre de cette somme et de le soustraire à 10.
