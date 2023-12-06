---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Events["{event-id}"].Instances.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.StartDateTime = "2019-04-08T09:00:00.0000000";
	requestConfiguration.QueryParameters.EndDateTime = "2019-04-30T09:00:00.0000000";
	requestConfiguration.QueryParameters.Select = new string []{ "subject","bodyPreview","seriesMasterId","type","recurrence","start","end" };
});


```