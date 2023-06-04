---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TenantAppManagementPolicy tenantAppManagementPolicy = graphClient.policies().defaultAppManagementPolicy()
	.buildRequest()
	.get();

```