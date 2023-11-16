---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new TermsAndConditionsAcceptanceStatus
{
	OdataType = "#microsoft.graph.termsAndConditionsAcceptanceStatus",
	UserDisplayName = "User Display Name value",
	AcceptedVersion = 15,
	AcceptedDateTime = DateTimeOffset.Parse("2016-12-31T23:57:43.6165506-08:00"),
	UserPrincipalName = "User Principal Name value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.TermsAndConditions["{termsAndConditions-id}"].AcceptanceStatuses.PostAsync(requestBody);


```