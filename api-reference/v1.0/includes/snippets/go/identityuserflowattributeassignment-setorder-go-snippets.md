---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Identity/B2xUserFlows/Item/UserAttributeAssignments/SetOrder"
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

graphClient.Identity().B2xUserFlows().ByB2xUserFlowId("b2xIdentityUserFlow-id").UserAttributeAssignments().SetOrder().Post(context.Background(), requestBody, nil)


```