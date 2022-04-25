---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"displayName": "Vacation",
	"iconType": "plane",
	"isActive": true,
}
headers := map[string]string{
	"Prefer": "return=representation"
}
options := &msgraphsdk.TimeOffReasonRequestBuilderPutOptions{
	Body: requestBody,
	H: headers,
}
teamId := "team-id"
timeOffReasonId := "timeOffReason-id"
graphClient.TeamsById(&teamId).Schedule().TimeOffReasonsById(&timeOffReasonId).Put(options)


```