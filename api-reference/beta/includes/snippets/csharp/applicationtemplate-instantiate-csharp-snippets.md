---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var displayName = "testProperties";

await graphClient.ApplicationTemplates["{applicationTemplate-id}"]
	.Instantiate(displayName)
	.Request()
	.PostAsync();

```