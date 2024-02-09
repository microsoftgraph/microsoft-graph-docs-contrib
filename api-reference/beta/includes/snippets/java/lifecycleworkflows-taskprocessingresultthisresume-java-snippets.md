---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identitygovernance.lifecycleworkflows.workflows.item.tasks.item.taskprocessingresults.item.microsoftgraphidentitygovernanceresume.ResumePostRequestBody resumePostRequestBody = new com.microsoft.graph.beta.identitygovernance.lifecycleworkflows.workflows.item.tasks.item.taskprocessingresults.item.microsoftgraphidentitygovernanceresume.ResumePostRequestBody();
com.microsoft.graph.beta.models.identitygovernance.CustomTaskExtensionCallbackData data = new com.microsoft.graph.beta.models.identitygovernance.CustomTaskExtensionCallbackData();
data.setOperationStatus(com.microsoft.graph.beta.models.identitygovernance.CustomTaskExtensionOperationStatus.Completed);
resumePostRequestBody.setData(data);
resumePostRequestBody.setSource("sample");
resumePostRequestBody.setType("lifecycleEvent");
graphClient.identityGovernance().lifecycleWorkflows().workflows().byWorkflowId("{workflow-id}").tasks().byTaskId("{task-id}").taskProcessingResults().byTaskProcessingResultId("{taskProcessingResult-id}").microsoftGraphIdentityGovernanceResume().post(resumePostRequestBody);


```