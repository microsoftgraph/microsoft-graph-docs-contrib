---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewInternalDomainFederation()
displayName := "Contoso name change"
requestBody.SetDisplayName(&displayName)
federatedIdpMfaBehavior := "acceptIfMfaDoneByFederatedIdp"
requestBody.SetFederatedIdpMfaBehavior(&federatedIdpMfaBehavior)
domainId := "domain-id"
internalDomainFederationId := "internalDomainFederation-id"
graphClient.DomainsById(&domainId).FederationConfigurationById(&internalDomainFederationId).Patch(requestBody)


```