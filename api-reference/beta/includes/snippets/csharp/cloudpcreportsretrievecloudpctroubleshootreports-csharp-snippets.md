---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.Reports.RetrieveCloudPcTroubleshootReports;
using Microsoft.Graph.Beta.Models;

var requestBody = new RetrieveCloudPcTroubleshootReportsPostRequestBody
{
	ReportName = CloudPCTroubleshootReportType.TroubleshootDetailsReport,
	Select = new List<string>
	{
		"EventDateTime",
		"TotalActiveConnectionCountAvg",
		"GroupColumn",
	},
	Filter = "(TimeRange eq 'Last 7 days') and (PolicyNameParam eq '') and (RegionParam eq '') and (UserSettingNameParam eq '') and (ServicePlanTypeParam eq 'Enterprise') and (ServicePlanNameParam eq '') and (OSBuildVersionParam eq '') and (AADJoinTypeParam eq '') and (ImageNameParam eq '') and (GatewayRegionParam eq '') and (ClientOSParam eq '') and (ClientTypeParam eq '') and (TransportTypeParam eq '') and (CloudPCEndpointCountryRegionParam eq '') and (CloudPCEndpointStateParam eq '') and (CloudPCEndpointCityParam eq '')",
	Top = 1000,
	Skip = 0,
	GroupBy = new List<string>
	{
		"GatewayRegion",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.Reports.RetrieveCloudPcTroubleshootReports.PostAsync(requestBody);


```