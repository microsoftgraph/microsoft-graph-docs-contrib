---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.EducationClasseItemAssignmentItemSubmissionsRequestBuilderGetQueryParameters{
	Expand: [] string {"outcomes"},
}
configuration := &graphconfig.EducationClasseItemAssignmentItemSubmissionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").Submissions().Get(context.Background(), configuration)


```