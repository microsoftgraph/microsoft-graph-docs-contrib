---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ItemEmail
{
	Address = "Innocenty.Popov@adventureworks.com",
};
var result = await graphClient.Me.Profile.Emails.PostAsync(requestBody);


```