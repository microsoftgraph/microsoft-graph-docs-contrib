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


requestParameters := &graphidentity.IdentityB2cUserFlowItemUserAttributeAssignmentItemRequestBuilderGetQueryParameters{
	Expand: [] string {"userAttribute"},
}
configuration := &graphidentity.IdentityB2cUserFlowItemUserAttributeAssignmentItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().B2cUserFlows().ByB2cUserFlowId("b2cIdentityUserFlow-id").UserAttributeAssignments().ByUserAttributeAssignmentId("identityUserFlowAttributeAssignment-id").Get(context.Background(), configuration)


```