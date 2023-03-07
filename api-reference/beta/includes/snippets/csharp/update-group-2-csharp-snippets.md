---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Group
{
	AssignedLabels = new List<AssignedLabel>
	{
		new AssignedLabel
		{
			LabelId = "45cd0c48-c540-4358-ad79-a3658cdc5b88",
		},
	},
};
var result = await graphClient.Groups["{group-id}"].PatchAsync(requestBody);


```