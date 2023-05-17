---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.ItemInsightsUsedRequestBuilderGetQueryParameters{
	Orderby: [] string {"LastUsed/LastAccessedDateTime desc"},
}
configuration := &graphconfig.ItemInsightsUsedRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().Insights().Used().Get(context.Background(), configuration)


```