---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CrossTenantAccessPolicyConfigurationPartner crossTenantAccessPolicyConfigurationPartner = new CrossTenantAccessPolicyConfigurationPartner();
CrossTenantAccessPolicyInboundTrust inboundTrust = new CrossTenantAccessPolicyInboundTrust();
inboundTrust.isMfaAccepted = true;
inboundTrust.isCompliantDeviceAccepted = true;
inboundTrust.isHybridAzureADJoinedDeviceAccepted = true;
crossTenantAccessPolicyConfigurationPartner.inboundTrust = inboundTrust;

graphClient.policies().crossTenantAccessPolicy().partners("90e29127-71ad-49c7-9ce8-db3f41ea06f1")
	.buildRequest()
	.patch(crossTenantAccessPolicyConfigurationPartner);

```