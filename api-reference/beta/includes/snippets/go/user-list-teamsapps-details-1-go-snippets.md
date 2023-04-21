---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.UserItemTeamworkInstalledAppItemRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsAppDefinition"},
}
configuration := &graphconfig.UserItemTeamworkInstalledAppItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().ByUserId("user-id").Teamwork().InstalledApps().ByInstalledAppId("userScopeTeamsAppInstallation-id").Get(context.Background(), configuration)


```