---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new NotificationMessageTemplate
{
	OdataType = "#microsoft.graph.notificationMessageTemplate",
	DisplayName = "Display Name value",
	DefaultLocale = "Default Locale value",
	BrandingOptions = NotificationTemplateBrandingOptions.IncludeCompanyLogo,
	RoleScopeTagIds = new List<string>
	{
		"Role Scope Tag Ids value",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.NotificationMessageTemplates.PostAsync(requestBody);


```