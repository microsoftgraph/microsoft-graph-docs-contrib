---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphusers.ItemInsightsUsedRequestBuilderGetQueryParameters{
	Orderby: [] string {"LastUsed/LastAccessedDateTime desc"},
}
configuration := &graphusers.ItemInsightsUsedRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

used, err := graphClient.Me().Insights().Used().Get(context.Background(), configuration)


```