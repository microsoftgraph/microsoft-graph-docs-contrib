---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.ChatsById("chat-id").InstalledAppsById("teamsAppInstallation-id").Upgrade().Post(context.Background(), nil)


```