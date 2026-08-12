---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].Teamwork.GetAllTargetedMessages.GetAsGetAllTargetedMessagesGetResponseAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "from/application/id eq '6d23e712-527b-406f-8d59-d02927885918'";
});


```