---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var reportName = CloudPcReportName.SharedUseLicenseUsageReport;

var filter = "ServicePlanId eq '2d1d344e-d10c-41bb-953b-b3a47521dca0' and DateTimeUTC gt datetime'2022-11-30'";

var select = new List<String>()
{
	"ServicePlanId",
	"LicenseCount",
	"ClaimedLicenseCount",
	"DateTimeUTC"
};

var skip = 0;

var top = 100;

await graphClient.DeviceManagement.VirtualEndpoint.Reports
	.GetSharedUseLicenseUsageReport(reportName,filter,select,null,null,null,skip,top)
	.Request()
	.PostAsync();

```