---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.PoliciesRequestBuilderGetQueryParameters{
	Filter: "displayName%20eq%20'SimplePolicy1'%20or%20displayName%20eq%20'SimplePolicy2'",
}
options := &msgraphsdk.PoliciesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.Identity().ConditionalAccess().Policies().GetWithRequestConfigurationAndResponseHandler(options, nil)


```