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
options := &msgraphsdk.SetOrderRequestBuilderPostOptions{
	Body: requestBody,
}
b2xIdentityUserFlowId := "b2xIdentityUserFlow-id"
graphClient.Identity().B2xUserFlowsById(&b2xIdentityUserFlowId).UserAttributeAssignments().SetOrder(b2xIdentityUserFlow-id).Post(options)


```