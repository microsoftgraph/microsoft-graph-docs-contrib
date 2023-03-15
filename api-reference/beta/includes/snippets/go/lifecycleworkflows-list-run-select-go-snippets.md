---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemRunsRequestBuilderGetQueryParameters{
	Select: [] string {"id","failedTasksCount","failedUsersCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","totalUsersCount","id"},
}
configuration := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemRunsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().WorkflowsById("workflow-id").Runs().Get(context.Background(), configuration)


```