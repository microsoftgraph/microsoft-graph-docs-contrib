---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Group
{
	Description = "Self help community for library",
	DisplayName = "Library Assist",
	GroupTypes = new List<string>
	{
		"Unified",
	},
	MailEnabled = true,
	MailNickname = "library",
	SecurityEnabled = false,
};
var result = await graphClient.Groups.PostAsync(requestBody);


```