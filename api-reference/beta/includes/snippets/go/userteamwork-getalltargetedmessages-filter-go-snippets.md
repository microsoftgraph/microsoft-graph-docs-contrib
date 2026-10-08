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


requestFilter := "lastModifiedDateTime gt 2024-01-01T00:00:00Z and lastModifiedDateTime lt 2024-12-31T23:59:59Z"

requestParameters := &graphusers.ItemTeamworkGetAllTargetedMessagesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.ItemTeamworkGetAllTargetedMessagesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
getAllTargetedMessages, err := graphClient.Users().ByUserId("user-id").Teamwork().GetAllTargetedMessages().GetAsGetAllTargetedMessagesGetResponse(context.Background(), configuration)


```