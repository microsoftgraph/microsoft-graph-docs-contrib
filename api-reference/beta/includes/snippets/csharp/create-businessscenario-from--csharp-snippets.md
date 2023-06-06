---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BusinessScenario
{
	OdataType = "#microsoft.graph.businessScenario",
	DisplayName = "Contoso Order Tracking",
	UniqueName = "com.contoso.apps.ordertracking",
};
var result = await graphClient.Solutions.BusinessScenarios.PostAsync(requestBody);


```