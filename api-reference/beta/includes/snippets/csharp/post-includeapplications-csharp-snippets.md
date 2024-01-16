---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AuthenticationConditionApplication
{
	OdataType = "#microsoft.graph.authenticationConditionApplication",
	AppId = "63856651-13d9-4784-9abf-20758d509e19",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.AuthenticationEventsFlows["{authenticationEventsFlow-id}"].Conditions.Applications.IncludeApplications.PostAsync(requestBody);


```