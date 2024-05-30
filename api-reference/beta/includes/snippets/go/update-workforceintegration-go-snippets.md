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

requestBody := graphmodels.NewWorkforceIntegration()
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName) 
apiVersion := int32(99)
requestBody.SetApiVersion(&apiVersion) 
encryption := graphmodels.NewWorkforceIntegrationEncryption()
protocol := graphmodels.PROTOCOL-VALUE_WORKFORCEINTEGRATIONENCRYPTIONPROTOCOL 
encryption.SetProtocol(&protocol) 
secret := "secret-value"
encryption.SetSecret(&secret) 
requestBody.SetEncryption(encryption)
isActive := true
requestBody.SetIsActive(&isActive) 
url := "url-value"
requestBody.SetUrl(&url) 
supports := graphmodels.SUPPORTS-VALUE_WORKFORCEINTEGRATIONSUPPORTEDENTITIES 
requestBody.SetSupports(&supports) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
workforceIntegrations, err := graphClient.Teamwork().WorkforceIntegrations().ByWorkforceIntegrationId("workforceIntegration-id").Patch(context.Background(), requestBody, nil)


```