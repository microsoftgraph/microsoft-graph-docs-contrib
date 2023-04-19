---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewServicePrincipal()


appRole := graphmodels.NewAppRole()
allowedMemberTypes := []string {
	"User",

}
appRole.SetAllowedMemberTypes(allowedMemberTypes)
displayName := "User"
appRole.SetDisplayName(&displayName) 
id := uuid.MustParse("8774f594-1d59-4279-b9d9-59ef09a23530")
appRole.SetId(&id) 
isEnabled := true
appRole.SetIsEnabled(&isEnabled) 
description := "User"
appRole.SetDescription(&description) 
value := null
appRole.SetValue(&value) 
origin := "Application"
appRole.SetOrigin(&origin) 
appRole1 := graphmodels.NewAppRole()
allowedMemberTypes := []string {
	"User",

}
appRole1.SetAllowedMemberTypes(allowedMemberTypes)
displayName := "msiam_access"
appRole1.SetDisplayName(&displayName) 
id := uuid.MustParse("e7f1a7f3-9eda-48e0-9963-bd67bf531afd")
appRole1.SetId(&id) 
isEnabled := true
appRole1.SetIsEnabled(&isEnabled) 
description := "msiam_access"
appRole1.SetDescription(&description) 
value := null
appRole1.SetValue(&value) 
origin := "Application"
appRole1.SetOrigin(&origin) 
appRole2 := graphmodels.NewAppRole()
allowedMemberTypes := []string {
	"User",

}
appRole2.SetAllowedMemberTypes(allowedMemberTypes)
description := "Admin,WAAD"
appRole2.SetDescription(&description) 
displayName := "Admin,WAAD"
appRole2.SetDisplayName(&displayName) 
id := uuid.MustParse("3a84e31e-bffa-470f-b9e6-754a61e4dc63")
appRole2.SetId(&id) 
isEnabled := true
appRole2.SetIsEnabled(&isEnabled) 
value := "arn:aws:iam::212743507312:role/accountname-aws-admin,arn:aws:iam::212743507312:saml-provider/WAAD"
appRole2.SetValue(&value) 
appRole3 := graphmodels.NewAppRole()
allowedMemberTypes := []string {
	"User",

}
appRole3.SetAllowedMemberTypes(allowedMemberTypes)
description := "Finance,WAAD"
appRole3.SetDescription(&description) 
displayName := "Finance,WAAD"
appRole3.SetDisplayName(&displayName) 
id := uuid.MustParse("7a960000-ded3-455b-8c04-4f2ace00319b")
appRole3.SetId(&id) 
isEnabled := true
appRole3.SetIsEnabled(&isEnabled) 
value := "arn:aws:iam::212743507312:role/accountname-aws-finance,arn:aws:iam::212743507312:saml-provider/WAAD"
appRole3.SetValue(&value) 

appRoles := []graphmodels.AppRoleable {
	appRole,
	appRole1,
	appRole2,
	appRole3,

}
requestBody.SetAppRoles(appRoles)

result, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Patch(context.Background(), requestBody, nil)


```