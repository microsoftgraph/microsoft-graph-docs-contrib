---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "category eq 'leaver'"

requestParameters := &graphconfig.IdentityGovernanceLifecycleWorkflowsDeletedItemsWorkflowsRequestBuilderGetQueryParameters{
	Select: [] string {"id","category","displayName","description","version"},
	Filter: &requestFilter,
}
configuration := &graphconfig.IdentityGovernanceLifecycleWorkflowsDeletedItemsWorkflowsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().DeletedItems().Workflows().Get(context.Background(), configuration)


```