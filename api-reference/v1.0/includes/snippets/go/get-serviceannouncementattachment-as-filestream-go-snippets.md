---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Admin().ServiceAnnouncement().MessagesById("serviceUpdateMessage-id").AttachmentsById("serviceAnnouncementAttachment-id").Content().Get(context.Background(), nil)


```