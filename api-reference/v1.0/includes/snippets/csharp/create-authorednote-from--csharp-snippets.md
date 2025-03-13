---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AuthoredNote
{
	Content = new ItemBody
	{
		Content = "Please take a look at the files tagged with follow up",
		ContentType = BodyType.Text,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Privacy.SubjectRightsRequests["{subjectRightsRequest-id}"].Notes.PostAsync(requestBody);


```