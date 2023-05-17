---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/teams"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.TeamItemInstalledAppsRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsAppDefinition($expand=bot)"},
}
configuration := &graphconfig.TeamItemInstalledAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Teams().ByTeamId("team-id").InstalledApps().Get(context.Background(), configuration)


```