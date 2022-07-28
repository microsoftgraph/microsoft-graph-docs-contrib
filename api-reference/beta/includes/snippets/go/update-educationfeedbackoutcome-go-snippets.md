---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEducationOutcome()
"@odata.type" := "#microsoft.graph.educationFeedbackOutcome"
requestBody.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{
feedback := graphmodels.New()
text := graphmodels.New()
content := "This is feedback for the assignment as a whole."
text.SetContent(&content) 
contentType := "text"
text.SetContentType(&contentType) 
	feedback.SetText(text)
	requestBody.SetFeedback(feedback)
}
requestBody.SetAdditionalData(additionalData)

graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").SubmissionsById("educationSubmission-id").OutcomesById("educationOutcome-id").Patch(requestBody)


```