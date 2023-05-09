---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/identity"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.IdentityB2cUserFlowItemUserAttributeAssignmentsRequestBuilderGetQueryParameters{
	Expand: [] string {"userAttribute"},
}
configuration := &graphconfig.IdentityB2cUserFlowItemUserAttributeAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().B2cUserFlows().ByB2cUserFlowId("b2cIdentityUserFlow-id").UserAttributeAssignments().Get(context.Background(), configuration)


```