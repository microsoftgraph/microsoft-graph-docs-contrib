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
displayName := "Arkose Sign-Up Protection Updated"
requestBody.SetDisplayName(&displayName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
fraudProtectionProviders, err := graphClient.Identity().RiskPrevention().FraudProtectionProviders().ByFraudProtectionProviderId("fraudProtectionProvider-id").Patch(context.Background(), requestBody, nil)


```