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



requestRequiresReview := "true"

requestParameters := &graphappcatalogs.AppCatalogsTeamsAppsRequestBuilderPostQueryParameters{
	RequiresReview: &requestRequiresReview,
}
configuration := &graphappcatalogs.AppCatalogsTeamsAppsRequestBuilderPostRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.AppCatalogs().TeamsApps().Post(context.Background(), configuration)


```