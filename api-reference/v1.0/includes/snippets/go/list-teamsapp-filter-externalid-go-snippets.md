---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/appcatalogs"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'"

requestParameters := &graphconfig.AppCatalogsTeamsAppsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.AppCatalogsTeamsAppsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.AppCatalogs().TeamsApps().Get(context.Background(), configuration)


```