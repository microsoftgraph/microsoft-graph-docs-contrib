---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.OnlineMeetings.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "joinMeetingIdSettings/joinMeetingId eq '1234567890'";
});


```