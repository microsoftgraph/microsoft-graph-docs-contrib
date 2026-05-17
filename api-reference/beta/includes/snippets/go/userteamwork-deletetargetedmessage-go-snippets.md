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

requestBody := graphusers.NewDeleteTargetedMessagePostRequestBody()
teamId := "3Aeeaa4e946d674c4f8d4dded613780f45@thread.v2"
requestBody.SetTeamId(&teamId) 
channelId := "19:eeaa4e946d674c4f8d4dded613780f45@thread.v2"
requestBody.SetChannelId(&channelId) 
messageId := "1580849738240"
requestBody.SetMessageId(&messageId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Users().ByUserId("user-id").Teamwork().DeleteTargetedMessage().Post(context.Background(), requestBody, nil)


```