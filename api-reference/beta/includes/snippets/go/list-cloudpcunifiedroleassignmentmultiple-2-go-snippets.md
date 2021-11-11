---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.RoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: "roleDefinitionId%20eq%20'b5c08161-a7af-481c-ace2-a20a69a48fb1'",
}
options := &msgraphsdk.RoleAssignmentsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.RoleManagement().CloudPC().RoleAssignments().Get(options)


```