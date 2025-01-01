---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

requestParameters := &graphusers.InsightsUsedRequestBuilderGetQueryParameters{
	Orderby: [] string {"LastUsed/LastAccessedDateTime desc"},
}
configuration := &graphusers.InsightsUsedRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
used, err := graphClient.Me().Insights().Used().Get(context.Background(), configuration)


```