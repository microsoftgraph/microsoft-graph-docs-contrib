---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Teamwork.TeamTemplates["{teamTemplate-id}"].Definitions["{teamTemplateDefinition-id}"].TeamDefinition.GetAsync();


```