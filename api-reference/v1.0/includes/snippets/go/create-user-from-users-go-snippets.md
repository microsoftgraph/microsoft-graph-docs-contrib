---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewUser()
accountEnabled := true
requestBody.SetAccountEnabled(&accountEnabled)
displayName := "Adele Vance"
requestBody.SetDisplayName(&displayName)
mailNickname := "AdeleV"
requestBody.SetMailNickname(&mailNickname)
userPrincipalName := "AdeleV@contoso.onmicrosoft.com"
requestBody.SetUserPrincipalName(&userPrincipalName)
passwordProfile := msgraphsdk.NewPasswordProfile()
requestBody.SetPasswordProfile(passwordProfile)
forceChangePasswordNextSignIn := true
passwordProfile.SetForceChangePasswordNextSignIn(&forceChangePasswordNextSignIn)
password := "xWwvJ]6NMw+bWH-d"
passwordProfile.SetPassword(&password)
options := &msgraphsdk.UsersRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Users().Post(options);


```