---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.healthmonitoring.AlertCollectionResponse result = graphClient.reports().healthMonitoring().alerts().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "createdDateTime gt 2024-06-10T11:23:44Z";
	requestConfiguration.queryParameters.select = new String []{"id", " alertType", " createdDateTime", " state"};
});


```