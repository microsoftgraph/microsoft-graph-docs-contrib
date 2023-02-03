---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCrossTenantAccessPolicyConfigurationPartner()
automaticUserConsentSettings := graphmodels.NewInboundOutboundPolicyConfiguration()
inboundAllowed := true
automaticUserConsentSettings.SetInboundAllowed(&inboundAllowed) 
outboundAllowed := true
automaticUserConsentSettings.SetOutboundAllowed(&outboundAllowed) 
requestBody.SetAutomaticUserConsentSettings(automaticUserConsentSettings)

result, err := graphClient.Policies().CrossTenantAccessPolicy().PartnersById("crossTenantAccessPolicyConfigurationPartner-tenantId").Patch(context.Background(), requestBody, nil)


```