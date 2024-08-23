---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new VirtualEventPresenter
{
	PresenterDetails = new VirtualEventPresenterDetails
	{
		Bio = new ItemBody
		{
			Content = "Lead Product Manager of Contoso Sales department",
			ContentType = BodyType.Text,
		},
		Company = "Contoso",
		JobTitle = "Product Manager",
		LinkedInProfileWebUrl = "https://linkedin.com/in/DianeDemoss",
		PersonalSiteWebUrl = "https://DianeDemoss.com",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.VirtualEvents.Webinars["{virtualEventWebinar-id}"].Presenters["{virtualEventPresenter-id}"].PatchAsync(requestBody);


```