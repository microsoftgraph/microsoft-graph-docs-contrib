---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipalRiskDetections = await graphClient.IdentityProtection.ServicePrincipalRiskDetections
	.Request()
	.GetAsync();

```