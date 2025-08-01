---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ProfileSource
{
	OdataType = "#microsoft.graph.profileSource",
	SourceId = "bamboohr1",
	Kind = "BambooHR",
	DisplayName = "BambooHR Updated",
	WebUrl = "https://bamboohr.contoso.com/login",
	Localizations = new List<ProfileSourceLocalization>
	{
		new ProfileSourceLocalization
		{
			DisplayName = "HR-Platform",
			WebUrl = "http://bamboohr.contoso.com/en-us/login",
			LanguageTag = "en-us",
		},
		new ProfileSourceLocalization
		{
			DisplayName = "HR-Plattform",
			WebUrl = "http://bamboohr.contoso.com/de/login",
			LanguageTag = "de",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.People.ProfileSourcesWithSourceId("{sourceId}").PatchAsync(requestBody);


```