---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewChatMessage()
body := graphmodels.NewItemBody()
content := "Hello world"
body.SetContent(&content) 
requestBody.SetBody(body)

result, err := graphClient.ChatsById("chat-id").Messages().Post(requestBody)


```