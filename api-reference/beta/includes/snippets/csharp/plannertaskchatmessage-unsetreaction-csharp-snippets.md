---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Planner.Tasks.Item.Messages.Item.UnsetReaction;

var requestBody = new UnsetReactionPostRequestBody
{
	ReactionType = "like",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Planner.Tasks["{plannerTask-id}"].Messages["{plannerTaskChatMessage-id}"].UnsetReaction.PostAsync(requestBody);


```