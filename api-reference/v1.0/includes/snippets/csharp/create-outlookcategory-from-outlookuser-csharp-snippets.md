---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OutlookCategory
{
	DisplayName = "Project expenses",
	Color = CategoryColor.Preset9,
};
var result = await graphClient.Me.Outlook.MasterCategories.PostAsync(requestBody);


```