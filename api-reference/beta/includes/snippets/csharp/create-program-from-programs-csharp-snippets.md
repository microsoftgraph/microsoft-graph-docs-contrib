---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Program
{
	DisplayName = "testprogram3",
	Description = "test description",
};
var result = await graphClient.Programs.PostAsync(requestBody);


```