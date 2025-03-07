---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewWorkforceIntegration()
displayName := "ABCWorkforceIntegration"
requestBody.SetDisplayName(&displayName) 
apiVersion := int32(1)
requestBody.SetApiVersion(&apiVersion) 
isActive := true
requestBody.SetIsActive(&isActive) 
encryption := graphmodels.NewWorkforceIntegrationEncryption()
protocol := graphmodels.SHAREDSECRET_WORKFORCEINTEGRATIONENCRYPTIONPROTOCOL 
encryption.SetProtocol(&protocol) 
secret := "My Secret"
encryption.SetSecret(&secret) 
requestBody.SetEncryption(encryption)
url := "https://ABCWorkforceIntegration.com/Contoso/"
requestBody.SetUrl(&url) 
supportedEntities := graphmodels.SHIFT,SWAPREQUEST_WORKFORCEINTEGRATIONSUPPORTEDENTITIES 
requestBody.SetSupportedEntities(&supportedEntities) 
eligibilityFilteringEnabledEntities := graphmodels.SWAPREQUEST_ELIGIBILITYFILTERINGENABLEDENTITIES 
requestBody.SetEligibilityFilteringEnabledEntities(&eligibilityFilteringEnabledEntities) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
workforceIntegrations, err := graphClient.Teamwork().WorkforceIntegrations().Post(context.Background(), requestBody, nil)


```