---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var samlOrWsFedExternalDomainFederation = await graphClient.Directory.FederationConfigurations
	.Request()
	.GetAsync();

```