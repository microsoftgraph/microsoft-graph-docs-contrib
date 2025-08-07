---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ExternalAuthenticationMethod
{
	OdataType = "#microsoft.graph.externalAuthenticationMethod",
	ConfigurationId = "26310fee-860b-4eab-8749-ab730dcf335e",
	DisplayName = "Adatum",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].Authentication.ExternalAuthenticationMethods.PostAsync(requestBody);


```