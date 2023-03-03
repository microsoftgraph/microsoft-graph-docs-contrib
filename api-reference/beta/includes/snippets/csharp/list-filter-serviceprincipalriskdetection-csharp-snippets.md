---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityProtection.ServicePrincipalRiskDetections.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "riskEventType eq 'investigationsThreatIntelligence' or riskLevel eq 'medium'";
});


```