---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CloudPcExternalPartner
{
	OdataType = "#microsoft.graph.cloudPcExternalPartner",
	PartnerId = "198d7140-80bb-4843-8cc4-811377a49a92",
	EnableConnection = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.ExternalPartners.PostAsync(requestBody);


```