---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ApprovedClientApp
{
	OdataType = "#microsoft.graph.approvedClientApp",
	DisplayName = "Client App 1",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].RemoteDesktopSecurityConfiguration.ApprovedClientApps.PostAsync(requestBody);


```