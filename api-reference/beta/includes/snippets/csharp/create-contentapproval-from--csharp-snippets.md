---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.WindowsUpdates;

var requestBody = new ContentApproval
{
	OdataType = "#microsoft.graph.windowsUpdates.contentApproval",
	Content = new CatalogContent
	{
		OdataType = "#microsoft.graph.windowsUpdates.catalogContent",
		CatalogEntry = new FeatureUpdateCatalogEntry
		{
			OdataType = "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
			Id = "6b7e60db-a8e4-426a-9aed-bd12b5c0b9d4",
		},
	},
	DeploymentSettings = new DeploymentSettings
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Windows.Updates.UpdatePolicies["{updatePolicy-id}"].ComplianceChanges.PostAsync(requestBody);


```