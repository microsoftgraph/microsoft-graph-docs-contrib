---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.identitygovernance.Workflow result = graphClient.identityGovernance().lifecycleWorkflows().deletedItems().workflows().byWorkflowId("{workflow-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "category", "displayName", "description", "version", "executionConditions"};
});


```