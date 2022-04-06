---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalDomainName = new ExternalDomainName
{
	Id = "contososuites.com"
};

await graphClient.Directory.FederationConfigurations["{identityProviderBase-id}"].Domains
	.Request()
	.AddAsync(externalDomainName);

```