---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipalRiskDetection = await graphClient.IdentityProtection.ServicePrincipalRiskDetections["{servicePrincipalRiskDetection-id}"]
	.Request()
	.GetAsync();

```