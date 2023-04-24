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
accountEnabled := true
requestBody.SetAccountEnabled(&accountEnabled) 
displayName := "Adele Vance"
requestBody.SetDisplayName(&displayName) 
mailNickname := "AdeleV"
requestBody.SetMailNickname(&mailNickname) 
userPrincipalName := "AdeleV@contoso.com"
requestBody.SetUserPrincipalName(&userPrincipalName) 
passwordProfile := graphmodels.NewPasswordProfile()
forceChangePasswordNextSignIn := false
passwordProfile.SetForceChangePasswordNextSignIn(&forceChangePasswordNextSignIn) 
password := "xWwvJ]6NMw+bWH-d"
passwordProfile.SetPassword(&password) 
requestBody.SetPasswordProfile(passwordProfile)
additionalData := map[string]interface{}{
	"extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker" : "JobGroupN", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Users().Post(context.Background(), requestBody, nil)


```