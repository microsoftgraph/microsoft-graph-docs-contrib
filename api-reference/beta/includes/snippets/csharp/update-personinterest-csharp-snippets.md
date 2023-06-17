---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PersonInterest
{
	Categories = new List<string>
	{
		"Sports",
	},
};
var result = await graphClient.Me.Profile.Interests["{personInterest-id}"].PatchAsync(requestBody);


```