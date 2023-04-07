#DOCKER ARCHITECTURE
>>- L'architecture de docker esr une architecture client/serveur.
>>- Le client est le CLI et communique avec le daemon.
>>- Le CLI fait des appels d'API rest *(CRUD)* au daemon de docker
##Docker daemon 
>>- C'est un processus qui s'exécute en arrière plan sur une machine hote et responsable de la gestion et execution des containeurs docker. Le daemon de docker lançe automatiquement au demarrage du système mais peut etre lançe manuellement avec la commande ``dockerd`. 
>>- Cette commande permet de lançer le daemon en mode interractifce qui est utilse pour deboguer et tester des configurations.

**La socket de linux**
>> - C'est un fichier spécial situé dans le système de fichiers de linux qui est un *Endpoint* de communication entre deux processus dans un réseau. Elle écoute sur un port et capte tous les traitement effectués et les transfert ou elles seront exploitées.

**La socket sur docker**
>>- C'est un fichier que l'on trouve dans /var/run/docker.socket.Crée automatiquement de docker sur un OS UNIX(Linux, MacOS).Permet a l'utiisateur de communiquer avec le daemon de docker via le CLI.
##Les sockets##
###Types de sockets en general
1. TCP
2. UDP Ou Sicket de datagramme
3. UNIX
4. Socket brute
5. Socket de controle
**Types de socket sous docker**
>> - UNIX
>>- tcp
>>- udp
**Création d'une socket de type tcp**
>>-on utilise le net cat
>>- ``nc localhost 2300``
>>- **pour le serveur il écoute a ce port avec** ``nc -l 2300``
>>- On fais un curl pour créer un socket 
>>- ``curl -GET --unix-socket var/run/docker.sock http:2375/images/json``

