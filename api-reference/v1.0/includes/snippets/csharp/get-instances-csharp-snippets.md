---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.Events["{event-id}"].Instances.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.StartDateTime = "2019-04-08T09:00:00.0000000";
	requestConfiguration.QueryParameters.EndDateTime = "2019-04-30T09:00:00.0000000";
	requestConfiguration.QueryParameters.Select = new string []{ "subject","bodyPreview","seriesMasterId","type","recurrence","start","end" };
});


```