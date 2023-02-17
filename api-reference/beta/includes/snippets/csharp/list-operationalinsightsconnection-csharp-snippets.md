---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var operationalInsightsConnection = await graphClient.Admin.Windows.Updates.ResourceConnections
	.Request()
	.GetAsync();

```