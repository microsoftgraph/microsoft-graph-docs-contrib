---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Content auditEvent = graphClient.tenantRelationships().managedTenants().auditEvent()
	.buildRequest()
	.get();

```