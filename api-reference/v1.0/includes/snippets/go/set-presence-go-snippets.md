---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSetPresencePostRequestBody()
sessionId := "22553876-f5ab-4529-bffb-cfe50aa89f87"
requestBody.SetSessionId(&sessionId) 
availability := "Available"
requestBody.SetAvailability(&availability) 
activity := "Available"
requestBody.SetActivity(&activity) 
expirationDuration , err := abstractions.ParseISODuration("PT1H")
requestBody.SetExpirationDuration(&expirationDuration) 

graphClient.UsersById("user-id").Presence().MicrosoftGraphSetPresence().Post(context.Background(), requestBody, nil)


```