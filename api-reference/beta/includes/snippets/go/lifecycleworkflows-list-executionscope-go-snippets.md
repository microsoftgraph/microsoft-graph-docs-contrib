---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemExecutionScopeRequestBuilderGetQueryParameters{
	Select: [] string {"id"},
}
configuration := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemExecutionScopeRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().WorkflowsById("workflow-id").ExecutionScope().Get(context.Background(), configuration)


```