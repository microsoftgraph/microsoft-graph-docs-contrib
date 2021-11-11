---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewEducationSubmissionResource()
resource := msgraphsdk.NewEducationResource()
requestBody.SetResource(resource)
displayName := "Wikipedia"
resource.SetDisplayName(&displayName)
resource.SetAdditionalData(map[string]interface{}{
	"link": "https://en.wikipedia.org/wiki/Main_Page",
	"@odata.type": "#microsoft.graph.educationLinkResource",
}
options := &msgraphsdk.ResourcesRequestBuilderPostOptions{
	Body: requestBody,
}
educationClassId := "educationClass-id"
educationAssignmentId := "educationAssignment-id"
educationSubmissionId := "educationSubmission-id"
result, err := graphClient.Education().ClassesById(&educationClassId).AssignmentsById(&educationAssignmentId).SubmissionsById(&educationSubmissionId).Resources().Post(options)


```