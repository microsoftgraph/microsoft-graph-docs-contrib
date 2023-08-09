---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CrossTenantAccessPolicyConfigurationPartnerCollectionPage partners = graphClient.policies().crossTenantAccessPolicy().partners()
	.buildRequest()
	.expand("identitySynchronization")
	.select("tenantId")
	.get();

```