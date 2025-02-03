---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MultiTenantOrganizationPartnerConfigurationTemplate multiTenantOrganizationPartnerConfigurationTemplate = new MultiTenantOrganizationPartnerConfigurationTemplate();
CrossTenantAccessPolicyInboundTrust inboundTrust = new CrossTenantAccessPolicyInboundTrust();
inboundTrust.setIsMfaAccepted(true);
inboundTrust.setIsCompliantDeviceAccepted(true);
inboundTrust.setIsHybridAzureADJoinedDeviceAccepted(true);
multiTenantOrganizationPartnerConfigurationTemplate.setInboundTrust(inboundTrust);
InboundOutboundPolicyConfiguration automaticUserConsentSettings = new InboundOutboundPolicyConfiguration();
automaticUserConsentSettings.setInboundAllowed(true);
automaticUserConsentSettings.setOutboundAllowed(true);
multiTenantOrganizationPartnerConfigurationTemplate.setAutomaticUserConsentSettings(automaticUserConsentSettings);
multiTenantOrganizationPartnerConfigurationTemplate.setTemplateApplicationLevel(EnumSet.of(TemplateApplicationLevel.NewPartners, TemplateApplicationLevel.ExistingPartners));
MultiTenantOrganizationPartnerConfigurationTemplate result = graphClient.policies().crossTenantAccessPolicy().templates().multiTenantOrganizationPartnerConfiguration().patch(multiTenantOrganizationPartnerConfigurationTemplate);


```