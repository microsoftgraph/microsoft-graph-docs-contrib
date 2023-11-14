---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MultiTenantOrganizationIdentitySyncPolicyTemplate multiTenantOrganizationIdentitySyncPolicyTemplate = graphClient.policies().crossTenantAccessPolicy().templates().multiTenantOrganizationIdentitySynchronization()
	.buildRequest()
	.get();

```