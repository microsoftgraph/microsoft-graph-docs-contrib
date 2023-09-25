---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.tenantRelationships().multiTenantOrganization().tenants("5036a0a0-a7a4-4933-9086-5dd54535dd6e")
	.buildRequest()
	.delete();

```