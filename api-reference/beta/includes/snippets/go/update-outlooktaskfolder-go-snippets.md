---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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

result, err := graphClient.Me().Outlook().TaskFolders().ByTaskFolderId("outlookTaskFolder-id").Patch(context.Background(), requestBody, nil)


```