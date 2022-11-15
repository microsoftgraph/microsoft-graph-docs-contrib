---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "isof('microsoft.graph.educationFeedbackResourceOutcome')"

requestParameters := &graphconfig.OutcomesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.OutcomesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").SubmissionsById("educationSubmission-id").Outcomes().Get(context.Background(), configuration)


```