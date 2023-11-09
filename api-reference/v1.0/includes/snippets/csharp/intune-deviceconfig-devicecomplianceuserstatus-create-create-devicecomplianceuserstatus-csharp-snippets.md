---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new DeviceComplianceUserStatus
{
	OdataType = "#microsoft.graph.deviceComplianceUserStatus",
	UserDisplayName = "User Display Name value",
	DevicesCount = 12,
	Status = ComplianceStatus.NotApplicable,
	LastReportedDateTime = DateTimeOffset.Parse("2017-01-01T00:00:17.7769392-08:00"),
	UserPrincipalName = "User Principal Name value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.DeviceCompliancePolicies["{deviceCompliancePolicy-id}"].UserStatuses.PostAsync(requestBody);


```