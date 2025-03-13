---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AdminDynamics
{
	OdataType = "#microsoft.graph.adminDynamics",
	CustomerVoice = new CustomerVoiceSettings
	{
		OdataType = "microsoft.graph.customerVoiceSettings",
		IsRestrictedSurveyAccessEnabled = false,
		IsRecordIdentityByDefaultEnabled = false,
		IsInOrgFormsPhishingScanEnabled = false,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Dynamics.PatchAsync(requestBody);


```