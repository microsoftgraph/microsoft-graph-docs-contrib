---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.Alerts.UpdateAlerts;
using Microsoft.Graph.Beta.Models;

var requestBody = new UpdateAlertsPostRequestBody
{
	Value = new List<Alert>
	{
		new Alert
		{
			AssignedTo = "String",
			ClosedDateTime = DateTimeOffset.Parse("String (timestamp)"),
			Comments = new List<string>
			{
				"String",
			},
			Feedback = new AlertFeedback
			{
				AdditionalData = new Dictionary<string, object>
				{
					{
						"@odata.type" , "microsoft.graph.alertFeedback"
					},
				},
			},
			Id = "String (identifier)",
			Status = new AlertStatus
			{
				AdditionalData = new Dictionary<string, object>
				{
					{
						"@odata.type" , "microsoft.graph.alertStatus"
					},
				},
			},
			Tags = new List<string>
			{
				"String",
			},
			VendorInformation = new SecurityVendorInformation
			{
				Provider = "String",
				Vendor = "String",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Alerts.UpdateAlerts.PostAsUpdateAlertsPostResponseAsync(requestBody);


```