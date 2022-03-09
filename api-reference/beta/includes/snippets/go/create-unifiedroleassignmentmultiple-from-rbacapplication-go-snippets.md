---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewUnifiedRoleAssignmentMultiple()
displayName := "My test role assignment 1"
requestBody.SetDisplayName(&displayName)
roleDefinitionId := "c2cf284d-6c41-4e6b-afac-4b80928c9034"
requestBody.SetRoleDefinitionId(&roleDefinitionId)
requestBody.SetPrincipalIds( []String {
	"f8ca5a85-489a-49a0-b555-0a6d81e56f0d",
	"c1518aa9-4da5-4c84-a902-a31404023890",
}
requestBody.SetDirectoryScopeIds( []String {
	"28ca5a85-489a-49a0-b555-0a6d81e56f0d",
	"8152656a-cf9a-4928-a457-1512d4cae295",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.unifiedRoleAssignmentMultiple",
}
options := &msgraphsdk.RoleAssignmentsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.RoleManagement().DeviceManagement().RoleAssignments().Post(options)


```