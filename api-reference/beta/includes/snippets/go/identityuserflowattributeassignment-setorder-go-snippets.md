---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewNewAssignmentOrderRequestBody()
newAssignmentOrder := msgraphsdk.NewAssignmentOrder()
requestBody.SetNewAssignmentOrder(newAssignmentOrder)
newAssignmentOrder.SetOrder( []String {
	"City",
	"extension_GUID_ShoeSize",
}
b2cIdentityUserFlowId := "b2cIdentityUserFlow-id"
graphClient.Identity().B2cUserFlowsById(&b2cIdentityUserFlowId).UserAttributeAssignments().SetOrder(b2cIdentityUserFlow-id).Post(requestBody)


```