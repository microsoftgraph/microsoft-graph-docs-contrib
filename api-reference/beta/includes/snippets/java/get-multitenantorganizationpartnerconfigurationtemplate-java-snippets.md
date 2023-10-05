---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MultiTenantOrganizationPartnerConfigurationTemplate multiTenantOrganizationPartnerConfigurationTemplate = graphClient.policies().crossTenantAccessPolicy().templates().multiTenantOrganizationPartnerConfiguration()
	.buildRequest()
	.get();

```