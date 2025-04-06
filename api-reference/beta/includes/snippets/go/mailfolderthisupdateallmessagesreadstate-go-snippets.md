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

requestBody := graphusers.NewItemUpdateAllMessagesReadStatePostRequestBody()
isRead := true
requestBody.SetIsRead(&isRead) 
suppressReadReceipts := true
requestBody.SetSuppressReadReceipts(&suppressReadReceipts) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").UpdateAllMessagesReadState().Post(context.Background(), requestBody, nil)


```