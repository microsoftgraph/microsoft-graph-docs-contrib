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
	ReverseNumberLookupOptions = new List<string>
	{
		"skipInternalVoip",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Admin.Teams.TelephoneNumberManagement.NumberAssignments.MicrosoftGraphTeamsAdministrationUpdateNumber.PostAsync(requestBody);


```