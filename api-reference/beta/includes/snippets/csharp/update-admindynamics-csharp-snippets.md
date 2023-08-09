---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

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
var result = await graphClient.Admin.Dynamics.PatchAsync(requestBody);


```