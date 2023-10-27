---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.Admin().ServiceAnnouncement().Messages().ByServiceUpdateMessageId("serviceUpdateMessage-id").Attachments().ByServiceAnnouncementAttachmentId("serviceAnnouncementAttachment-id").Content().Get(context.Background(), nil)


```