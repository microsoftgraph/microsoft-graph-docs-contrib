---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Admin.Windows.Updates.Deployments.Item.Audience.WindowsUpdatesUpdateAudienceById.UpdateAudienceByIdPostRequestBody
{
	MemberEntityType = "String",
	AddMembers = new List<string>
	{
		"String",
	},
	RemoveMembers = new List<string>
	{
		"String",
	},
	AddExclusions = new List<string>
	{
		"String",
	},
	RemoveExclusions = new List<string>
	{
		"String",
	},
};
await graphClient.Admin.Windows.Updates.Deployments["{deployment-id}"].Audience.WindowsUpdatesUpdateAudienceById.PostAsync(requestBody);


```