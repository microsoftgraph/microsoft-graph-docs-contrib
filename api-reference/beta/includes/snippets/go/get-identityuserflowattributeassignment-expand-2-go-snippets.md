---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentity "github.com/microsoftgraph/msgraph-beta-sdk-go/identity"
	  //other-imports
)

requestParameters := &graphidentity.B2xUserFlowsItemUserAttributeAssignmentsRequestBuilderGetQueryParameters{
	Expand: [] string {"userAttribute"},
}
configuration := &graphidentity.B2xUserFlowsItemUserAttributeAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
userAttributeAssignments, err := graphClient.Identity().B2xUserFlows().ByB2xIdentityUserFlowId("b2xIdentityUserFlow-id").UserAttributeAssignments().Get(context.Background(), configuration)


```