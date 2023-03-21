---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.External().ConnectionsById("externalConnection-id").GroupsById("externalGroup-id").MembersById("identity-id").Delete(context.Background(), nil)


```