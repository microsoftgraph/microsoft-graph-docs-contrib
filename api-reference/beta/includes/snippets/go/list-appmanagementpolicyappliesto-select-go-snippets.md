---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AppliesToRequestBuilderGetQueryParameters{
	Select: [] string {"id","appId","displayName","createdDateTime"},
}
configuration := &graphconfig.AppliesToRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Policies().AppManagementPoliciesById("appManagementPolicy-id").AppliesTo().Get(context.Background(), configuration)


```