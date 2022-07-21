---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CrossTenantAccessPolicy crossTenantAccessPolicy = new CrossTenantAccessPolicy();
crossTenantAccessPolicy.displayName = "CrossTenantAccessPolicy";

graphClient.policies().crossTenantAccessPolicy()
	.buildRequest()
	.patch(crossTenantAccessPolicy);

```