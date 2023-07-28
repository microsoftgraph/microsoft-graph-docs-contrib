---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Team
{
	DisplayName = "My Class Team",
	Description = "My Class Team’s Description",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"template@odata.bind" , "https://graph.microsoft.com/beta/teamsTemplates('educationClass')"
		},
	},
};
var result = await graphClient.Teams.PostAsync(requestBody);


```