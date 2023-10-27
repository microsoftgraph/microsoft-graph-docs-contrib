---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphappcatalogs "github.com/microsoftgraph/msgraph-sdk-go/appcatalogs"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'"

requestParameters := &graphappcatalogs.AppCatalogsTeamsAppsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphappcatalogs.AppCatalogsTeamsAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

teamsApps, err := graphClient.AppCatalogs().TeamsApps().Get(context.Background(), configuration)


```