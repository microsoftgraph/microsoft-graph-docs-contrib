---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSetStatusMessagePostRequestBody()
statusMessage := graphmodels.NewPresenceStatusMessage()
message := graphmodels.NewItemBody()
content := "Hey I am available now"
message.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
message.SetContentType(&contentType) 
statusMessage.SetMessage(message)
requestBody.SetStatusMessage(statusMessage)

graphClient.UsersById("user-id").Presence().SetStatusMessage().Post(context.Background(), requestBody, nil)


```