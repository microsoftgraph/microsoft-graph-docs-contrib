---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.VirtualEvents.Webinars["{virtualEventWebinar-id}"].Registrations.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "userId eq 'b7ef013a-c73c-4ec7-8ccb-e56290f45f68'";
});


```