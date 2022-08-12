---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var team = await graphClient.Teamwork.TeamTemplates["{teamTemplate-id}"].Definitions["{teamTemplateDefinition-id}"].TeamDefinition
	.Request()
	.GetAsync();

```