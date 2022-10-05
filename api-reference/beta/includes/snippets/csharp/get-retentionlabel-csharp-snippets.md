---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var retentionLabel = await graphClient.Security.Labels.RetentionLabels["{security.retentionLabel-id}"]
	.Request()
	.GetAsync();

```