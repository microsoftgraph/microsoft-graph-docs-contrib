---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewMarkChatReadForUserPostRequestBody()
user := graphmodels.Newuser()
id := "d864e79f-a516-4d0f-9fee-0eeb4d61fdc2"
user.SetId(&id) 
requestBody.SetUser(user)
tenantId := "2a690434-97d9-4eed-83a6-f5f13600199a"
requestBody.SetTenantId(&tenantId) 

graphClient.ChatsById("chat-id").MarkChatReadForUser().Post(requestBody)


```