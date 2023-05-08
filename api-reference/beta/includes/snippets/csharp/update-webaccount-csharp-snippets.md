---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WebAccount
{
	WebUrl = "https://github.com/innocenty.popov",
};
var result = await graphClient.Me.Profile.WebAccounts["{webAccount-id}"].PatchAsync(requestBody);


```