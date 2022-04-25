---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.RoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: "roleDefinitionId%20eq%20'62e90394-69f5-4237-9190-012177145e10'",
	Expand: "principal",
}
options := &msgraphsdk.RoleAssignmentsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.RoleManagement().Directory().RoleAssignments().Get(options)


```