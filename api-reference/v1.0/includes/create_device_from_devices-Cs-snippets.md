
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var alternativeSecurityIds = new AlternativeSecurityId
{
	Type = 2,
	Key = "base64Y3YxN2E1MWFlYw==",
};

var alternativeSecurityIdsList = new List<AlternativeSecurityId>();
alternativeSecurityIdsList.Add( alternativeSecurityIds );

var device = new Device
{
	AccountEnabled = false,
	AlternativeSecurityIds = alternativeSecurityIdsList,
	DeviceId = "4c299165-6e8f-4b45-a5ba-c5d250a707ff",
	DisplayName = "Test device",
	OperatingSystem = "linux",
	OperatingSystemVersion = "1",
};

await graphClient.Devices
	.Request()
	.AddAsync(device);

```