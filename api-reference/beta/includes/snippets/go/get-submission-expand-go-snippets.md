---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.EducationClasseItemAssignmentItemSubmissionItemRequestBuilderGetQueryParameters{
	Expand: [] string {"*"},
}
configuration := &graphconfig.EducationClasseItemAssignmentItemSubmissionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").SubmissionsById("educationSubmission-id").Get(context.Background(), configuration)


```