---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "include-unknown-enum-members",
}
configuration := &graphconfig.EducationSubmissionRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").SubmissionsById("educationSubmission-id").Get(context.Background(), configuration)


```