---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewConvertExternalToInternalMemberUserPostRequestBody()
userPrincipalName := "AdeleVance@contoso.com"
requestBody.SetUserPrincipalName(&userPrincipalName) 
passwordProfile := graphmodels.NewPasswordProfile()
password := "Zdi087#2jhkahf"
passwordProfile.SetPassword(&password) 
forceChangePasswordNextSignIn := true
passwordProfile.SetForceChangePasswordNextSignIn(&forceChangePasswordNextSignIn) 
requestBody.SetPasswordProfile(passwordProfile)
mail := "AdeleV@contoso.com"
requestBody.SetMail(&mail) 

convertExternalToInternalMemberUser, err := graphClient.Users().ByUserId("user-id").ConvertExternalToInternalMemberUser().Post(context.Background(), requestBody, nil)


```