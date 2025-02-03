---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.healthmonitoring.AlertCollectionResponse result = graphClient.reports().healthMonitoring().alerts().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "state eq microsoft.graph.healthmonitoring.alertState'active'";
	requestConfiguration.queryParameters.select = new String []{"id", " alertType"};
});


```