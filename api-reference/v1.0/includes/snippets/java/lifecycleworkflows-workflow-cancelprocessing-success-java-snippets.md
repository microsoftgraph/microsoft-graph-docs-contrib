---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernancecancelprocessing.CancelProcessingPostRequestBody cancelProcessingPostRequestBody = new com.microsoft.graph.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernancecancelprocessing.CancelProcessingPostRequestBody();
com.microsoft.graph.models.identitygovernance.CancelRunsScope scope = new com.microsoft.graph.models.identitygovernance.CancelRunsScope();
scope.setOdataType("#microsoft.graph.identityGovernance.cancelRunsScope");
LinkedList<com.microsoft.graph.models.identitygovernance.Run> runs = new LinkedList<com.microsoft.graph.models.identitygovernance.Run>();
com.microsoft.graph.models.identitygovernance.Run run = new com.microsoft.graph.models.identitygovernance.Run();
run.setId("8cdf25a8-c9d2-423e-a03d-3f39f03c3e97");
runs.add(run);
scope.setRuns(runs);
cancelProcessingPostRequestBody.setScope(scope);
graphClient.identityGovernance().lifecycleWorkflows().workflows().byWorkflowId("{workflow-id}").microsoftGraphIdentityGovernanceCancelProcessing().post(cancelProcessingPostRequestBody);


```