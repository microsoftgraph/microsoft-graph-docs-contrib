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


requestFilter := "isValidGroup eq true and guestTransitiveUserCount gt 0"
requestTop := int32(10)

requestParameters := &graphreports.IdentityAnalyticsGroupsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"id","displayName","createdDateTime","groupType","transitiveUserCount","guestTransitiveUserCount"},
	Orderby: [] string {"createdDateTime desc"},
	Top: &requestTop,
}
configuration := &graphreports.IdentityAnalyticsGroupsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
groups, err := graphClient.Reports().IdentityAnalytics().Groups().Get(context.Background(), configuration)


```