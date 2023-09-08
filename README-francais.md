# TP5-logging

1- Description des fichiers fournis :

    - elasticsearch-deployment.yaml: Fichier de déploiement pour Elasticsearch.
    - elasticsearch-service.yaml: Fichier de service pour Elasticsearch.
    - logstash-deployment.yaml: Fichier de déploiement pour Logstash.
    - logstash-configmap.yaml: Fichier de configuration pour Logstash.
    - filebeat-deployment.yaml: Fichier de déploiement pour Filebeat.
    - filebeat-configmap.yaml: Fichier de configuration pour Filebeat.
    - nginx-logstash-pipeline.conf: Fichier de pipeline Logstash pour l'application Nginx.

2- Description des pré-requis :

    - Assurez-vous d'avoir un cluster Kubernetes opérationnel et prêt à recevoir de nouveaux déploiements.
    - Assurez-vous d'avoir les droits et les autorisations nécessaires pour déployer des ressources dans le cluster.

3- Schéma de présentation de l'infrastructure mise en place :
[Insérez un schéma illustrant l'architecture de la solution avec Elasticsearch, Logstash, Filebeat et l'application Nginx.]

4- Comment déployer la solution de centralisation des logs :

    a- Appliquez les fichiers de déploiement pour Elasticsearch, Logstash et Filebeat en utilisant la commande kubectl apply -f <fichier.yaml> pour chaque fichier.
    b- Appliquez les fichiers de configuration pour Logstash et Filebeat en utilisant la commande kubectl apply -f <fichier.yaml> pour chaque fichier.
    c- Vérifiez que les déploiements sont correctement démarrés en utilisant kubectl get pods.

5- Comment déployer l'application Nginx :

    a- Appliquez le fichier de déploiement pour l'application Nginx en utilisant la commande kubectl apply -f <fichier.yaml>.
    b- Vérifiez que le déploiement est correctement démarré en utilisant kubectl get pods.

6- Comment ajouter de nouvelles applications à la centralisation des logs :

Pour ajouter de nouvelles applications à la centralisation des logs, suivez ces étapes :

    a- Créez un nouveau fichier de pipeline Logstash pour l'application souhaitée, similaire à nginx-logstash-pipeline.conf.
    b- Modifiez le fichier filebeat-configmap.yaml pour inclure les nouveaux chemins de logs de l'application.
    c- Appliquez les modifications en utilisant kubectl apply -f <fichier.yaml> pour chaque fichier.

7- Présentation et justification de la stratégie de stockage et de rotation des logs :

Nous avons choisi une stratégie de stockage et de rotation des logs basée sur les critères opérationnels suivants :

    - Les logs des applications seront conservés pendant 30 jours.
    - Les logs des conteneurs seront conservés pendant 7 jours.

Cette stratégie permet de conserver suffisamment de logs pour une analyse rétrospective sans engendrer une surcharge de stockage inutile.

N'hésitez pas à personnaliser les noms de fichiers et les configurations en fonction des besoins spécifiques de votre environnement. Veillez également à remplacer <fichier.yaml> par les noms de fichiers réels pour les commandes de déploiement dans la documentation.

J'espère que cela vous aide à démarrer votre projet de centralisation des logs avec Elastic Stack sur Kubernetes ! Si vous avez des questions supplémentaires ou besoin d'aide supplémentaire, n'hésitez pas à demander. Bonne mise en œuvre !
