#DOCKER ARCHITECTURE
**Docker daemon** 
>> - C'est un processus qui s'exécute en arrière plan sur une machine hoteet responsable de la gestion et execution des containeurs docker
**La socket de linux**
>> - C'est un fichier spécial situé dans le système de fichiers de linux qui est un point de communication entre deux processus

**La socker sur docker**
>> - C'est un fichier que l'on trouve dans /var/run/docker.socket qui est crée par le daemon de docker quand il démarre permet a l'utiisateur de communiquer avec le daemon de docker sans utiliser le CLI.
**Types de socker sous docker**
>> - UNIX
>>- tcp
>>- udp
**Création d'une socket de type tcp**
>>-on utilise le net cat
>>- ``nc localhost 2300``
>>- **pour le serveur il écoute a ce port avec** ``nc -l 2300``
>>- On fais un curl pour créer un socket 
>>- ``curl -GET --unix-socket var/run/docker.sock http:2375/images/json``
