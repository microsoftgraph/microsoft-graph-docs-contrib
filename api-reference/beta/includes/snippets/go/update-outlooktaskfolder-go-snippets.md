---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewOutlookTaskFolder()
name := "Charity work"
requestBody.SetName(&name) 

taskFolders, err := graphClient.Me().Outlook().TaskFolders().ByOutlookTaskFolderId("outlookTaskFolder-id").Patch(context.Background(), requestBody, nil)


```