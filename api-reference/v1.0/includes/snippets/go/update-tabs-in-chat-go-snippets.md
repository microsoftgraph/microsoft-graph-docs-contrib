---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTeamsTab()
displayName := "My Contoso Tab - updated again"
requestBody.SetDisplayName(&displayName) 

graphClient.ChatsById("chat-id").TabsById("teamsTab-id").Patch(context.Background(), requestBody, nil)


```