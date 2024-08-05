---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphteamwork "github.com/microsoftgraph/msgraph-beta-sdk-go/teamwork"
	  //other-imports
)


requestFilter := "definitions/any(a:a/languageTag eq 'en-US')"

requestParameters := &graphteamwork.TeamworkTeamTemplatesRequestBuilderGetQueryParameters{
	Expand: [] string {"definitions"},
	Filter: &requestFilter,
}
configuration := &graphteamwork.TeamworkTeamTemplatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
teamTemplates, err := graphClient.Teamwork().TeamTemplates().Get(context.Background(), configuration)


```