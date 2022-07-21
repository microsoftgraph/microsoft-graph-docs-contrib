---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.OutcomesRequestBuilderGetQueryParameters{
	Filter: "isof('microsoft.graph.educationFeedbackResourceOutcome')",
}
configuration := &graphconfig.OutcomesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").SubmissionsById("educationSubmission-id").Outcomes().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```