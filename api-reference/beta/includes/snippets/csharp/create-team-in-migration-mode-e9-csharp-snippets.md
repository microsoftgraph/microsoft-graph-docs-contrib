---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Team
{
	DisplayName = "My Sample Team",
	Description = "My Sample Team’s Description",
	CreatedDateTime = DateTimeOffset.Parse("2020-03-14T11:22:17.067Z"),
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@microsoft.graph.teamCreationMode" , "migration"
		},
		{
			"template@odata.bind" , "https://graph.microsoft.com/beta/teamsTemplates('standard')"
		},
	},
};
var result = await graphClient.Teams.PostAsync(requestBody);


```