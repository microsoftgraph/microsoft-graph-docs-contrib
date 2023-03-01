---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.DirectoryNamespace.AdministrativeUnits.Item.Members.MembersPostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.type" , "#microsoft.graph.group"
		},
		{
			"description" , "Self help community for golf"
		},
		{
			"displayName" , "Golf Assist"
		},
		{
			"groupTypes" , new List<string>
			{
				"Unified",
			}
		},
		{
			"mailEnabled" , true
		},
		{
			"mailNickname" , "golfassist"
		},
		{
			"securityEnabled" , false
		},
	},
};
await graphClient.Directory.AdministrativeUnits["{administrativeUnit-id}"].Members.PostAsync(requestBody);


```