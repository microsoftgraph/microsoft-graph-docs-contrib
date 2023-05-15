---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.GetSharedUseLicenseUsageReport.GetSharedUseLicenseUsageReportPostRequestBody
{
	ReportName = CloudPcReportName.SharedUseLicenseUsageReport,
	Filter = "ServicePlanId eq '2d1d344e-d10c-41bb-953b-b3a47521dca0' and DateTimeUTC gt datetime'2022-11-30'",
	Select = new List<string>
	{
		"ServicePlanId",
		"LicenseCount",
		"ClaimedLicenseCount",
		"DateTimeUTC",
	},
	Skip = 0,
	Top = 100,
};
await graphClient.DeviceManagement.VirtualEndpoint.Reports.GetSharedUseLicenseUsageReport.PostAsync(requestBody);


```