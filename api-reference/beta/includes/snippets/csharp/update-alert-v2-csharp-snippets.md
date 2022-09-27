---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var alert = new Microsoft.Graph.Security.Alert
{
	AssignedTo = "secAdmin@contoso.onmicrosoft.com",
	Classification = Microsoft.Graph.Security.AlertClassification.TruePositive,
	Determination = Microsoft.Graph.Security.AlertDetermination.Malware,
	Status = Microsoft.Graph.Security.AlertStatus.InProgress
};

await graphClient.Security.Alerts_v2["{security.alert-id}"]
	.Request()
	.UpdateAsync(alert);

```