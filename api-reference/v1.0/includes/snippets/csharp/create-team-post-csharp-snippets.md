---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Team
{
	DisplayName = "My Sample Team",
	Description = "My Sample Team’s Description",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"template@odata.bind" , "https://graph.microsoft.com/v1.0/teamsTemplates('standard')"
		},
	},
};
var result = await graphClient.Teams.PostAsync(requestBody);


```