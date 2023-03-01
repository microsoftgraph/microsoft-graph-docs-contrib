---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.AdministrativeUnits.Item.Members.MembersPostRequestBody
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
await graphClient.AdministrativeUnits["{administrativeUnit-id}"].Members.PostAsync(requestBody);


```