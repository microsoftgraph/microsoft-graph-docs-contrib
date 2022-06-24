---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.IdentityUserFlowAttributeAssignmentRequestBuilderGetQueryParameters{
	Expand: "userAttribute",
}
options := &msgraphsdk.IdentityUserFlowAttributeAssignmentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
b2xIdentityUserFlowId := "b2xIdentityUserFlow-id"
identityUserFlowAttributeAssignmentId := "identityUserFlowAttributeAssignment-id"
result, err := graphClient.Identity().B2xUserFlowsById(&b2xIdentityUserFlowId).UserAttributeAssignmentsById(&identityUserFlowAttributeAssignmentId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```