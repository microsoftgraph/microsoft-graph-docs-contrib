---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var displayName = "Contoso IWA App";

await graphClient.ApplicationTemplates["{applicationTemplate-id}"]
	.Instantiate(displayName)
	.Request()
	.PostAsync();

```