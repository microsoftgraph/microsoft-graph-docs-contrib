---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Application
{
	DisplayName = "My application",
};
var result = await graphClient.Applications.PostAsync(requestBody);


```