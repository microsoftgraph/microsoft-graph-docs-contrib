---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new PersonAnnotation
{
	Detail = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "I am originally from Australia, but grew up in Moscow, Russia.",
	},
	DisplayName = "About Me",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Profile.Notes.PostAsync(requestBody);


```