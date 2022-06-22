---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Content tenantUsage = graphClient.tenantRelationships().managedTenants().tenantUsage()
	.buildRequest()
	.get();

```