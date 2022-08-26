---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var internalDomainFederation = await graphClient.Domains["{domain-id}"].FederationConfiguration["{internalDomainFederation-id}"]
	.Request()
	.GetAsync();

```