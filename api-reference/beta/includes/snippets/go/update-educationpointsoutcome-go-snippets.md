---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEducationOutcome()
additionalData := map[string]interface{}{
points := graphmodels.New()
points := int32(85.0)
points.SetPoints(&points) 
	requestBody.SetPoints(points)
}
requestBody.SetAdditionalData(additionalData)

graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").SubmissionsById("educationSubmission-id").OutcomesById("educationOutcome-id").Patch(requestBody)


```