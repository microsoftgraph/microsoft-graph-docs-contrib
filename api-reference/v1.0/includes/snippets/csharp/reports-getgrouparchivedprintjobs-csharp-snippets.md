---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Reports.GetGroupArchivedPrintJobsWithGroupIdWithStartDateTimeWithEndDateTime(DateTimeOffset.Parse("{endDateTime}"),"{groupId}",DateTimeOffset.Parse("{startDateTime}")).GetAsync();


```