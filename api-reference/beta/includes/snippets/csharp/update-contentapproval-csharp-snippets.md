---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.WindowsUpdates.ComplianceChange
{
	OdataType = "#microsoft.graph.windowsUpdates.contentApproval",
	IsRevoked = true,
};
var result = await graphClient.Admin.Windows.Updates.UpdatePolicies["{updatePolicy-id}"].ComplianceChanges["{complianceChange-id}"].PatchAsync(requestBody);


```