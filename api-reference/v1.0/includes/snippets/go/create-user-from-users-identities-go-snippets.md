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


requestBody := graphmodels.NewUser()
displayName := "John Smith"
requestBody.SetDisplayName(&displayName) 


objectIdentity := graphmodels.NewObjectIdentity()
signInType := "userName"
objectIdentity.SetSignInType(&signInType) 
issuer := "contoso.onmicrosoft.com"
objectIdentity.SetIssuer(&issuer) 
issuerAssignedId := "johnsmith"
objectIdentity.SetIssuerAssignedId(&issuerAssignedId) 
objectIdentity1 := graphmodels.NewObjectIdentity()
signInType := "emailAddress"
objectIdentity1.SetSignInType(&signInType) 
issuer := "contoso.onmicrosoft.com"
objectIdentity1.SetIssuer(&issuer) 
issuerAssignedId := "jsmith@yahoo.com"
objectIdentity1.SetIssuerAssignedId(&issuerAssignedId) 
objectIdentity2 := graphmodels.NewObjectIdentity()
signInType := "federated"
objectIdentity2.SetSignInType(&signInType) 
issuer := "facebook.com"
objectIdentity2.SetIssuer(&issuer) 
issuerAssignedId := "5eecb0cd"
objectIdentity2.SetIssuerAssignedId(&issuerAssignedId) 

identities := []graphmodels.ObjectIdentityable {
	objectIdentity,
	objectIdentity1,
	objectIdentity2,

}
requestBody.SetIdentities(identities)
passwordProfile := graphmodels.NewPasswordProfile()
password := "password-value"
passwordProfile.SetPassword(&password) 
forceChangePasswordNextSignIn := false
passwordProfile.SetForceChangePasswordNextSignIn(&forceChangePasswordNextSignIn) 
requestBody.SetPasswordProfile(passwordProfile)
passwordPolicies := "DisablePasswordExpiration"
requestBody.SetPasswordPolicies(&passwordPolicies) 

result, err := graphClient.Users().Post(context.Background(), requestBody, nil)


```