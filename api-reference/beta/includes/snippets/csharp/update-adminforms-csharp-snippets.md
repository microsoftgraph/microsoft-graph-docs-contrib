---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

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
var result = await graphClient.Admin.Forms.PatchAsync(requestBody);


```