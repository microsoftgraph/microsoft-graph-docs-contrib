---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AccessPackageAssignmentRequest
{
	OdataType = "#microsoft.graph.accessPackageAssignmentRequest",
	RequestType = "adminUpdate",
	Schedule = new RequestSchedule
	{
		StartDateTime = DateTimeOffset.Parse("2023-05-23T20:04:02.39Z"),
		Recurrence = null,
		Expiration = new ExpirationPattern
		{
			EndDateTime = DateTimeOffset.Parse("2024-07-01T00:00:00.00Z"),
			Duration = null,
			Type = ExpirationPatternType.AfterDateTime,
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"assignment" , new 
			{
				Id = "329f8dac-8062-4c1b-a9b8-39b7132f9bff",
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests.PostAsync(requestBody);


```