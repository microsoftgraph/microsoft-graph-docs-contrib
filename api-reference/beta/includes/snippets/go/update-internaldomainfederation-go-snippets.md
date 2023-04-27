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


requestBody := graphmodels.NewInternalDomainFederation()
displayName := "Contoso name change"
requestBody.SetDisplayName(&displayName) 
federatedIdpMfaBehavior := graphmodels.ACCEPTIFMFADONEBYFEDERATEDIDP_FEDERATEDIDPMFABEHAVIOR 
requestBody.SetFederatedIdpMfaBehavior(&federatedIdpMfaBehavior) 

result, err := graphClient.Domains().ByDomainId("domain-id").FederationConfiguration().ByFederationConfiguration().Id("internalDomainFederation-id").Patch(context.Background(), requestBody, nil)


```