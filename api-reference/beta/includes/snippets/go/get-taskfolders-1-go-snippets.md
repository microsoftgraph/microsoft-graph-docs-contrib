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



taskFolders, err := graphClient.Me().Outlook().TaskGroups().ByOutlookTaskGroupId("outlookTaskGroup-id").TaskFolders().Get(context.Background(), nil)


```