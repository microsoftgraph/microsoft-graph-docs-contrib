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


requestFilter := "teamsApp/externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'"

requestParameters := &graphteams.ItemInstalledAppsRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsApp","teamsAppDefinition"},
	Filter: &requestFilter,
}
configuration := &graphteams.ItemInstalledAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
installedApps, err := graphClient.Teams().ByTeamId("team-id").InstalledApps().Get(context.Background(), configuration)


```