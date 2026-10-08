---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Me.Presence.SetAutomaticLocation;
using Microsoft.Graph.Models;

var requestBody = new SetAutomaticLocationPostRequestBody
{
	WorkLocationType = WorkLocationType.Office,
	PlaceId = "eb706f15-137e-4722-b4d1-b601481d9251",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.Presence.SetAutomaticLocation.PostAsync(requestBody);


```