---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.healthmonitoring.Alert result = graphClient.reports().healthMonitoring().alerts().byAlertId("{alert-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"enrichment/impacts/microsoft.graph.healthmonitoring.directoryobjectimpactsummary/resourceSampling"};
	requestConfiguration.queryParameters.select = new String []{"alertType", " createdDateTime", " enrichment'"};
});


```