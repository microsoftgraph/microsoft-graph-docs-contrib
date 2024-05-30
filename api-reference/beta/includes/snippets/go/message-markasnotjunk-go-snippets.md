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

requestBody := graphusers.NewItemMarkAsNotJunkPostRequestBody()
moveToInbox := true
requestBody.SetMoveToInbox(&moveToInbox) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
markAsNotJunk, err := graphClient.Me().Messages().ByMessageId("message-id").MarkAsNotJunk().Post(context.Background(), requestBody, nil)


```