---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.ServicePrincipals.Item.AddTokenSigningCertificate.AddTokenSigningCertificatePostRequestBody
{
	DisplayName = "CN=customDisplayName",
	EndDateTime = DateTimeOffset.Parse("2024-01-25T00:00:00Z"),
};
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].AddTokenSigningCertificate.PostAsync(requestBody);


```