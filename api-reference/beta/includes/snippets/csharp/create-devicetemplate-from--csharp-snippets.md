---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new DeviceTemplate
{
	MutualTlsOauthConfigurationId = "00001111-aaaa-2222-bbbb-3333cccc4444",
	MutualTlsOauthConfigurationTenantId = "00001111-aaaa-2222-bbbb-3333cccc4445",
	DeviceAuthority = "Lakeshore Retail",
	Manufacturer = "Tailwind Traders",
	Model = "DeepFreezerModelAB",
	OperatingSystem = "WindowsIoT",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.Templates.DeviceTemplates.PostAsync(requestBody);


```