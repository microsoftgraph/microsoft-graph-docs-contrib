---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Groups.Item.Team.TeamPutRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"memberSettings" , new 
			{
				AllowCreateUpdateChannels = true,
			}
		},
		{
			"messagingSettings" , new 
			{
				AllowUserEditMessages = true,
				AllowUserDeleteMessages = true,
			}
		},
		{
			"funSettings" , new 
			{
				AllowGiphy = true,
				GiphyContentRating = "strict",
			}
		},
		{
			"discoverySettings" , new 
			{
				ShowInTeamsSearchAndSuggestions = true,
			}
		},
	},
};
await graphClient.Groups["{group-id}"].Team.PutAsync(requestBody);


```