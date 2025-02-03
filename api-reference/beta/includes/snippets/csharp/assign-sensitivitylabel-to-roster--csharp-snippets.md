---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Planner.Rosters.Item.AssignSensitivityLabel;
using Microsoft.Graph.Beta.Models;

var requestBody = new AssignSensitivityLabelPostRequestBody
{
	AssignmentMethod = SensitivityLabelAssignmentMethod.Standard,
	SensitivityLabelId = "7a4d7cc1-f72b-46a3-9831-02680eaf56f9",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Planner.Rosters["{plannerRoster-id}"].AssignSensitivityLabel.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("If-Match", "\"W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"\"");
});


```