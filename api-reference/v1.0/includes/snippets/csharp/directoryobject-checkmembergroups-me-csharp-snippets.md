---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Me.CheckMemberGroups.CheckMemberGroupsPostRequestBody
{
	GroupIds = new List<string>
	{
		"fee2c45b-915a-4a64b130f4eb9e75525e",
		"4fe90ae065a-478b9400e0a0e1cbd540",
	},
};
var result = await graphClient.Me.CheckMemberGroups.PostAsync(requestBody);


```