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



attachments, err := graphClient.Admin().ServiceAnnouncement().Messages().ByServiceUpdateMessageId("serviceUpdateMessage-id").Attachments().ByServiceAnnouncementAttachmentId("serviceAnnouncementAttachment-id").Get(context.Background(), nil)


```