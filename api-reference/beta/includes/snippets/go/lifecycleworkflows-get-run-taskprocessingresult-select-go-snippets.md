---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.UserProcessingResultsRequestBuilderGetQueryParameters{
	Select: [] string {"id","failedTasksCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","subject"},
}
configuration := &graphconfig.UserProcessingResultsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().WorkflowsById("workflow-id").RunsById("run-id").UserProcessingResults().Get(context.Background(), configuration)


```