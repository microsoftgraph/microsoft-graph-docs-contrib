---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewSetStatusMessagePostRequestBody()
statusMessage := graphmodels.NewPresenceStatusMessage()
message := graphmodels.NewItemBody()
content := "Hey I'm currently in a meeting."
message.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
message.SetContentType(&contentType) 
statusMessage.SetMessage(message)
expiryDateTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2022-10-18T17:05:33.2079781"
expiryDateTime.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
expiryDateTime.SetTimeZone(&timeZone) 
statusMessage.SetExpiryDateTime(expiryDateTime)
requestBody.SetStatusMessage(statusMessage)

graphClient.UsersById("user-id").Presence().SetStatusMessage().Post(context.Background(), requestBody, nil)


```