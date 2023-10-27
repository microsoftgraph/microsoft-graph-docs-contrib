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



taskGroups, err := graphClient.Me().Outlook().TaskGroups().ByOutlookTaskGroupId("outlookTaskGroup-id").Get(context.Background(), nil)


```