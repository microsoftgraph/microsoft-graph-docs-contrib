---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new LanguageProficiency
{
	AllowedAudiences = AllowedAudiences.Organization,
};
var result = await graphClient.Me.Profile.Languages["{languageProficiency-id}"].PatchAsync(requestBody);


```