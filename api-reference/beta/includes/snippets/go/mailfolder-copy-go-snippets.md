---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

requestBody := graphusers.NewItemCopyPostRequestBody()
destinationId := "destinationId-value"
requestBody.SetDestinationId(&destinationId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
copy, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").Copy().Post(context.Background(), requestBody, nil)


```