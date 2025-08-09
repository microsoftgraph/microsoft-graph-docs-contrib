---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.IncidentTask incidentTask = new com.microsoft.graph.beta.models.security.IncidentTask();
incidentTask.setStatus(com.microsoft.graph.beta.models.security.IncidentTaskStatus.Completed);
com.microsoft.graph.models.security.IncidentTask result = graphClient.security().incidentTasks().byIncidentTaskId("{incidentTask-id}").patch(incidentTask);


```