---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Security.Labels.RetentionLabels["{security.retentionLabel-id}"]
	.Request()
	.DeleteAsync();

```