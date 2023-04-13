---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Device
{
	AccountEnabled = false,
	AlternativeSecurityIds = new List<AlternativeSecurityId>
	{
		new AlternativeSecurityId
		{
			Type = 2,
			Key = Convert.FromBase64String("base64Y3YxN2E1MWFlYw=="),
		},
	},
	DeviceId = "4c299165-6e8f-4b45-a5ba-c5d250a707ff",
	DisplayName = "Test device",
	OperatingSystem = "linux",
	OperatingSystemVersion = "1",
};
var result = await graphClient.Devices.PostAsync(requestBody);


```