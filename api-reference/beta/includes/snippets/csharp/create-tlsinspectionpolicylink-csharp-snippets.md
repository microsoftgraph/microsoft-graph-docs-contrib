---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new TlsInspectionPolicyLink
{
	OdataType = "#microsoft.graph.networkaccess.tlsInspectionPolicyLink",
	State = Status.Enabled,
	Policy = new TlsInspectionPolicy
	{
		OdataType = "#microsoft.graph.networkaccess.tlsInspectionPolicy",
		Id = "b712c469-e7cd-e7cb-738f-94b199570b0d",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.FilteringProfiles["{filteringProfile-id}"].Policies.PostAsync(requestBody);


```