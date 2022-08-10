---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUnifiedRoleAssignment()
"@odata.type" := "#microsoft.graph.unifiedRoleAssignment"
requestBody.Set"@odata.type"(&"@odata.type") 
roleDefinitionId := "fe930be7-5e62-47db-91af-98c3a49a38b1"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
principalId := "f8ca5a85-489a-49a0-b555-0a6d81e56f0d"
requestBody.SetPrincipalId(&principalId) 
directoryScopeId := "/administrativeUnits/5d107bba-d8e2-4e13-b6ae-884be90e5d1a"
requestBody.SetDirectoryScopeId(&directoryScopeId) 

result, err := graphClient.RoleManagement().Directory().RoleAssignments().Post(requestBody)


```