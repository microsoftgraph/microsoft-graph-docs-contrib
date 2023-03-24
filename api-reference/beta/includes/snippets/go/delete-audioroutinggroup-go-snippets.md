---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.Communications().CallsById("call-id").AudioRoutingGroupsById("audioRoutingGroup-id").Delete(context.Background(), nil)


```