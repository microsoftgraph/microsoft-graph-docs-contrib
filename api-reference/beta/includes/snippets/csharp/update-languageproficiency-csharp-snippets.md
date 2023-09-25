---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new LanguageProficiency
{
	AllowedAudiences = AllowedAudiences.Organization,
};
var result = await graphClient.Me.Profile.Languages["{languageProficiency-id}"].PatchAsync(requestBody);


```