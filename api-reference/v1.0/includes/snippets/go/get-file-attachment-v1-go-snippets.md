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



attachments, err := graphClient.Me().Messages().ByMessageId("message-id").Attachments().ByAttachmentId("attachment-id").Get(context.Background(), nil)


```