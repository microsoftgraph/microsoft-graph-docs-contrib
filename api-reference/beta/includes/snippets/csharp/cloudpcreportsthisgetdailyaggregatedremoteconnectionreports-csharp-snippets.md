---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var filter = "CloudPcId eq '5db15afe-025d-4f1b-b43a-d0554b63ffff' and RoundTripTimeInMsP50 lt 100 and EventDateTime gt 2022-06-01 ";

var search = "abc0907";

var select = new List<String>()
{
	"EventDateTime",
	"CloudPcId",
	"ManagedDeviceName",
	"UsageInHour",
	"RoundTripTimeInMsP50",
	"AvailableBandwidthInMBpsP50",
	"RemoteSignInTimeInSecP50",
	"UserPrincipalName"
};

var skip = "0";

var top = "25";

await graphClient.DeviceManagement.VirtualEndpoint.Reports
	.GetDailyAggregatedRemoteConnectionReports(filter,select,search,null,null,skip,top)
	.Request()
	.PostAsync();

```