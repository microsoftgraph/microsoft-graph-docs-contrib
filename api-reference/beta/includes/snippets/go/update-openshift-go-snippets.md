---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"schedulingGroupId": "TAG_228940ed-ff84-4e25-b129-1b395cf78be0",
	"draftOpenShift": nil,
}
options := &msgraphsdk.OpenShiftRequestBuilderPutOptions{
	Body: requestBody,
}
teamId := "team-id"
openShiftId := "openShift-id"
graphClient.TeamsById(&teamId).Schedule().OpenShiftsById(&openShiftId).Put(options)


```