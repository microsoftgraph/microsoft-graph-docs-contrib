---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewEducationAssignmentResource()
distributeForStudentWork := false
requestBody.SetDistributeForStudentWork(&distributeForStudentWork)
resource := msgraphsdk.NewEducationResource()
requestBody.SetResource(resource)
displayName := "Where the Wonders of Learning Never Cease | Wonderopolis"
resource.SetDisplayName(&displayName)
resource.SetAdditionalData(map[string]interface{}{
	"link": "https://wonderopolis.org/",
	"thumbnailPreviewUrl": nil,
	"@odata.type": "#microsoft.graph.educationLinkResource",
}
options := &msgraphsdk.ResourcesRequestBuilderPostOptions{
	Body: requestBody,
}
educationClassId := "educationClass-id"
educationAssignmentId := "educationAssignment-id"
result, err := graphClient.Education().ClassesById(&educationClassId).AssignmentsById(&educationAssignmentId).Resources().Post(options)


```