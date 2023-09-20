---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphappcatalogs "github.com/microsoftgraph/msgraph-beta-sdk-go/appcatalogs"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "appDefinitions/any(a:a/bot ne null)"

requestParameters := &graphappcatalogs.AppCatalogsTeamsAppsRequestBuilderGetQueryParameters{
	Expand: [] string {"appDefinitions($expand=bot)"},
	Filter: &requestFilter,
}
configuration := &graphappcatalogs.AppCatalogsTeamsAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

teamsApps, err := graphClient.AppCatalogs().TeamsApps().Get(context.Background(), configuration)


```