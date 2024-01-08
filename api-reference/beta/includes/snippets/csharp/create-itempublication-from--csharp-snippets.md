---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ItemPublication
{
	Description = "One persons journey to the top of the branding management field.",
	DisplayName = "Got Brands? The story of Innocenty Popov and his journey to the top.",
	PublishedDate = new Date(DateTime.Parse("Date")),
	Publisher = "International Association of Branding Management Publishing",
	ThumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg",
	WebUrl = "https://www.iabm.io",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Profile.Publications.PostAsync(requestBody);


```