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
	SetAdditionalData(map[string]interface{}{
		"signInType": "userName",
		"issuer": "contoso.onmicrosoft.com",
		"issuerAssignedId": "johnsmith",
	}
	msgraphsdk.NewObjectIdentity(),
	SetAdditionalData(map[string]interface{}{
		"signInType": "emailAddress",
		"issuer": "contoso.onmicrosoft.com",
		"issuerAssignedId": "jsmith@yahoo.com",
	}
	msgraphsdk.NewObjectIdentity(),
	SetAdditionalData(map[string]interface{}{
		"signInType": "federated",
		"issuer": "facebook.com",
		"issuerAssignedId": "5eecb0cd",
	}
}
passwordProfile := msgraphsdk.NewPasswordProfile()
requestBody.SetPasswordProfile(passwordProfile)
password := "password-value"
passwordProfile.SetPassword(&password)
forceChangePasswordNextSignIn := false
passwordProfile.SetForceChangePasswordNextSignIn(&forceChangePasswordNextSignIn)
passwordPolicies := "DisablePasswordExpiration"
requestBody.SetPasswordPolicies(&passwordPolicies)
options := &msgraphsdk.UsersRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Users().Post(options)


```