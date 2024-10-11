# Thermomètre Intelligent à Microprocesseur

## Description
Ce projet vise à concevoir et implémenter un **thermomètre intelligent** basé sur un **microprocesseur 8086**, capable de surveiller en temps réel la température des équipements industriels et d'agir en conséquence. Il permet de déclencher des alertes et d'activer des mécanismes de refroidissement lorsque la température dépasse certains seuils prédéfinis.

## Objectifs
Le thermomètre intelligent offre les fonctionnalités suivantes :
- **Surveillance en temps réel** des températures.
- **Déclenchement d'alarmes** lorsque certaines températures critiques sont atteintes.
- **Activation automatique** d'un ventilateur pour refroidir les équipements lorsqu'un seuil critique est dépassé.

### Fonctionnement
Le thermomètre intelligent surveille les températures avec cinq seuils prédéfinis : **60°C, 40°C, 30°C, 20°C et 0°C**. À chaque seuil, des actions spécifiques sont déclenchées :
- **À 60°C** : Une LED rouge s'allume, un haut-parleur émet un son d'alerte, et un ventilateur se met en marche pour refroidir l'équipement.
- **À 40°C** : La LED orange s'allume et le ventilateur continue de fonctionner à une vitesse réduite.
- **À 30°C et 20°C** : La LED verte s'allume pour indiquer un fonctionnement normal.
- **À 0°C** : Aucune action n'est effectuée car le système n'est pas en fonctionnement.

### Composants Utilisés
- **Microprocesseur 8086** : Gère les calculs et le traitement des données de température.
- **Interface de sortie parallèle 8255** : Interconnexion entre le microprocesseur et les composants externes.
- **LEDs** : Indiquent les différents états de température.
- **Afficheur 7 segments** : Affiche la température en temps réel.
- **Haut-parleur** : Sert à émettre des alertes en cas de température critique.
- **Ventilateur DC** : Refroidit les équipements lorsque la température dépasse un certain seuil.

### Simulation
Le câblage et la simulation du système ont été réalisés à l'aide des logiciels suivants :
- **Proteus** : Utilisé pour le schéma de câblage du système.
- **Emu8086** : Utilisé pour la programmation en assembleur du microprocesseur 8086 et la simulation du code.

### Schéma de Câblage
Le projet utilise un schéma de câblage détaillé réalisé dans **Proteus**, permettant de connecter le microprocesseur, les LED, l'afficheur 7 segments, le ventilateur et le haut-parleur pour réaliser la gestion des températures en fonction des seuils configurés.

## Conclusion
Ce projet a permis de concevoir un thermomètre intelligent fiable, capable de surveiller des températures critiques et de prendre des mesures préventives dans des environnements industriels. Le système combine à la fois des aspects matériels et logiciels, et utilise des techniques de programmation bas niveau pour gérer les périphériques du microprocesseur.

## Auteurs
- **Hadria Nada**
- **Sadik Omar**

## Encadré par
Pr. Yaden Faiçal

## Année Universitaire
2023/2024
