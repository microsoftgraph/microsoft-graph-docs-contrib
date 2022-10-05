---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TenantInformation tenantInformation = graphClient.tenantRelationships()
	.findTenantInformationByDomainName(TenantRelationshipFindTenantInformationByDomainNameParameterSet
		.newBuilder()
		.withDomainName("contoso.com")
		.build())
	.buildRequest()
	.get();

```