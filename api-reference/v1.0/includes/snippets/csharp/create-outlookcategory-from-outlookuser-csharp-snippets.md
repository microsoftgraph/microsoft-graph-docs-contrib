---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OutlookCategory
{
	DisplayName = "Project expenses",
	Color = CategoryColor.Preset9,
};
var result = await graphClient.Me.Outlook.MasterCategories.PostAsync(requestBody);


```