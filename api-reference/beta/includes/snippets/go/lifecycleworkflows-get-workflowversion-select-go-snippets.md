---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemVersionItemRequestBuilderGetQueryParameters{
	Select: [] string {"category","displayName","versionNumber","executionConditions"},
	Expand: [] string {"tasks"},
}
configuration := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemVersionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().WorkflowsById("workflow-id").VersionsById("workflowVersion-versionNumber").Get(context.Background(), configuration)


```