---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewServicePrincipal()


appRole := graphmodels.NewAppRole()
allowedMemberTypes := []string {
	"User",

}
appRole.SetAllowedMemberTypes(allowedMemberTypes)
description := "Survey.ReadWrite.All"
appRole.SetDescription(&description) 
displayName := "Survey.ReadWrite.All"
appRole.SetDisplayName(&displayName) 
id := uuid.MustParse("3ce57053-0ebf-42d8-bf7c-74161a450e4b")
appRole.SetId(&id) 
isEnabled := true
appRole.SetIsEnabled(&isEnabled) 
value := "Survey.ReadWrite.All"
appRole.SetValue(&value) 
appRole1 := graphmodels.NewAppRole()
allowedMemberTypes := []string {
	"User",
	"Application",

}
appRole1.SetAllowedMemberTypes(allowedMemberTypes)
description := "Survey.Read"
appRole1.SetDescription(&description) 
displayName := "Survey.Read"
appRole1.SetDisplayName(&displayName) 
id := uuid.MustParse("7a9ddfc4-cc8a-48ea-8275-8ecbffffd5a0")
appRole1.SetId(&id) 
isEnabled := false
appRole1.SetIsEnabled(&isEnabled) 
origin := "Application"
appRole1.SetOrigin(&origin) 
value := "Survey.Read"
appRole1.SetValue(&value) 

appRoles := []graphmodels.AppRoleable {
	appRole,
	appRole1,

}
requestBody.SetAppRoles(appRoles)

result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").Patch(context.Background(), requestBody, nil)


```