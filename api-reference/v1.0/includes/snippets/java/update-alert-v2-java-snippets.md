---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.Alert alert = new com.microsoft.graph.models.security.Alert();
alert.setAssignedTo("secAdmin@contoso.com");
alert.setClassification(com.microsoft.graph.models.security.AlertClassification.TruePositive);
alert.setDetermination(com.microsoft.graph.models.security.AlertDetermination.Malware);
alert.setStatus(com.microsoft.graph.models.security.AlertStatus.InProgress);
com.microsoft.graph.models.security.Alert result = graphClient.security().alertsV2().byAlertId("{alert-id}").patch(alert);


```