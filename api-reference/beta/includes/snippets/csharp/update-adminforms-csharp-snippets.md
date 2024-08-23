---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AdminForms
{
	OdataType = "#microsoft.graph.adminForms",
	Settings = new FormsSettings
	{
		OdataType = "microsoft.graph.formsSettings",
		IsExternalSendFormEnabled = true,
		IsExternalShareCollaborationEnabled = false,
		IsExternalShareResultEnabled = false,
		IsExternalShareTemplateEnabled = false,
		IsRecordIdentityByDefaultEnabled = true,
		IsBingImageSearchEnabled = true,
		IsInOrgFormsPhishingScanEnabled = false,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Forms.PatchAsync(requestBody);


```