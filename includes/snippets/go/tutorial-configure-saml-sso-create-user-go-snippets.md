---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUser()
accountEnabled := true
requestBody.SetAccountEnabled(&accountEnabled) 
displayName := "MyTestUser1"
requestBody.SetDisplayName(&displayName) 
mailNickname := "MyTestUser1"
requestBody.SetMailNickname(&mailNickname) 
userPrincipalName := "MyTestUser1@contoso.com"
requestBody.SetUserPrincipalName(&userPrincipalName) 
passwordProfile := graphmodels.NewPasswordProfile()
forceChangePasswordNextSignIn := true
passwordProfile.SetForceChangePasswordNextSignIn(&forceChangePasswordNextSignIn) 
password := "Contoso1234"
passwordProfile.SetPassword(&password) 
requestBody.SetPasswordProfile(passwordProfile)

result, err := graphClient.Users().Post(context.Background(), requestBody, nil)


```