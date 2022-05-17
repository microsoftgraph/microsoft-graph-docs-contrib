---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CrossTenantAccessPolicyConfigurationDefault crossTenantAccessPolicyConfigurationDefault = graphClient.policies().crossTenantAccessPolicy().default()
	.buildRequest()
	.get();

```