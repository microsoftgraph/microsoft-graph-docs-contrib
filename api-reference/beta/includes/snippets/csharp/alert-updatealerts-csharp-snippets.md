---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Security.Alerts.UpdateAlerts.UpdateAlertsPostRequestBody
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
var result = await graphClient.Security.Alerts.UpdateAlerts.PostAsync(requestBody);


```