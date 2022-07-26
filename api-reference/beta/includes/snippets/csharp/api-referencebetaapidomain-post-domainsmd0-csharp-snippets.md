---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var domain = new Domain
{
	Id = "contoso.com"
};

await graphClient.Domains
	.Request()
	.AddAsync(domain);

```