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



taskFolders, err := graphClient.Me().Outlook().TaskFolders().ByOutlookTaskFolderId("outlookTaskFolder-id").Get(context.Background(), nil)


```