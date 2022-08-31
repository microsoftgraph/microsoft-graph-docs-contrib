---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "displayName eq 'SimplePolicy1' or displayName eq 'SimplePolicy2'"

requestParameters := &graphconfig.PoliciesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.PoliciesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().ConditionalAccess().Policies().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```