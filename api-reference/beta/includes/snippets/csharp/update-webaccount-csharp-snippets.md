---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WebAccount
{
	WebUrl = "https://github.com/innocenty.popov",
};
var result = await graphClient.Me.Profile.WebAccounts["{webAccount-id}"].PatchAsync(requestBody);


```