---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Me/MailFolders/Item/Move"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMovePostRequestBody()
destinationId := "destinationId-value"
requestBody.SetDestinationId(&destinationId) 

result, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").Move().Post(context.Background(), requestBody, nil)


```