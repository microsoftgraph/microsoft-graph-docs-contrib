---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ApprovedClientApp
{
	OdataType = "#microsoft.graph.approvedClientApp",
	Id = "cd57c330-a543-4249-9486-c1c257341de6",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].RemoteDesktopSecurityConfiguration.ApprovedClientApps.PostAsync(requestBody);


```