---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphpolicies "github.com/microsoftgraph/msgraph-sdk-go/policies"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphpolicies.PoliciesAppManagementPolicieItemAppliesToRequestBuilderGetQueryParameters{
	Select: [] string {"id","appId","displayName","createdDateTime"},
}
configuration := &graphpolicies.PoliciesAppManagementPolicieItemAppliesToRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

appliesTo, err := graphClient.Policies().AppManagementPolicies().ByAppManagementPolicyId("appManagementPolicy-id").AppliesTo().Get(context.Background(), configuration)


```