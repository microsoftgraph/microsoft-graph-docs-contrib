---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/networkaccess"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphnetworkaccess.NetworkAccessFilteringPolicieItemRequestBuilderGetQueryParameters{
	Expand: [] string {"policyRules"},
}
configuration := &graphnetworkaccess.NetworkAccessFilteringPolicieItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

filteringPolicies, err := graphClient.NetworkAccess().FilteringPolicies().ByFilteringPolicyId("filteringPolicy-id").Get(context.Background(), configuration)


```