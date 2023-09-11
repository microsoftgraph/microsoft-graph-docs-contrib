---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PersonName
{
	DisplayName = "Innocenty Popov",
	First = "Innocenty",
	Initials = "IP",
	Last = "Popov",
	LanguageTag = "en-US",
	Maiden = null,
};
var result = await graphClient.Me.Profile.Names.PostAsync(requestBody);


```