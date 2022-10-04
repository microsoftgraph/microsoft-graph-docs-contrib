---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var retentionLabels = await graphClient.Security.Labels.RetentionLabels
	.Request()
	.GetAsync();

```