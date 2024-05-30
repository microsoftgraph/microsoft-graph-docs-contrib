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
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphidentity.NewSetOrderPostRequestBody()
newAssignmentOrder := graphmodels.NewAssignmentOrder()
order := []string {
	"City",
	"extension_GUID_ShoeSize",
}
newAssignmentOrder.SetOrder(order)
requestBody.SetNewAssignmentOrder(newAssignmentOrder)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Identity().B2cUserFlows().ByB2cIdentityUserFlowId("b2cIdentityUserFlow-id").UserAttributeAssignments().SetOrder().Post(context.Background(), requestBody, nil)


```