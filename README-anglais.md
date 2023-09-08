# TP5-logging

1- Description of the provided files:

    - elasticsearch-deployment.yaml: Deployment file for Elasticsearch.
    - elasticsearch-service.yaml: Service file for Elasticsearch.
    - logstash-deployment.yaml: Deployment file for Logstash.
    - logstash-configmap.yaml: Configuration file for Logstash.
    - filebeat-deployment.yaml: Deployment file for Filebeat.
    - filebeat-configmap.yaml: Configuration file for Filebeat.
    - nginx-logstash-pipeline.conf: Logstash pipeline file for the Nginx application.

2- Description of prerequisites:

    - Ensure you have an operational Kubernetes cluster ready to receive new deployments.
    - Ensure you have the necessary rights and permissions to deploy resources in the cluster.

3- Diagram illustrating the architecture of the implemented infrastructure:
[Insert a schema illustrating the architecture of the solution with Elasticsearch, Logstash, Filebeat, and the Nginx application.]

4- How to deploy the centralized logging solution:

    a- Apply the deployment files for Elasticsearch, Logstash, and Filebeat using the command kubectl apply -f <file.yaml> for each file.
    b- Apply the configuration files for Logstash and Filebeat using the command kubectl apply -f <file.yaml> for each file.
    c- Verify that the deployments are correctly running using kubectl get pods.

5- How to deploy the Nginx application:

    a- Appliquez le fichier de déploiement pour l'application Nginx en utilisant la commande kubectl apply -f <fichier.yaml>.
    b- Vérifiez que le déploiement est correctement démarré en utilisant kubectl get pods.

6- How to add new applications to the centralized logging:

To add new applications to the centralized logging, follow these steps:

    a- Create a new Logstash pipeline file for the desired application, similar to nginx-logstash-pipeline.conf.
    b- Modify the filebeat-configmap.yaml file to include the new log paths of the application.
    c- Apply the changes using kubectl apply -f <file.yaml> for each file.

7- Presentation and justification of the storage and log rotation strategy:

We have chosen a storage and log rotation strategy based on the following operational criteria:

    - Application logs will be retained for 30 days.
    - Container logs will be retained for 7 days.

This strategy allows for sufficient log retention for retrospective analysis without causing unnecessary storage overhead.

Feel free to customize file names and configurations based on the specific needs of your environment. Also, make sure to replace <file.yaml> with the actual file names for the deployment commands in the documentation.

I hope this helps you get started with your centralized logging project using Elastic Stack on Kubernetes! If you have any additional questions or need further assistance, feel free to ask. Happy implementation!
