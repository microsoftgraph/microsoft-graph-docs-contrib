---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var filter = "CloudPcId eq '40f9315c-5b63-4126-9f89-b7dcb14fffff' and SignInDateTime gt datetime'2022-09-09T01:22:51.849Z'";

var select = new List<String>()
{
	"SignInDateTime",
	"SignOutDateTime",
	"UsageInHour",
	"RoundTripTimeInMsP50",
	"AvailableBandwidthInMBpsP50",
	"RemoteSignInTimeInSec"
};

var top = 25;

var skip = 0;

await graphClient.DeviceManagement.VirtualEndpoint.Reports
	.GetRemoteConnectionHistoricalReports(filter,select,null,null,null,skip,top)
	.Request()
	.PostAsync();

```