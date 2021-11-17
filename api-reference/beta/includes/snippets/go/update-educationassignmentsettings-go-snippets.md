---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewEducationAssignmentSettings()
submissionAnimationDisabled := true
requestBody.SetSubmissionAnimationDisabled(&submissionAnimationDisabled)
options := &msgraphsdk.AssignmentSettingsRequestBuilderPatchOptions{
	Body: requestBody,
}
educationClassId := "educationClass-id"
graphClient.Education().ClassesById(&educationClassId).AssignmentSettings().Patch(options)


```