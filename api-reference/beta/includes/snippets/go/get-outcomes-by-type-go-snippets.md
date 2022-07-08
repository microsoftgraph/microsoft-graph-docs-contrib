---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.OutcomesRequestBuilderGetQueryParameters{
	Filter: "isof('microsoft.graph.educationFeedbackResourceOutcome')",
}
options := &msgraphsdk.OutcomesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
educationClassId := "educationClass-id"
educationAssignmentId := "educationAssignment-id"
educationSubmissionId := "educationSubmission-id"
result, err := graphClient.Education().ClassesById(&educationClassId).AssignmentsById(&educationAssignmentId).SubmissionsById(&educationSubmissionId).Outcomes().GetWithRequestConfigurationAndResponseHandler(options, nil)


```