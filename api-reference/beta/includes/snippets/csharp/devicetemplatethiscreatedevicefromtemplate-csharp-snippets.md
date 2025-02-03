---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Templates.DeviceTemplates.Item.CreateDeviceFromTemplate;

var requestBody = new CreateDeviceFromTemplatePostRequestBody
{
	ExternalDeviceId = "2fa9424e-7ab0-4a22-8c90-2a20d15d8183",
	OperatingSystemVersion = "Ubuntu 18.04",
	ExternalSourceName = "unknown",
	AccountEnabled = false,
	AlternativeNames = new List<string>
	{
		"/subscriptions/00001111-aaaa-2222-bbbb-3333cccc4444/resourcegroups/testrg/providers/microsoft.deviceregistry/assets/asset1",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Templates.DeviceTemplates["{deviceTemplate-id}"].CreateDeviceFromTemplate.PostAsync(requestBody);


```