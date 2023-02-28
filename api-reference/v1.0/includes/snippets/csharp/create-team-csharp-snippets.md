---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Groups.Item.Team.TeamPutRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"memberSettings" , new 
			{
				AllowCreatePrivateChannels = true,
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
	},
};
await graphClient.Groups["group-id"].Team.PutAsync(requestBody);


```