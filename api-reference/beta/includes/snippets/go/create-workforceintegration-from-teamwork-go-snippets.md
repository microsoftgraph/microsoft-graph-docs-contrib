---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

result, err := graphClient.Teamwork().WorkforceIntegrations().Post(context.Background(), requestBody, nil)


```