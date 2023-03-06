---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PersonInterest
{
	Categories = new List<string>
	{
		"Sports",
	},
	Description = "World's greatest football club",
	DisplayName = "Chelsea FC",
	WebUrl = "https://www.chelseafc.com",
};
var result = await graphClient.Me.Profile.Interests.PostAsync(requestBody);


```