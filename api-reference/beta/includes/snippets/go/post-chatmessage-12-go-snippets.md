---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewChatMessage()
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "<emoji alt=\"😶‍🌫️\"></emoji>"
body.SetContent(&content) 
requestBody.SetBody(body)

result, err := graphClient.ChatsById("chat-id").Messages().Post(context.Background(), requestBody, nil)


```