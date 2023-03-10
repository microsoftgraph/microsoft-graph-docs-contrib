---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewInternalDomainFederation()
displayName := "Contoso name change"
requestBody.SetDisplayName(&displayName) 
federatedIdpMfaBehavior := graphmodels.ACCEPTIFMFADONEBYFEDERATEDIDP_FEDERATEDIDPMFABEHAVIOR 
requestBody.SetFederatedIdpMfaBehavior(&federatedIdpMfaBehavior) 

result, err := graphClient.DomainsById("domain-id").FederationConfigurationById("internalDomainFederation-id").Patch(context.Background(), requestBody, nil)


```