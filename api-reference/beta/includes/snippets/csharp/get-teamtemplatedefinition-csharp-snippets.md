---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamTemplateDefinition = await graphClient.Teamwork.TeamTemplates["{teamTemplate-id}"].Definitions["{teamTemplateDefinition-id}"]
	.Request()
	.GetAsync();

```