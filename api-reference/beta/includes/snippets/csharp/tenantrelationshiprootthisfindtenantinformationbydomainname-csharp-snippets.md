---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenantInformation = await graphClient.TenantRelationships
	.FindTenantInformationByDomainName("contoso.com")
	.Request()
	.GetAsync();

```