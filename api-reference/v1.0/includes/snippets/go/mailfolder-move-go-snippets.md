---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemMovePostRequestBody()
destinationId := "destinationId-value"
requestBody.SetDestinationId(&destinationId) 

move, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").Move().Post(context.Background(), requestBody, nil)


```