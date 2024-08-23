---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CrossTenantAccessPolicyConfigurationPartner crossTenantAccessPolicyConfigurationPartner = new CrossTenantAccessPolicyConfigurationPartner();
CrossTenantAccessPolicyInboundTrust inboundTrust = new CrossTenantAccessPolicyInboundTrust();
inboundTrust.setIsMfaAccepted(true);
inboundTrust.setIsCompliantDeviceAccepted(true);
inboundTrust.setIsHybridAzureADJoinedDeviceAccepted(true);
crossTenantAccessPolicyConfigurationPartner.setInboundTrust(inboundTrust);
CrossTenantAccessPolicyConfigurationPartner result = graphClient.policies().crossTenantAccessPolicy().partners().byCrossTenantAccessPolicyConfigurationPartnerTenantId("{crossTenantAccessPolicyConfigurationPartner-tenantId}").patch(crossTenantAccessPolicyConfigurationPartner);


```