---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



result, err := graphClient.Admin().ServiceAnnouncement().Messages().ByMessageId("serviceUpdateMessage-id").Attachments().ByAttachmentId("serviceAnnouncementAttachment-id").Get(context.Background(), nil)


```