---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Application
{
	Tags = new List<string>
	{
		"HR",
		"Payroll",
		"HideApp",
	},
	Info = new InformationalUrl
	{
		LogoUrl = "https://cdn.pixabay.com/photo/2016/03/21/23/25/link-1271843_1280.png",
		MarketingUrl = "https://www.contoso.com/app/marketing",
		PrivacyStatementUrl = "https://www.contoso.com/app/privacy",
		SupportUrl = "https://www.contoso.com/app/support",
		TermsOfServiceUrl = "https://www.contoso.com/app/termsofservice",
	},
	Web = new WebApplication
	{
		HomePageUrl = "https://www.contoso.com/",
		LogoutUrl = "https://www.contoso.com/frontchannel_logout",
		RedirectUris = new List<string>
		{
			"https://localhost",
		},
	},
	ServiceManagementReference = "Owners aliases: Finance @ contosofinance@contoso.com; The Phone Company HR consulting @ hronsite@thephone-company.com;",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Applications["{application-id}"].PatchAsync(requestBody);


```