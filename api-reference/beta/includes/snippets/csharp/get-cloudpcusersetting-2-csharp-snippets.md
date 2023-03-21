---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.DeviceManagement.VirtualEndpoint.UserSettings["{cloudPcUserSetting-id}"].GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Expand = new string []{ "assignments" };
});


```