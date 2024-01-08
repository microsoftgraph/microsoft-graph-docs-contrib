---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ItemPatent
{
	Description = "Calculating the intent of a user to purchase an item based on the amount of time they hover their mouse over a given pixel.",
	DisplayName = "Inferring User Intent through browsing behaviors",
	IsPending = true,
	Number = "USPTO-3954432633",
	WebUrl = "https://patents.gov/3954432633",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Profile.Patents.PostAsync(requestBody);


```