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
