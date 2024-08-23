---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceManagement.Reports.GetDevicesWithoutCompliancePolicyReport;

var requestBody = new GetDevicesWithoutCompliancePolicyReportPostRequestBody
{
	Name = "Name value",
	Select = new List<string>
	{
		"Select value",
	},
	Search = "Search value",
	GroupBy = new List<string>
	{
		"Group By value",
	},
	OrderBy = new List<string>
	{
		"Order By value",
	},
	Skip = 4,
	Top = 3,
	SessionId = "Session Id value",
	Filter = "Filter value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.Reports.GetDevicesWithoutCompliancePolicyReport.PostAsync(requestBody);


```