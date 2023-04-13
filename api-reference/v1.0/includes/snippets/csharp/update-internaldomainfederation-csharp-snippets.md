---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var internalDomainFederation = new InternalDomainFederation
{
	DisplayName = "Contoso name change",
	FederatedIdpMfaBehavior = FederatedIdpMfaBehavior.AcceptIfMfaDoneByFederatedIdp
};

await graphClient.Domains["{domain-id}"].FederationConfiguration["{internalDomainFederation-id}"]
	.Request()
	.UpdateAsync(internalDomainFederation);

```