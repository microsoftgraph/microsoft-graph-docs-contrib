---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "include-unknown-enum-members")

configuration := &graphconfig.EducationClasseItemAssignmentItemSubmissionsRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").Submissions().Get(context.Background(), configuration)


```