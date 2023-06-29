---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AadUserConversationMember
{
	OdataType = "#microsoft.graph.aadUserConversationMember",
	Roles = new List<string>
	{
		"owner",
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"user@odata.bind" , "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')"
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Members.PostAsync(requestBody);


```