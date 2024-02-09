---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceManagement.DeviceEnrollmentConfigurations.Item.SetPriority;

var requestBody = new SetPriorityPostRequestBody
{
	Priority = 8,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.DeviceEnrollmentConfigurations["{deviceEnrollmentConfiguration-id}"].SetPriority.PostAsync(requestBody);


```