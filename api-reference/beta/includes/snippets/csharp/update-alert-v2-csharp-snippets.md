---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.Alert
{
	AssignedTo = "secAdmin@contoso.onmicrosoft.com",
	Classification = Microsoft.Graph.Beta.Models.Security.AlertClassification.TruePositive,
	Determination = Microsoft.Graph.Beta.Models.Security.AlertDetermination.Malware,
	Status = Microsoft.Graph.Beta.Models.Security.AlertStatus.InProgress,
};
var result = await graphClient.Security.Alerts_v2["{alert-id}"].PatchAsync(requestBody);


```