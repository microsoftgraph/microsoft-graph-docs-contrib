---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new PlannerTask
{
	PlanId = "xqQg5FS2LkCp935s-FIFm2QAFkHM",
	BucketId = "hsOf2dhOJkqyYYZEtdzDe2QAIUCR",
	Title = "Update client list",
	Assignments = new PlannerAssignments
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"fbab97d0-4932-4511-b675-204639209557" , new PlannerAssignment
				{
					OdataType = "#microsoft.graph.plannerAssignment",
					OrderHint = " !",
				}
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Planner.Tasks.PostAsync(requestBody);


```