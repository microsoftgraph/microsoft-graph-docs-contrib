---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CrossTenantAccessPolicyConfigurationPartner crossTenantAccessPolicyConfigurationPartner = new CrossTenantAccessPolicyConfigurationPartner();
InboundOutboundPolicyConfiguration automaticUserConsentSettings = new InboundOutboundPolicyConfiguration();
automaticUserConsentSettings.inboundAllowed = true;
automaticUserConsentSettings.outboundAllowed = true;
crossTenantAccessPolicyConfigurationPartner.automaticUserConsentSettings = automaticUserConsentSettings;

graphClient.policies().crossTenantAccessPolicy().partners("90e29127-71ad-49c7-9ce8-db3f41ea06f1")
	.buildRequest()
	.patch(crossTenantAccessPolicyConfigurationPartner);

```