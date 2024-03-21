---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new BusinessScenario
{
	OdataType = "#microsoft.graph.businessScenario",
	DisplayName = "Contoso Order Tracking",
	UniqueName = "com.contoso.apps.ordertracking",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BusinessScenarios.PostAsync(requestBody);


```