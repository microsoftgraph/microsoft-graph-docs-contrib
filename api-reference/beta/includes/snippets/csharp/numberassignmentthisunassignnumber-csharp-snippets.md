---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Admin.Teams.TelephoneNumberManagement.NumberAssignments.MicrosoftGraphTeamsAdministrationUnassignNumber;
using Microsoft.Graph.Beta.Models.TeamsAdministration;

var requestBody = new UnassignNumberPostRequestBody
{
	TelephoneNumber = "12061234567",
	NumberType = NumberType.DirectRouting,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Admin.Teams.TelephoneNumberManagement.NumberAssignments.MicrosoftGraphTeamsAdministrationUnassignNumber.PostAsync(requestBody);


```