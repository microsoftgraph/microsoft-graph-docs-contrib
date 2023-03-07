---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OnPremisesAgentGroup
{
	DisplayName = "Group New Name",
};
var result = await graphClient.OnPremisesPublishingProfiles["{onPremisesPublishingProfile-id}"].AgentGroups["{onPremisesAgentGroup-id}"].PatchAsync(requestBody);


```