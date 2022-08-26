---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewMuteAllPostRequestBody()
participants := []string {
	"",

}
requestBody.SetParticipants(participants)
clientContext := "clientContext-value"
requestBody.SetClientContext(&clientContext) 

result, err := graphClient.Communications().CallsById("call-id").Participants().MuteAll().Post(requestBody)


```