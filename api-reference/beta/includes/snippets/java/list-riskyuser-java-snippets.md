---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Content riskyUsers = graphClient.tenantRelationships().managedTenants().riskyUsers()
	.buildRequest()
	.get();

```