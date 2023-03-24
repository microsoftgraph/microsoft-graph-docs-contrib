---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.DevicesById("device-id").RegisteredOwnersById("directoryObject-id").Ref().Delete(context.Background(), nil)


```