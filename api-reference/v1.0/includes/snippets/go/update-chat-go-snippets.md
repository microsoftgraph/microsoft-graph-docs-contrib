---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewChat()
topic := "Group chat title update"
requestBody.SetTopic(&topic) 

graphClient.ChatsById("chat-id").Patch(context.Background(), requestBody, nil)


```