---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.CloudLicensing;

var requestBody = new Assignment
{
	OdataType = "#microsoft.graph.cloudLicensing.assignment",
	DisabledServicePlanIds = new List<Guid?>
	{
		Guid.Parse("bed136c6-b799-4462-824d-fc045d3a9d25"),
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"allotment@odata.bind" , "https://graph.microsoft.com/beta/admin/cloudLicensing/allotments/rkocgef3dgjhnu3gmu2mqhbdbmwcymnf6fk3k6a7zbui5e7gfpmi"
		},
		{
			"assignedTo@odata.bind" , "https://graph.microsoft.com/beta/users/6d645c5f-089f-40d8-b0e7-136fb5c56d5b"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.CloudLicensing.Assignments.PostAsync(requestBody);


```