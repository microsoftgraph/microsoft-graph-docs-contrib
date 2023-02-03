---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "displayName eq 'SimplePolicy1' or displayName eq 'SimplePolicy2'"

requestParameters := &graphconfig.IdentityConditionalAccessPoliciesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.IdentityConditionalAccessPoliciesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Identity().ConditionalAccess().Policies().Get(context.Background(), configuration)


```