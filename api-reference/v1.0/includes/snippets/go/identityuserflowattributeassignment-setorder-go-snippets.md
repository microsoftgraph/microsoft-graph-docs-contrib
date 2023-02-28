---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSetOrderPostRequestBody()
newAssignmentOrder := graphmodels.NewAssignmentOrder()
order := []string {
	"City",
	"extension_GUID_ShoeSize",

}
newAssignmentOrder.SetOrder(order)
requestBody.SetNewAssignmentOrder(newAssignmentOrder)

graphClient.Identity().B2xUserFlowsById("b2xIdentityUserFlow-id").UserAttributeAssignments().MicrosoftGraphSetOrder().Post(context.Background(), requestBody, nil)


```