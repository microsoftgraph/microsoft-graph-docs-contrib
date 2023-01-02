---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.TaskProcessingResultsRequestBuilderGetQueryParameters{
	Select: [] string {"id","failureReason","processingStatus","subject","task"},
}
configuration := &graphconfig.TaskProcessingResultsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().WorkflowsById("workflow-id").TaskReportsById("taskReport-id").TaskProcessingResults().Get(context.Background(), configuration)


```