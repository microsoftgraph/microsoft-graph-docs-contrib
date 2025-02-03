---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.Incident incident = new com.microsoft.graph.models.security.Incident();
incident.setClassification(com.microsoft.graph.models.security.AlertClassification.TruePositive);
incident.setDetermination(com.microsoft.graph.models.security.AlertDetermination.MultiStagedAttack);
LinkedList<String> customTags = new LinkedList<String>();
customTags.add("Demo");
incident.setCustomTags(customTags);
com.microsoft.graph.models.security.Incident result = graphClient.security().incidents().byIncidentId("{incident-id}").patch(incident);


```