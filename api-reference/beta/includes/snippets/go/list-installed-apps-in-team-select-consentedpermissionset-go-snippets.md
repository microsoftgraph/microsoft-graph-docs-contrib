---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/teams"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.TeamItemInstalledAppsRequestBuilderGetQueryParameters{
	Select: [] string {"consentedPermissionSet","id"},
}
configuration := &graphconfig.TeamItemInstalledAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Teams().ByTeamId("team-id").InstalledApps().Get(context.Background(), configuration)


```