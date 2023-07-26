---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-sdk-go/identity"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphidentity.IdentityB2xUserFlowItemUserAttributeAssignmentsRequestBuilderGetQueryParameters{
	Expand: [] string {"userAttribute"},
}
configuration := &graphidentity.IdentityB2xUserFlowItemUserAttributeAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().B2xUserFlows().ByB2xUserFlowId("b2xIdentityUserFlow-id").UserAttributeAssignments().Get(context.Background(), configuration)


```