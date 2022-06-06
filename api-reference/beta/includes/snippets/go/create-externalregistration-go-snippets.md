---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.externalMeetingRegistration",
	"allowedRegistrant": "everyone",
}
onlineMeetingId := "onlineMeeting-id"
graphClient.Me().OnlineMeetingsById(&onlineMeetingId).Registration().Post(requestBody)


```