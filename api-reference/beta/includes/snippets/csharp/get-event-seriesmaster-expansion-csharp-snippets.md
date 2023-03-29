---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.Events["{event-id}"].GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "subject","start","end","occurrenceId","exceptionOccurrences","cancelledOccurrences" };
	requestConfiguration.QueryParameters.Expand = new string []{ "exceptionOccurrences" };
});


```