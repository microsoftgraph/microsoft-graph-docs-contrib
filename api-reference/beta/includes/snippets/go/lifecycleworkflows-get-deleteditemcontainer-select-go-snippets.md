---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.IdentityGovernanceLifecycleWorkflowsDeletedItemsWorkflowItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","category","displayName","description","version","executionConditions"},
}
configuration := &graphconfig.IdentityGovernanceLifecycleWorkflowsDeletedItemsWorkflowItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().DeletedItems().WorkflowsById("workflow-id").Get(context.Background(), configuration)


```