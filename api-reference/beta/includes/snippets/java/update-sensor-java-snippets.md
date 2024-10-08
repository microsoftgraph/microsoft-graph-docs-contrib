---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.Sensor sensor = new com.microsoft.graph.beta.models.security.Sensor();
com.microsoft.graph.beta.models.security.SensorSettings settings = new com.microsoft.graph.beta.models.security.SensorSettings();
settings.setDescription("dc1 settings new description");
LinkedList<String> domainControllerDnsNames = new LinkedList<String>();
domainControllerDnsNames.add("DC1.domain1.test.local");
settings.setDomainControllerDnsNames(domainControllerDnsNames);
settings.setIsDelayedDeploymentEnabled(false);
sensor.setSettings(settings);
com.microsoft.graph.models.security.Sensor result = graphClient.security().identities().sensors().bySensorId("{sensor-id}").patch(sensor);


```