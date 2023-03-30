---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

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