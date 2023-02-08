---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.PoliciesCrossTenantAccessPolicyPartnersRequestBuilderGetQueryParameters{
	Select: [] string {"tenantId"},
	Expand: [] string {"identitySynchronization"},
}
configuration := &graphconfig.PoliciesCrossTenantAccessPolicyPartnersRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Policies().CrossTenantAccessPolicy().Partners().Get(context.Background(), configuration)


```