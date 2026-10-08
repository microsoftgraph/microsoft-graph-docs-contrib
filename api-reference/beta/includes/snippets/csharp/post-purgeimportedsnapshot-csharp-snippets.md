---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Snapshots.PurgeImportedSnapshot;

var requestBody = new PurgeImportedSnapshotPostRequestBody
{
	SnapshotIds = new List<string>
	{
		"7e8c3054-bda1-4e37-81c5-7d1b080a8849",
		"715c8075-6892-42f3-9550-40b4b48e13d2",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Snapshots.PurgeImportedSnapshot.PostAsync(requestBody);


```