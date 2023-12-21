---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

users, err := graphClient.Users().Post(context.Background(), requestBody, nil)


```