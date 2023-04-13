---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Groups.Item.AssignLicense.AssignLicensePostRequestBody
{
	AddLicenses = new List<AssignedLicense>
	{
	},
	RemoveLicenses = new List<C7df2760-2c81-4ef7-b578-5b5392b571df>
	{
		Guid.Parse("c7df2760-2c81-4ef7-b578-5b5392b571df"),
		Guid.Parse("b05e124f-c7cc-45a0-a6aa-8cf78c946968"),
	},
};
var result = await graphClient.Groups["{group-id}"].AssignLicense.PostAsync(requestBody);


```