---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.WindowsUpdates.ComplianceChange
{
	OdataType = "#microsoft.graph.windowsUpdates.complianceChange",
	IsRevoked = true,
};
var result = await graphClient.Admin.Windows.Updates.UpdatePolicies["{updatePolicy-id}"].ComplianceChanges["{complianceChange-id}"].PatchAsync(requestBody);


```