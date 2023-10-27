---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.OnPremisesPublishingProfiles["{onPremisesPublishingProfile-id}"].AgentGroups.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Expand = new string []{ "agents","publishedResources" };
});


```