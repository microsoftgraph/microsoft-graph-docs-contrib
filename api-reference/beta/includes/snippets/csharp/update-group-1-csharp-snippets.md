---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Group
{
	Description = "Contoso Life v2.0",
	DisplayName = "Contoso Life Renewed",
};
var result = await graphClient.Groups["{group-id}"].PatchAsync(requestBody);


```