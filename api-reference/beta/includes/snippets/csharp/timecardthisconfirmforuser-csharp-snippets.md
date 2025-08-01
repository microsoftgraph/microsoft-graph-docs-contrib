---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Teams.Item.Schedule.TimeCards.Item.ConfirmForUser;

var requestBody = new ConfirmForUserPostRequestBody
{
	UserId = "d56f3e8a-2b0f-42b1-88b9-e2dbd12a34d2",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teams["{team-id}"].Schedule.TimeCards["{timeCard-id}"].ConfirmForUser.PostAsync(requestBody);


```