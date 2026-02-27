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

requestBody := graphmodels.NewFraudProtectionProvider()
displayName := "Arkose Sign-Up Protection"
requestBody.SetDisplayName(&displayName) 
publicKey := "A1EE42E0-C88B-47FE-A176-5E9FB8F116FB"
requestBody.SetPublicKey(&publicKey) 
privateKey := "19BBE628-7DEF-4E28-AB25-BF129C760B7E"
requestBody.SetPrivateKey(&privateKey) 
clientSubDomain := "client-api"
requestBody.SetClientSubDomain(&clientSubDomain) 
verifySubDomain := "verify-api"
requestBody.SetVerifySubDomain(&verifySubDomain) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
fraudProtectionProviders, err := graphClient.Identity().RiskPrevention().FraudProtectionProviders().Post(context.Background(), requestBody, nil)


```