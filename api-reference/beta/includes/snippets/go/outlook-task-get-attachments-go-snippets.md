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



attachments, err := graphClient.Users().ByUserId("user-id").Outlook().Tasks().ByOutlookTaskId("outlookTask-id").Attachments().Get(context.Background(), nil)


```