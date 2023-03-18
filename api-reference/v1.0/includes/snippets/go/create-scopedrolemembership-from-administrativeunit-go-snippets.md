---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewScopedRoleMembership()
roleId := "roleId-value"
requestBody.SetRoleId(&roleId) 
roleMemberInfo := graphmodels.NewIdentity()
id := "id-value"
roleMemberInfo.SetId(&id) 
requestBody.SetRoleMemberInfo(roleMemberInfo)

result, err := graphClient.Directory().AdministrativeUnitsById("administrativeUnit-id").ScopedRoleMembers().Post(context.Background(), requestBody, nil)


```