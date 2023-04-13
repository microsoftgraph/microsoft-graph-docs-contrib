---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemVersionsRequestBuilderGetQueryParameters{
	Select: [] string {"category","displayName","versionNumber"},
}
configuration := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemVersionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().WorkflowsById("workflow-id").Versions().Get(context.Background(), configuration)


```