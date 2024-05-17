---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Workplace.SensorDevices.IngestTelemetry;
using Microsoft.Graph.Beta.Models;

var requestBody = new IngestTelemetryPostRequestBody
{
	Telemetry = new List<WorkplaceSensorDeviceTelemetry>
	{
		new WorkplaceSensorDeviceTelemetry
		{
			DeviceId = "contoso_9D6816",
			SensorType = WorkplaceSensorType.Occupancy,
			BoolValue = false,
			Timestamp = DateTimeOffset.Parse("2021-03-31T09:36:05.144Z"),
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Workplace.SensorDevices.IngestTelemetry.PostAsync(requestBody);


```