---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"ConsistencyLevel": "eventual",
}
requestParameters := &graphconfig.TransitiveRoleAssignmentsRequestBuilderGetQueryParameters{
	Count: true,
	Filter: "principalId eq '2c7936bc-3517-40f3-8eda-4806637b6516'",
}
configuration := &graphconfig.TransitiveRoleAssignmentsRequestBuilderGetRequestConfiguration{
	Headers: headers,
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().Directory().TransitiveRoleAssignments().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```