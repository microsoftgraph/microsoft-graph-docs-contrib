---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.UserAttributeAssignmentsRequestBuilderGetQueryParameters{
	Expand: [] string {"userAttribute"},
}
configuration := &graphconfig.UserAttributeAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").UserAttributeAssignments().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```