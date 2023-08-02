---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphpolicies "github.com/microsoftgraph/msgraph-beta-sdk-go/policies"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphpolicies.PoliciesCrossTenantAccessPolicyPartnersRequestBuilderGetQueryParameters{
	Select: [] string {"tenantId"},
	Expand: [] string {"identitySynchronization"},
}
configuration := &graphpolicies.PoliciesCrossTenantAccessPolicyPartnersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

partners, err := graphClient.Policies().CrossTenantAccessPolicy().Partners().Get(context.Background(), configuration)


```