---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new TelecomExpenseManagementPartner
{
	OdataType = "#microsoft.graph.telecomExpenseManagementPartner",
	DisplayName = "Display Name value",
	Url = "Url value",
	AppAuthorized = true,
	Enabled = true,
	LastConnectionDateTime = DateTimeOffset.Parse("2016-12-31T23:58:36.6670033-08:00"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.TelecomExpenseManagementPartners["{telecomExpenseManagementPartner-id}"].PatchAsync(requestBody);


```