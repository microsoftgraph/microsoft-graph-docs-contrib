---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.healthmonitoring.AlertCollectionResponse result = graphClient.reports().healthMonitoring().alerts().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"enrichment/impacts/microsoft.graph.healthmonitoring.directoryobjectimpactsummary/resourceSampling"};
	requestConfiguration.queryParameters.select = new String []{"alertType", " createdDateTime", " enrichment'"};
});


```