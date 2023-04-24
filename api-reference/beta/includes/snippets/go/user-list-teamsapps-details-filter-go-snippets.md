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



requestFilter := "teamsApp/externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'"

requestParameters := &graphconfig.UserItemTeamworkInstalledAppsRequestBuilderGetQueryParameters{
	Expand: [] string {"teamsApp","teamsAppDefinition"},
	Filter: &requestFilter,
}
configuration := &graphconfig.UserItemTeamworkInstalledAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Users().ByUserId("user-id").Teamwork().InstalledApps().Get(context.Background(), configuration)


```