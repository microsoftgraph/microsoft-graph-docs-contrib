---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Admin.Teams.Policy.UserAssignments.MicrosoftGraphTeamsAdministrationUnassign;
using Microsoft.Graph.Beta.Models.TeamsAdministration;

var requestBody = new UnassignPostRequestBody
{
	Value = new List<TeamsPolicyUserAssignment>
	{
		new TeamsPolicyUserAssignment
		{
			OdataType = "#microsoft.graph.teamsAdministration.teamsPolicyUserAssignment",
			UserId = "5c802b19-3600-83f1-1767-7b9edc7f38ab",
			PolicyType = "TeamsMeetingPolicy",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Admin.Teams.Policy.UserAssignments.MicrosoftGraphTeamsAdministrationUnassign.PostAsync(requestBody);


```