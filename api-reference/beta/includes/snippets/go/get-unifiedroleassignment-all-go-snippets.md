---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("ConsistencyLevel", "eventual")


requestCount := true
requestFilter := "principalId eq '2c7936bc-3517-40f3-8eda-4806637b6516'"

requestParameters := &graphconfig.RoleManagementDirectoryTransitiveRoleAssignmentsRequestBuilderGetQueryParameters{
	Count: &requestCount,
	Filter: &requestFilter,
}
configuration := &graphconfig.RoleManagementDirectoryTransitiveRoleAssignmentsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().Directory().TransitiveRoleAssignments().Get(context.Background(), configuration)


```