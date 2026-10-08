---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Admin.Teams.TelephoneNumberManagement.NumberAssignments.MicrosoftGraphTeamsAdministrationAssignNumber;
using Microsoft.Graph.Beta.Models.TeamsAdministration;

var requestBody = new AssignNumberPostRequestBody
{
	TelephoneNumber = "12061234567",
	AssignmentTargetId = "94ec379d-30a2-4cdb-a377-75e42f7a61e5",
	NumberType = NumberType.DirectRouting,
	AssignmentCategory = AssignmentCategory.Primary,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Admin.Teams.TelephoneNumberManagement.NumberAssignments.MicrosoftGraphTeamsAdministrationAssignNumber.PostAsync(requestBody);


```