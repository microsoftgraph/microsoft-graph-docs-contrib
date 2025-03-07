---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.HealthMonitoring;

var requestBody = new AlertConfiguration
{
	EmailNotificationConfigurations = new List<EmailNotificationConfiguration>
	{
		new EmailNotificationConfiguration
		{
			GroupId = "c5140914-9507-4180-b60c-04d5ec5eddcb",
			IsEnabled = true,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Reports.HealthMonitoring.AlertConfigurations["{alertConfiguration-id}"].PatchAsync(requestBody);


```