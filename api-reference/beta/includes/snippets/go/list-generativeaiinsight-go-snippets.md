---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/networkaccess"
	  //other-imports
)


requestFilter := "activity eq 'prompt'"
requestTop := int32(25)

requestParameters := &graphnetworkaccess.LogsGenerativeAIInsightsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Orderby: [] string {"createdDateTime desc"},
	Top: &requestTop,
}
configuration := &graphnetworkaccess.LogsGenerativeAIInsightsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
generativeAIInsights, err := graphClient.NetworkAccess().Logs().GenerativeAIInsights().Get(context.Background(), configuration)


```