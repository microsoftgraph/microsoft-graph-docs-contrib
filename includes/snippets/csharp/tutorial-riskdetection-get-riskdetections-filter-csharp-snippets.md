---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskDetections = await graphClient.IdentityProtection.RiskDetections
	.Request()
	.Filter("userDisplayName eq 'MyTestUser1'")
	.GetAsync();

```