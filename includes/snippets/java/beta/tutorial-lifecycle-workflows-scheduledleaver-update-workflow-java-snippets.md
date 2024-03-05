---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.identitygovernance.Workflow workflow = new com.microsoft.graph.beta.models.identitygovernance.Workflow();
workflow.setIsEnabled(true);
workflow.setIsSchedulingEnabled(true);
com.microsoft.graph.models.identitygovernance.Workflow result = graphClient.identityGovernance().lifecycleWorkflows().workflows().byWorkflowId("{workflow-id}").patch(workflow);


```