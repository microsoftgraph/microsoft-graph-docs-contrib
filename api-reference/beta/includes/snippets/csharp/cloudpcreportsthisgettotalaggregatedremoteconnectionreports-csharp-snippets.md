---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var top = 25;

var skip = 0;

var filter = "(TotalUsageInHour ge 40 and TotalUsageInHour le 80)";

var select = new List<String>()
{
	"CloudPcId",
	"ManagedDeviceName",
	"UserPrincipalName",
	"TotalUsageInHour",
	"DaysSinceLastSignIn"
};

await graphClient.DeviceManagement.VirtualEndpoint.Reports
	.GetTotalAggregatedRemoteConnectionReports(filter,select,null,null,null,skip,top)
	.Request()
	.PostAsync();

```