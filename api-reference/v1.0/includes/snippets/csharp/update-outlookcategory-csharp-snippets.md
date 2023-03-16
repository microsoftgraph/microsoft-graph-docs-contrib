---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OutlookCategory
{
	Color = CategoryColor.Preset15,
};
var result = await graphClient.Me.Outlook.MasterCategories["{outlookCategory-id}"].PatchAsync(requestBody);


```