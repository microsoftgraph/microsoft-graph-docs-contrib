---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernanceactivatewithscope.ActivateWithScopePostRequestBody activateWithScopePostRequestBody = new com.microsoft.graph.beta.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernanceactivatewithscope.ActivateWithScopePostRequestBody();
com.microsoft.graph.beta.models.identitygovernance.ActivateProcessingResultScope scope = new com.microsoft.graph.beta.models.identitygovernance.ActivateProcessingResultScope();
scope.setOdataType("microsoft.graph.identityGovernance.activateProcessingResultScope");
LinkedList<com.microsoft.graph.beta.models.identitygovernance.UserProcessingResult> processingResults = new LinkedList<com.microsoft.graph.beta.models.identitygovernance.UserProcessingResult>();
com.microsoft.graph.beta.models.identitygovernance.UserProcessingResult userProcessingResult = new com.microsoft.graph.beta.models.identitygovernance.UserProcessingResult();
userProcessingResult.setId("abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_638927021459371237_0cdd8963-aaaa-4632-a1f2-aaaa7230aaaa");
processingResults.add(userProcessingResult);
com.microsoft.graph.beta.models.identitygovernance.UserProcessingResult userProcessingResult1 = new com.microsoft.graph.beta.models.identitygovernance.UserProcessingResult();
userProcessingResult1.setId("abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_388131231459357126_aaaa8963-1c30-4632-aaaa-ac96723069cb");
processingResults.add(userProcessingResult1);
scope.setProcessingResults(processingResults);
scope.setTaskScope(com.microsoft.graph.beta.models.identitygovernance.ActivationTaskScopeType.AllTasks);
activateWithScopePostRequestBody.setScope(scope);
graphClient.identityGovernance().lifecycleWorkflows().workflows().byWorkflowId("{workflow-id}").microsoftGraphIdentityGovernanceActivateWithScope().post(activateWithScopePostRequestBody);


```