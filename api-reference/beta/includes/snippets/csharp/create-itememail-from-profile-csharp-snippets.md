---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ItemEmail
{
	Address = "Innocenty.Popov@adventureworks.com",
};
var result = await graphClient.Me.Profile.Emails.PostAsync(requestBody);


```