---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new InternalDomainFederation
{
	DisplayName = "Contoso name change",
	FederatedIdpMfaBehavior = FederatedIdpMfaBehavior.AcceptIfMfaDoneByFederatedIdp,
};
var result = await graphClient.Domains["{domain-id}"].FederationConfiguration["{internalDomainFederation-id}"].PatchAsync(requestBody);


```