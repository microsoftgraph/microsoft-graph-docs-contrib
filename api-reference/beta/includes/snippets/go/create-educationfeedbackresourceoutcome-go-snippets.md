---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEducationOutcome()
additionalData := map[string]interface{}{
feedbackResource := graphmodels.New()
displayName := "Document1.docx"
feedbackResource.SetDisplayName(&displayName) 
	requestBody.SetFeedbackResource(feedbackResource)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").SubmissionsById("educationSubmission-id").Outcomes().Post(context.Background(), requestBody, nil)


```