---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Identity/B2cUserFlows/Item/UserAttributeAssignments/SetOrder"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSetOrderPostRequestBody()
newAssignmentOrder := graphmodels.NewAssignmentOrder()
order := []string {
	"City",
	"extension_GUID_ShoeSize",

}
newAssignmentOrder.SetOrder(order)
requestBody.SetNewAssignmentOrder(newAssignmentOrder)

graphClient.Identity().B2cUserFlows().ByB2cUserFlowId("b2cIdentityUserFlow-id").UserAttributeAssignments().SetOrder().Post(context.Background(), requestBody, nil)


```