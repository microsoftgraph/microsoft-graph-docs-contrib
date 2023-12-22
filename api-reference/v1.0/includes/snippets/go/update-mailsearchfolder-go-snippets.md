---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMailFolder()
filterQuery := "contains(subject, 'Analytics')"
requestBody.SetFilterQuery(&filterQuery) 

mailFolders, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").Patch(context.Background(), requestBody, nil)


```