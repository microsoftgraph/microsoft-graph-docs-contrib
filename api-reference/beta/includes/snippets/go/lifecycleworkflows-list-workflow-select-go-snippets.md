---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestFilter := "category eq 'leaver'"

requestParameters := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"id","category","displayName","isEnabled","isSchedulingEnabled"},
}
configuration := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().Get(context.Background(), configuration)


```