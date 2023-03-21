---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Device
{
	AccountEnabled = true,
	AlternativeSecurityIds = new List<AlternativeSecurityId>
	{
		new AlternativeSecurityId
		{
			Type = 99,
			IdentityProvider = "identityProvider-value",
			Key = Convert.FromBase64String("base64Y3YxN2E1MWFlYw=="),
		},
	},
	ApproximateLastSignInDateTime = DateTimeOffset.Parse("2016-10-19T10:37:00Z"),
	DeviceId = "deviceId-value",
	DeviceMetadata = "deviceMetadata-value",
	DeviceVersion = 99,
};
var result = await graphClient.Devices.PostAsync(requestBody);


```