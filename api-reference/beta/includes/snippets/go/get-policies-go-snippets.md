---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-beta-sdk-go/identity"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "displayName eq 'SimplePolicy1' or displayName eq 'SimplePolicy2'"

requestParameters := &graphidentity.IdentityConditionalAccessPoliciesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentity.IdentityConditionalAccessPoliciesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

policies, err := graphClient.Identity().ConditionalAccess().Policies().Get(context.Background(), configuration)


```