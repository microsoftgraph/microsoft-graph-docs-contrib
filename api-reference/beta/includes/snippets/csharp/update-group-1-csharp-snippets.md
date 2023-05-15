---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Group
{
	Description = "Contoso Life v2.0",
	DisplayName = "Contoso Life Renewed",
};
var result = await graphClient.Groups["{group-id}"].PatchAsync(requestBody);


```