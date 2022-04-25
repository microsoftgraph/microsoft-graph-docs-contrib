---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewEducationAssignmentDefaults()
addedStudentAction := "assignIfOpen"
requestBody.SetAddedStudentAction(&addedStudentAction)
notificationChannelUrl := "https://graph.microsoft.com/beta/teams('acdefc6b-2dc6-4e71-b1e9-6d9810ab1793')/channels('3da03fc4-8eac-4459-84fb-1422dc01f65e')"
requestBody.SetNotificationChannelUrl(&notificationChannelUrl)
options := &msgraphsdk.AssignmentDefaultsRequestBuilderPatchOptions{
	Body: requestBody,
}
educationClassId := "educationClass-id"
graphClient.Education().ClassesById(&educationClassId).AssignmentDefaults().Patch(options)


```