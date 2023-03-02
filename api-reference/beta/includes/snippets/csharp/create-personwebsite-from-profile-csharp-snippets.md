---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PersonWebsite
{
	Categories = new List<string>
	{
		"football",
	},
	DisplayName = "Lyn Damer",
	WebUrl = "www.lyndamer.no",
};
var result = await graphClient.Me.Profile.Websites.PostAsync(requestBody);


```