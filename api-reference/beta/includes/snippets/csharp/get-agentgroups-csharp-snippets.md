---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agentGroups = await graphClient.OnPremisesPublishingProfiles["{onPremisesPublishingProfile-id}"].AgentGroups
	.Request()
	.Expand("agents,publishedResources")
	.GetAsync();

```