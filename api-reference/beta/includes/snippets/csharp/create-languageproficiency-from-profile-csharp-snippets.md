---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new LanguageProficiency
{
	DisplayName = "Norwegian Bokmål",
	Tag = "nb-NO",
	Spoken = LanguageProficiencyLevel.NativeOrBilingual,
	Written = LanguageProficiencyLevel.NativeOrBilingual,
	Reading = LanguageProficiencyLevel.NativeOrBilingual,
};
var result = await graphClient.Me.Profile.Languages.PostAsync(requestBody);


```