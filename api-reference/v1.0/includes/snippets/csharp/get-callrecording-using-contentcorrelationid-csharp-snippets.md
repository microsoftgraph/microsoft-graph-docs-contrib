---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].Recordings.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "contentCorrelationId eq 'e87c8cf8-50f7-4252-8b9c-ad08ac0fa88d-0'";
});


```