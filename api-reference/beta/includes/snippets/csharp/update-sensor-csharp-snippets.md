---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new Sensor
{
	Settings = new SensorSettings
	{
		Description = "dc1 settings new description",
		DomainControllerDnsNames = new List<string>
		{
			"DC1.domain1.test.local",
		},
		IsDelayedDeploymentEnabled = false,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Identities.Sensors["{sensor-id}"].PatchAsync(requestBody);


```