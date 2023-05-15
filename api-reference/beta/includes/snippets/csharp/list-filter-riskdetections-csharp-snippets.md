---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityProtection.RiskDetections.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "riskEventType eq 'unfamiliarFeatures' or riskLevel eq 'medium'";
});


```