---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEducationOutcome()
"@odata.type" := "#microsoft.graph.educationFeedbackResourceOutcome"
requestBody.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{
feedbackResource := graphmodels.New()
"@odata.type" := "#microsoft.graph.educationWordResource"
feedbackResource.Set"@odata.type"(&"@odata.type") 
displayName := "Document1.docx"
feedbackResource.SetDisplayName(&displayName) 
	requestBody.SetFeedbackResource(feedbackResource)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").SubmissionsById("educationSubmission-id").Outcomes().Post(requestBody)


```