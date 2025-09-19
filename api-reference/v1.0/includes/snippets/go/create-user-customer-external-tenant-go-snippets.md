---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewUser()
displayName := "Test User"
requestBody.SetDisplayName(&displayName) 


objectIdentity := graphmodels.NewObjectIdentity()
signInType := "emailAddress"
objectIdentity.SetSignInType(&signInType) 
issuer := "contoso.onmicrosoft.com"
objectIdentity.SetIssuer(&issuer) 
issuerAssignedId := "adelev@adatum.com"
objectIdentity.SetIssuerAssignedId(&issuerAssignedId) 

identities := []graphmodels.ObjectIdentityable {
	objectIdentity,
}
requestBody.SetIdentities(identities)
mail := "adelev@adatum.com"
requestBody.SetMail(&mail) 
passwordProfile := graphmodels.NewPasswordProfile()
password := "passwordValue"
passwordProfile.SetPassword(&password) 
forceChangePasswordNextSignIn := true
passwordProfile.SetForceChangePasswordNextSignIn(&forceChangePasswordNextSignIn) 
requestBody.SetPasswordProfile(passwordProfile)
passwordPolicies := "DisablePasswordExpiration"
requestBody.SetPasswordPolicies(&passwordPolicies) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
users, err := graphClient.Users().Post(context.Background(), requestBody, nil)


```