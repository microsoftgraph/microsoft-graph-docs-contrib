---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "category eq 'leaver'"

requestParameters := &graphconfig.WorkflowsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"id","category","displayName","isEnabled","isSchedulingEnabled"},
}
configuration := &graphconfig.WorkflowsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().Get(context.Background(), configuration)


```