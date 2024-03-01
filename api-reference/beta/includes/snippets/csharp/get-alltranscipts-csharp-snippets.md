---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].OnlineMeetings.GetAllTranscripts.GetAsGetAllTranscriptsGetResponseAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "meetingOrganizerId eq '8b081ef6-4792-4def-b2c9-c363a1bf41d5'";
});


```