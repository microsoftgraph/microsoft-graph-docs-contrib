---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


result, err := graphClient.IdentityGovernance().LifecycleWorkflows().WorkflowsById("workflow-id").RunsById("run-id").UserProcessingResultsById("userProcessingResult-id").TaskProcessingResults().Get(context.Background(), nil)


```