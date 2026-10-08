---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)


// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
enabledApps, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").EnabledApps().ByTeamsAppId("teamsApp-id").Get(context.Background(), nil)


```