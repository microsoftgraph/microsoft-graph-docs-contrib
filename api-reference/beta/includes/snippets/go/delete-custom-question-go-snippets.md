---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Me().OnlineMeetingsById("onlineMeeting-id").Registration().CustomQuestionsById("meetingRegistrationQuestion-id").Delete(context.Background(), nil)


```