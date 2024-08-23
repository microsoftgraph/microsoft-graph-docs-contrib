---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new WorkplaceSensorDevice
{
	DeviceId = "contoso_9D6816",
	DisplayName = "Contoso 9D6816 Device",
	Description = "Contoso 9D6816 Device",
	MacAddress = "00:0A:95:9D:68:16",
	Manufacturer = "Contoso",
	IpV4Address = "192.168.1.100",
	IpV6Address = "2001:db8::ff00:42:8329",
	PlaceId = "acfa3bc0-2b83-425b-8910-84a0250e9671",
	Tags = new List<string>
	{
		"Building A",
		"Floor 3",
		"Room 301",
		"Conference Room",
	},
	Sensors = new List<WorkplaceSensor>
	{
		new WorkplaceSensor
		{
			SensorType = WorkplaceSensorType.PeopleCount,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Workplace.SensorDevices["{workplaceSensorDevice-id}"].PatchAsync(requestBody);


```