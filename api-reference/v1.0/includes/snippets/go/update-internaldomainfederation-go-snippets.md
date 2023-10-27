---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewInternalDomainFederation()
displayName := "Contoso name change"
requestBody.SetDisplayName(&displayName) 
federatedIdpMfaBehavior := graphmodels.ACCEPTIFMFADONEBYFEDERATEDIDP_FEDERATEDIDPMFABEHAVIOR 
requestBody.SetFederatedIdpMfaBehavior(&federatedIdpMfaBehavior) 

federationConfiguration, err := graphClient.Domains().ByDomainId("domain-id").FederationConfiguration().ByInternalDomainFederationId("internalDomainFederation-id").Patch(context.Background(), requestBody, nil)


```