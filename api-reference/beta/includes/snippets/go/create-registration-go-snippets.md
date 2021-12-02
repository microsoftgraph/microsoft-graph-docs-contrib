---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"subject": "Microsoft Ignite",
	"description": "Join us November 2–4, 2021 to explore the latest tools, training sessions, technical expertise, networking opportunities, and more.",
	"startDateTime": "2021-11-02T08:00:00-08:00",
	"endDateTime": "2021-11-04T04:00:00-08:00",
	"allowedRegistrant": "everyone",
	"speakers":  []Object {
	}
	"customQuestions":  []Object {
	}
}
options := &msgraphsdk.RegistrationRequestBuilderPostOptions{
	Body: requestBody,
}
onlineMeetingId := "onlineMeeting-id"
graphClient.Me().OnlineMeetingsById(&onlineMeetingId).Registration().Post(options)


```