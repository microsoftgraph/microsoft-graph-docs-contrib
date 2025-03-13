---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CloudPcExternalPartnerSetting
{
	OdataType = "#microsoft.graph.cloudPcExternalPartnerSetting",
	EnableConnection = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.ExternalPartnerSettings["{cloudPcExternalPartnerSetting-id}"].PatchAsync(requestBody);


```