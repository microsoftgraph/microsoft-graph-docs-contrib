---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BusinessScenario
{
	OdataType = "#microsoft.graph.businessScenario",
	DisplayName = "Contoso Order Tracking",
	UniqueName = "com.contoso.apps.ordertracking",
};
var result = await graphClient.Solutions.BusinessScenarios.PostAsync(requestBody);


```