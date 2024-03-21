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
name := "Cooking"
requestBody.SetName(&name) 

taskFolders, err := graphClient.Me().Outlook().TaskGroups().ByOutlookTaskGroupId("outlookTaskGroup-id").TaskFolders().Post(context.Background(), requestBody, nil)


```