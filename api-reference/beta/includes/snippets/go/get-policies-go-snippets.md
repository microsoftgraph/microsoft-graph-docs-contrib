---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.PoliciesRequestBuilderGetQueryParameters{
	Filter: "displayName eq 'SimplePolicy1' or displayName eq 'SimplePolicy2'",
}
configuration := &graphconfig.PoliciesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().ConditionalAccess().Policies().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```