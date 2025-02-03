---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.identitygovernance.WorkflowCollectionResponse result = graphClient.identityGovernance().lifecycleWorkflows().workflows().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "category eq 'leaver'";
	requestConfiguration.queryParameters.select = new String []{"id", "category", "displayName", "isEnabled", "isSchedulingEnabled"};
});


```