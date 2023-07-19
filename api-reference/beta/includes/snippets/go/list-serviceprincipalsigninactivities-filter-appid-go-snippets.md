---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphreports "github.com/microsoftgraph/msgraph-beta-sdk-go/reports"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "appId eq 'f4d9654f-0305-4072-878c-8bf266dfe146'"

requestParameters := &graphreports.ReportsServicePrincipalSignInActivitiesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphreports.ReportsServicePrincipalSignInActivitiesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Reports().ServicePrincipalSignInActivities().Get(context.Background(), configuration)


```