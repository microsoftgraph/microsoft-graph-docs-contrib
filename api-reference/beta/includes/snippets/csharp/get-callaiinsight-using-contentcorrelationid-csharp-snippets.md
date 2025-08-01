---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"].AiInsights.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "contentcorrelationId eq 'bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3'";
});


```