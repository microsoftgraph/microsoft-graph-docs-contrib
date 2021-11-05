---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
sessionId := "22553876-f5ab-4529-bffb-cfe50aa89f87"
requestBody.SetSessionId(&sessionId)
availability := "Available"
requestBody.SetAvailability(&availability)
activity := "Available"
requestBody.SetActivity(&activity)
expirationDuration := "PT1H"
requestBody.SetExpirationDuration(&expirationDuration)
options := &msgraphsdk.SetPresenceRequestBuilderPostOptions{
	Body: requestBody,
}
userId := "user-id"
graphClient.UsersById(&userId).Presence().SetPresence().Post(options);


```