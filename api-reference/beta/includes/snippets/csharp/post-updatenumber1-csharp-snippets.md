---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Admin.Teams.TelephoneNumberManagement.NumberAssignments.MicrosoftGraphTeamsAdministrationUpdateNumber;

var requestBody = new UpdateNumberPostRequestBody
{
	TelephoneNumber = "+12061234567",
	LocationId = "93cb8a70-b4af-41df-9928-d07607e21776",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Admin.Teams.TelephoneNumberManagement.NumberAssignments.MicrosoftGraphTeamsAdministrationUpdateNumber.PostAsync(requestBody);


```