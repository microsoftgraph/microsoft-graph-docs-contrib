---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphusers.UserItemTeamworkInstalledAppItemRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsAppDefinition"},
}
configuration := &graphusers.UserItemTeamworkInstalledAppItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

installedApps, err := graphClient.Users().ByUserId("user-id").Teamwork().InstalledApps().ByUserScopeTeamsAppInstallationId("userScopeTeamsAppInstallation-id").Get(context.Background(), configuration)


```