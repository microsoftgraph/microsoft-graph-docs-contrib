---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewIdentityProviderBase()
displayName := "Sign in with Apple"
requestBody.SetDisplayName(&displayName) 
developerId := "UBF8T346G9"
requestBody.SetDeveloperId(&developerId) 
serviceId := "com.microsoft.rts.b2c.test.client"
requestBody.SetServiceId(&serviceId) 
keyId := "99P6D879C4"
requestBody.SetKeyId(&keyId) 
certificateData := "******"
requestBody.SetCertificateData(&certificateData) 

result, err := graphClient.Identity().IdentityProviders().Post(context.Background(), requestBody, nil)


```