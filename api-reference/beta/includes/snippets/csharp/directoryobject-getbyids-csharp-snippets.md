---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DirectoryObjects.GetByIds.GetByIdsPostRequestBody
{
	Ids = new List<string>
	{
		"84b80893-8749-40a3-97b7-68513b600544",
		"5d6059b6-368d-45f8-91e1-8e07d485f1d0",
		"0b944de3-e0fc-4774-a49a-b135213725ef",
		"b75a5ab2-fe55-4463-bd31-d21ad555c6e0",
	},
	Types = new List<string>
	{
		"user",
		"group",
		"device",
	},
};
var result = await graphClient.DirectoryObjects.GetByIds.PostAsync(requestBody);


```