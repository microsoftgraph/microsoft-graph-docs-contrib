---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onPremisesDirectorySynchronization = await graphClient.Directory.OnPremisesSynchronization["{onPremisesDirectorySynchronization-id}"]
	.Request()
	.GetAsync();

```