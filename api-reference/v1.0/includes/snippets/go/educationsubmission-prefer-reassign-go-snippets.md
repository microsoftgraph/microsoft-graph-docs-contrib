---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "include-unknown-enum-members"
}
options := &msgraphsdk.ReassignRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
educationClassId := "educationClass-id"
educationAssignmentId := "educationAssignment-id"
educationSubmissionId := "educationSubmission-id"
result, err := graphClient.Education().ClassesById(&educationClassId).AssignmentsById(&educationAssignmentId).SubmissionsById(&educationSubmissionId).Reassign(educationClass-id, educationAssignment-id, educationSubmission-id).PostWithRequestConfigurationAndResponseHandler(options, nil)


```