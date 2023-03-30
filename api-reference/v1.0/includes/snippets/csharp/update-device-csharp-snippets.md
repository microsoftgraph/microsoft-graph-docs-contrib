---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Device
{
	AccountEnabled = false,
};
var result = await graphClient.Devices["{device-id}"].PatchAsync(requestBody);


```