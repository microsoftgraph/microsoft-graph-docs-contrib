---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)


requestFilter := "from/application/id eq '6d23e712-527b-406f-8d59-d02927885918'"

requestParameters := &graphusers.ItemTeamworkGetAllTargetedMessagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.ItemTeamworkGetAllTargetedMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
getAllTargetedMessages, err := graphClient.Users().ByUserId("user-id").Teamwork().GetAllTargetedMessages().GetAsGetAllTargetedMessagesGetResponse(context.Background(), configuration)


```