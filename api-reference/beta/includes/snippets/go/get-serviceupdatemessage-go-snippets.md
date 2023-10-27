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



messages, err := graphClient.Admin().ServiceAnnouncement().Messages().ByServiceUpdateMessageId("serviceUpdateMessage-id").Get(context.Background(), nil)


```