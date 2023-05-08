---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AdminReportSettings
{
	DisplayConcealedNames = true,
};
var result = await graphClient.Admin.ReportSettings.PatchAsync(requestBody);


```