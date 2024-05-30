---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
identityProviders, err := graphClient.Identity().IdentityProviders().Post(context.Background(), requestBody, nil)


```