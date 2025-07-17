---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-sdk-go/identity"
	  //other-imports
)

requestParameters := &graphidentity.B2xUserFlowsItemUserAttributeAssignmentsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"userAttribute"},
}
configuration := &graphidentity.B2xUserFlowsItemUserAttributeAssignmentsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
userAttributeAssignments, err := graphClient.Identity().B2xUserFlows().ByB2xIdentityUserFlowId("b2xIdentityUserFlow-id").UserAttributeAssignments().ByIdentityUserFlowAttributeAssignmentId("identityUserFlowAttributeAssignment-id").Get(context.Background(), configuration)


```