---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-beta-sdk-go/teams"
	  //other-imports
)


requestFilter := "membershipType eq 'shared'"

requestParameters := &graphteams.ItemAllChannelsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphteams.ItemAllChannelsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
allChannels, err := graphClient.Teams().ByTeamId("team-id").AllChannels().Get(context.Background(), configuration)


```