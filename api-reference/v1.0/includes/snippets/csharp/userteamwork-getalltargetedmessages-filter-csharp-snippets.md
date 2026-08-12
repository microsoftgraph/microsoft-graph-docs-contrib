---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].Teamwork.GetAllTargetedMessages.GetAsGetAllTargetedMessagesGetResponseAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "lastModifiedDateTime gt 2024-01-01T00:00:00Z and lastModifiedDateTime lt 2024-12-31T23:59:59Z";
});


```