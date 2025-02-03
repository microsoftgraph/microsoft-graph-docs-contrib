---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CrossTenantAccessPolicyConfigurationPartner crossTenantAccessPolicyConfigurationPartner = new CrossTenantAccessPolicyConfigurationPartner();
InboundOutboundPolicyConfiguration automaticUserConsentSettings = new InboundOutboundPolicyConfiguration();
automaticUserConsentSettings.setInboundAllowed(true);
automaticUserConsentSettings.setOutboundAllowed(true);
crossTenantAccessPolicyConfigurationPartner.setAutomaticUserConsentSettings(automaticUserConsentSettings);
CrossTenantAccessPolicyConfigurationPartner result = graphClient.policies().crossTenantAccessPolicy().partners().byCrossTenantAccessPolicyConfigurationPartnerTenantId("{crossTenantAccessPolicyConfigurationPartner-tenantId}").patch(crossTenantAccessPolicyConfigurationPartner);


```