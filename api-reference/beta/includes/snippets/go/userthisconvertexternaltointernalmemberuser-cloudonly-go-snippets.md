---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphusers.NewConvertExternalToInternalMemberUserPostRequestBody()
userPrincipalName := "AdeleVance@contoso.com"
requestBody.SetUserPrincipalName(&userPrincipalName) 
passwordProfile := graphmodels.NewPasswordProfile()
password := "Zdi087#2jhkahf"
passwordProfile.SetPassword(&password) 
forceChangePasswordNextSignIn := true
passwordProfile.SetForceChangePasswordNextSignIn(&forceChangePasswordNextSignIn) 
requestBody.SetPasswordProfile(passwordProfile)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
convertExternalToInternalMemberUser, err := graphClient.Users().ByUserId("user-id").ConvertExternalToInternalMemberUser().Post(context.Background(), requestBody, nil)


```