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


requestBody := graphmodels.NewMultiTenantOrganizationPartnerConfigurationTemplate()
inboundTrust := graphmodels.NewCrossTenantAccessPolicyInboundTrust()
isMfaAccepted := true
inboundTrust.SetIsMfaAccepted(&isMfaAccepted) 
isCompliantDeviceAccepted := true
inboundTrust.SetIsCompliantDeviceAccepted(&isCompliantDeviceAccepted) 
isHybridAzureADJoinedDeviceAccepted := true
inboundTrust.SetIsHybridAzureADJoinedDeviceAccepted(&isHybridAzureADJoinedDeviceAccepted) 
requestBody.SetInboundTrust(inboundTrust)
automaticUserConsentSettings := graphmodels.NewInboundOutboundPolicyConfiguration()
inboundAllowed := true
automaticUserConsentSettings.SetInboundAllowed(&inboundAllowed) 
outboundAllowed := true
automaticUserConsentSettings.SetOutboundAllowed(&outboundAllowed) 
requestBody.SetAutomaticUserConsentSettings(automaticUserConsentSettings)
templateApplicationLevel := graphmodels.NEWPARTNERS,EXISTINGPARTNERS_TEMPLATEAPPLICATIONLEVEL 
requestBody.SetTemplateApplicationLevel(&templateApplicationLevel) 

multiTenantOrganizationPartnerConfiguration, err := graphClient.Policies().CrossTenantAccessPolicy().Templates().MultiTenantOrganizationPartnerConfiguration().Patch(context.Background(), requestBody, nil)


```