---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.IdentityUserFlowAttributeAssignmentRequestBuilderGetQueryParameters{
	Expand: [] string {"userAttribute"},
}
configuration := &graphconfig.IdentityUserFlowAttributeAssignmentRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").UserAttributeAssignmentsById("identityUserFlowAttributeAssignment-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```