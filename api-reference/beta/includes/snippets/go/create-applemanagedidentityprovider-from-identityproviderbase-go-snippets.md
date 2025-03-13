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
displayName := "Apple"
requestBody.SetDisplayName(&displayName) 
developerId := "qazx.1234"
requestBody.SetDeveloperId(&developerId) 
serviceId := "com.contoso.app"
requestBody.SetServiceId(&serviceId) 
keyId := "4294967296"
requestBody.SetKeyId(&keyId) 
certificateData := "******"
requestBody.SetCertificateData(&certificateData) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
identityProviders, err := graphClient.Identity().IdentityProviders().Post(context.Background(), requestBody, nil)


```