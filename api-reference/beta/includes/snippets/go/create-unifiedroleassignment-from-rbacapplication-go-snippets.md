---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewUnifiedRoleAssignment()
roleDefinitionId := "c2cf284d-6c41-4e6b-afac-4b80928c9034"
requestBody.SetRoleDefinitionId(&roleDefinitionId)
principalId := "f8ca5a85-489a-49a0-b555-0a6d81e56f0d"
requestBody.SetPrincipalId(&principalId)
directoryScopeId := "/"
requestBody.SetDirectoryScopeId(&directoryScopeId)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.unifiedRoleAssignment",
}
options := &msgraphsdk.RoleAssignmentsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.RoleManagement().Directory().RoleAssignments().Post(options)


```