---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Group
{
	Description = "Marketing group",
	DisplayName = "Marketing resources",
	MailEnabled = false,
	MailNickname = "markres",
	SecurityEnabled = true,
};
var result = await graphClient.Groups.PostAsync(requestBody);


```