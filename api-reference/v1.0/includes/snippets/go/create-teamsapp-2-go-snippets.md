---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphappcatalogs "github.com/microsoftgraph/msgraph-sdk-go/appcatalogs"
	  //other-imports
)


requestRequiresReview := "true"

requestParameters := &graphappcatalogs.AppCatalogsTeamsAppsRequestBuilderPostQueryParameters{
	RequiresReview: &requestRequiresReview,
}
configuration := &graphappcatalogs.AppCatalogsTeamsAppsRequestBuilderPostRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.AppCatalogs().TeamsApps().PostAsTeamsAppsPostResponse(context.Background(), configuration)


```