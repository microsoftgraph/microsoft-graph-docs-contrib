---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Admin.ReportSettings.SharePoint.EnableApiUsageReport;

var requestBody = new EnableApiUsageReportPostRequestBody
{
	Metric = "EgressReport",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.ReportSettings.SharePoint.EnableApiUsageReport.PostAsync(requestBody);


```