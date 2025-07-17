---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.healthmonitoring.Alert alert = new com.microsoft.graph.beta.models.healthmonitoring.Alert();
alert.setState(com.microsoft.graph.beta.models.healthmonitoring.AlertState.Resolved);
com.microsoft.graph.models.healthmonitoring.Alert result = graphClient.reports().healthMonitoring().alerts().byAlertId("{alert-id}").patch(alert);


```