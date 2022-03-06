---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.TransitiveRoleAssignmentsRequestBuilderGetQueryParameters{
	Count: true,
	Filter: "principalId%20eq%20'2c7936bc-3517-40f3-8eda-4806637b6516'",
}
headers := map[string]string{
	"ConsistencyLevel": "eventual"
}
options := &msgraphsdk.TransitiveRoleAssignmentsRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
result, err := graphClient.RoleManagement().Directory().TransitiveRoleAssignments().Get(options)


```