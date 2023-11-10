---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Search;
using Microsoft.Graph.Beta.Models;

var requestBody = new Bookmark
{
	DisplayName = "Contoso Install Site",
	WebUrl = "http://www.contoso.com/",
	Description = "Try or buy Contoso for Home or Business and view product information",
	Keywords = new AnswerKeyword
	{
		Keywords = new List<string>
		{
			"Contoso",
			"install",
		},
		ReservedKeywords = new List<string>
		{
			"Contoso",
		},
		MatchSimilarKeywords = true,
	},
	AvailabilityStartDateTime = null,
	AvailabilityEndDateTime = null,
	Platforms = new List<DevicePlatformType?>
	{
		DevicePlatformType.Android,
	},
	TargetedVariations = new List<AnswerVariant>
	{
		new AnswerVariant
		{
			LanguageTag = "es-es",
			DisplayName = "Sitio de instalación Contoso",
			Description = "Pruebe o compre Contoso hogar o negocios y vea la información del producto",
		},
	},
	State = AnswerState.Published,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Search.Bookmarks.PostAsync(requestBody);


```