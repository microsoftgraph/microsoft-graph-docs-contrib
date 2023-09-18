---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphusers.UserItemTeamworkInstalledAppsRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsAppDefinition"},
}
configuration := &graphusers.UserItemTeamworkInstalledAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

installedApps, err := graphClient.Users().ByUserId("user-id").Teamwork().InstalledApps().Get(context.Background(), configuration)


```