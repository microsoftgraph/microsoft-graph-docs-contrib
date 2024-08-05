---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphreports "github.com/microsoftgraph/msgraph-beta-sdk-go/reports"
	  //other-imports
)


requestFilter := "appId eq 'f4d9654f-0305-4072-878c-8bf266dfe146'"

requestParameters := &graphreports.ReportsServicePrincipalSignInActivitiesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphreports.ReportsServicePrincipalSignInActivitiesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
servicePrincipalSignInActivities, err := graphClient.Reports().ServicePrincipalSignInActivities().Get(context.Background(), configuration)


```