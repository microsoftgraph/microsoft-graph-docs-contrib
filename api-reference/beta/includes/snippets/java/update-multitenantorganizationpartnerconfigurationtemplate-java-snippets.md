---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MultiTenantOrganizationPartnerConfigurationTemplate multiTenantOrganizationPartnerConfigurationTemplate = new MultiTenantOrganizationPartnerConfigurationTemplate();
CrossTenantAccessPolicyInboundTrust inboundTrust = new CrossTenantAccessPolicyInboundTrust();
inboundTrust.isMfaAccepted = true;
inboundTrust.isCompliantDeviceAccepted = true;
inboundTrust.isHybridAzureADJoinedDeviceAccepted = true;
multiTenantOrganizationPartnerConfigurationTemplate.inboundTrust = inboundTrust;
InboundOutboundPolicyConfiguration automaticUserConsentSettings = new InboundOutboundPolicyConfiguration();
automaticUserConsentSettings.inboundAllowed = true;
automaticUserConsentSettings.outboundAllowed = true;
multiTenantOrganizationPartnerConfigurationTemplate.automaticUserConsentSettings = automaticUserConsentSettings;
multiTenantOrganizationPartnerConfigurationTemplate.templateApplicationLevel = EnumSet.of(TemplateApplicationLevel.NEW_PARTNERS,TemplateApplicationLevel.EXISTING_PARTNERS);

graphClient.policies().crossTenantAccessPolicy().templates().multiTenantOrganizationPartnerConfiguration()
	.buildRequest()
	.patch(multiTenantOrganizationPartnerConfigurationTemplate);

```