---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEducationAssignmentSettings()
submissionAnimationDisabled := true
requestBody.SetSubmissionAnimationDisabled(&submissionAnimationDisabled) 

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentSettings().Patch(context.Background(), requestBody, nil)


```