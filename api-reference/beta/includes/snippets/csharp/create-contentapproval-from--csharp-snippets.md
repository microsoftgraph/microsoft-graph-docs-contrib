---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.WindowsUpdates.ContentApproval
{
	OdataType = "#microsoft.graph.windowsUpdates.contentApproval",
	Content = new Microsoft.Graph.Beta.Models.WindowsUpdates.CatalogContent
	{
		OdataType = "#microsoft.graph.windowsUpdates.catalogContent",
		CatalogEntry = new Microsoft.Graph.Beta.Models.WindowsUpdates.FeatureUpdateCatalogEntry
		{
			OdataType = "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
			Id = "6b7e60db-a8e4-426a-9aed-bd12b5c0b9d4",
		},
	},
	DeploymentSettings = new Microsoft.Graph.Beta.Models.WindowsUpdates.DeploymentSettings
	{
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"schedule" , new 
			{
				StartDateTime = "String (timestamp)",
				GradualRollout = new 
				{
					OdataType = "#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings",
					EndDateTime = "String (timestamp)",
				},
			}
		},
	},
};
var result = await graphClient.Admin.Windows.Updates.UpdatePolicies["{updatePolicy-id}"].ComplianceChanges.PostAsync(requestBody);


```