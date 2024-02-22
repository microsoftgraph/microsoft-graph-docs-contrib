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



requestFilter := "id eq 'a5228c26-a9ae-4702-90e0-79a5246d2f7d'"

requestParameters := &graphappcatalogs.AppCatalogsTeamsAppsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"appDefinitions($select=id,authorization)"},
}
configuration := &graphappcatalogs.AppCatalogsTeamsAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

teamsApps, err := graphClient.AppCatalogs().TeamsApps().Get(context.Background(), configuration)


```