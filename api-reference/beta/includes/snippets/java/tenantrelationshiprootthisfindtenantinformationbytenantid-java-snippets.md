---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TenantInformation tenantInformation = graphClient.tenantRelationships()
	.findTenantInformationByTenantId(TenantRelationshipFindTenantInformationByTenantIdParameterSet
		.newBuilder()
		.withTenantId("6babcaad-604b-40ac-a9d7-9fd97c0b779f")
		.build())
	.buildRequest()
	.get();

```