---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WebAccount
{
	Description = "My Github contributions!",
	UserId = "innocenty.popov",
	Service = new ServiceInformation
	{
		Name = "GitHub",
		WebUrl = "https://github.com",
	},
};
var result = await graphClient.Me.Profile.WebAccounts.PostAsync(requestBody);


```