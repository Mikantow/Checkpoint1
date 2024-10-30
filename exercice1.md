# Gestion du stockage 

### Étape 1

- Création de la partition de 6 Go de type ext4 nommée "DATA"  


![img_etape1a](https://github.com/Mikantow/Checkpoint1/blob/main/Exercice%201/Capture%20d%E2%80%99%C3%A9cran%20du%202024-10-25%2009-49-05.png?raw=true)

- Création de la partition avec le reste du disque (4 Go) de type swap nommée "SWAP"

![img_etape1b](https://github.com/Mikantow/Checkpoint1/blob/main/Exercice%201/Capture%20d%E2%80%99%C3%A9cran%20du%202024-10-25%2009-49-17.png?raw=true)

### Étape 2

- Vérification des disques avec la commande `lsblk`

![img_etape2](https://github.com/Mikantow/Checkpoint1/blob/main/Exercice%201/Capture%20d%E2%80%99%C3%A9cran%20du%202024-10-25%2009-51-38.png?raw=true)

### Étape 3
Gestion de la partition swap avec les commandes `swapoff` et `swapon` et montage du premier disque DATA  

![img_etape3](https://github.com/Mikantow/Checkpoint1/blob/main/Exercice%201/Capture%20d%E2%80%99%C3%A9cran%20du%202024-10-25%2009-55-26.png?raw=true)

### Étape 4

- Vérification du montage de disque avec la commande `df -h`

![img_etape4](https://github.com/Mikantow/Checkpoint1/blob/main/Exercice%201/Capture%20d%E2%80%99%C3%A9cran%20du%202024-10-25%2009-56-27.png?raw=true)

### Étape 5
- Modification du fichier `/etc/fstab` pour montée automatiquement le disque DATA au démarrage du système dans un dossier data placé dans /mnt.

![img_etape5](https://github.com/Mikantow/Checkpoint1/blob/main/Exercice%201/Capture%20d%E2%80%99%C3%A9cran%20du%202024-10-25%2009-59-44.png?raw=true)

### Étape 6

- Vérification du montage automatique lors du redémarrage du système avec les commandes `df`et `lsblk`

![img_etape6](https://github.com/Mikantow/Checkpoint1/blob/main/Exercice%201/Capture%20d%E2%80%99%C3%A9cran%20du%202024-10-25%2010-02-09.png?raw=true)
