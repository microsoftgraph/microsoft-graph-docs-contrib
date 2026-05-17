---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new PlannerTaskChatMessage
{
	Content = "<div><span itemid=\"0\" itemtype=\"https://schema.skype.com/Mention/Person\"></span> Please review this task</div>",
	Mentions = new List<PlannerTaskChatMention>
	{
		new PlannerTaskChatMention
		{
			Mentioned = "6463a5ce-2119-4198-9f2a-628761df4a62",
			Position = 0,
			MentionType = PlannerTaskChatMentionType.User,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Planner.Tasks["{plannerTask-id}"].Messages.PostAsync(requestBody);


```