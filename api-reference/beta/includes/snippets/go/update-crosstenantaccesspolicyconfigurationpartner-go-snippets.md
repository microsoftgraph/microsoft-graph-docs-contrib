---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewCrossTenantAccessPolicyConfigurationPartner()
inboundTrust := msgraphsdk.NewCrossTenantAccessPolicyInboundTrust()
requestBody.SetInboundTrust(inboundTrust)
isMfaAccepted := true
inboundTrust.SetIsMfaAccepted(&isMfaAccepted)
isCompliantDeviceAccepted := true
inboundTrust.SetIsCompliantDeviceAccepted(&isCompliantDeviceAccepted)
isHybridAzureADJoinedDeviceAccepted := true
inboundTrust.SetIsHybridAzureADJoinedDeviceAccepted(&isHybridAzureADJoinedDeviceAccepted)
options := &msgraphsdk.CrossTenantAccessPolicyConfigurationPartnerRequestBuilderPatchOptions{
	Body: requestBody,
}
crossTenantAccessPolicyConfigurationPartnerTenantId := "crossTenantAccessPolicyConfigurationPartner-tenantId"
graphClient.Policies().CrossTenantAccessPolicy().PartnersById(&crossTenantAccessPolicyConfigurationPartnerTenantId).Patch(options)


```