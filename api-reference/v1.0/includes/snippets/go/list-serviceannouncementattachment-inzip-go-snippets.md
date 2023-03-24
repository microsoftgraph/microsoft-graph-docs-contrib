---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.Admin().ServiceAnnouncement().MessagesById("serviceUpdateMessage-id").AttachmentsArchive().Get(context.Background(), nil)


```