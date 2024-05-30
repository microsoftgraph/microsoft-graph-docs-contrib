---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-sdk-go/teams"
	  //other-imports
)


requestFilter := "membershipType eq 'shared'"

requestParameters := &graphteams.TeamItemAllChannelsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphteams.TeamItemAllChannelsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
allChannels, err := graphClient.Teams().ByTeamId("team-id").AllChannels().Get(context.Background(), configuration)


```