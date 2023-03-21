---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewTeamsTab()
displayName := "My Contoso Tab - updated again"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.ChatsById("chat-id").TabsById("teamsTab-id").Patch(context.Background(), requestBody, nil)


```