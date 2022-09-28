---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}

requestCount := true

requestParameters := &graphconfig.AppRoleAssignedResourcesRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Select: [] string {"displayName","accountEnabled","servicePrincipalType","signInAudience"},
}
configuration := &graphconfig.AppRoleAssignedResourcesRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.Me().AppRoleAssignedResources().Get(context.Background(), configuration)


```