---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEducationSubmissionResource()
resource := graphmodels.NewEducationResource()
displayName := "Wikipedia"
resource.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"link" : "https://en.wikipedia.org/wiki/Main_Page", 
}
resource.SetAdditionalData(additionalData)
requestBody.SetResource(resource)

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").SubmissionsById("educationSubmission-id").Resources().Post(context.Background(), requestBody, nil)


```