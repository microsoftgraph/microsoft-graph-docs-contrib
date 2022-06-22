---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewUser()
displayName := "John Smith"
requestBody.SetDisplayName(&displayName)
requestBody.SetIdentities( []ObjectIdentity {
	msgraphsdk.NewObjectIdentity(),
signInType := "userName"
	SetSignInType(&signInType)
issuer := "contoso.onmicrosoft.com"
	SetIssuer(&issuer)
issuerAssignedId := "johnsmith"
	SetIssuerAssignedId(&issuerAssignedId)
	msgraphsdk.NewObjectIdentity(),
signInType := "emailAddress"
	SetSignInType(&signInType)
issuer := "contoso.onmicrosoft.com"
	SetIssuer(&issuer)
issuerAssignedId := "jsmith@yahoo.com"
	SetIssuerAssignedId(&issuerAssignedId)
	msgraphsdk.NewObjectIdentity(),
signInType := "federated"
	SetSignInType(&signInType)
issuer := "facebook.com"
	SetIssuer(&issuer)
issuerAssignedId := "5eecb0cd"
	SetIssuerAssignedId(&issuerAssignedId)
}
passwordProfile := msgraphsdk.NewPasswordProfile()
requestBody.SetPasswordProfile(passwordProfile)
password := "password-value"
passwordProfile.SetPassword(&password)
forceChangePasswordNextSignIn := false
passwordProfile.SetForceChangePasswordNextSignIn(&forceChangePasswordNextSignIn)
passwordPolicies := "DisablePasswordExpiration"
requestBody.SetPasswordPolicies(&passwordPolicies)
result, err := graphClient.Users().Post(requestBody)


```