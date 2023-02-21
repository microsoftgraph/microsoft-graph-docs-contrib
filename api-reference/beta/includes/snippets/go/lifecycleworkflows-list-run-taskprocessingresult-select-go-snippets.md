---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemRunItemTaskProcessingResultsRequestBuilderGetQueryParameters{
	Select: [] string {"id","failureReason","processingStatus","subject"},
}
configuration := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemRunItemTaskProcessingResultsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().WorkflowsById("workflow-id").RunsById("run-id").TaskProcessingResults().Get(context.Background(), configuration)


```