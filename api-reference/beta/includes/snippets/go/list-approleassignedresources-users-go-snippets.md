---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestCount := true

requestParameters := &graphconfig.MeAppRoleAssignedResourcesRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Select: [] string {"displayName","accountEnabled","servicePrincipalType","signInAudience"},
}
configuration := &graphconfig.MeAppRoleAssignedResourcesRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().AppRoleAssignedResources().Get(context.Background(), configuration)


```