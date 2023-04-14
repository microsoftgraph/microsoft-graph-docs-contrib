---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Print.Reports.GetUserArchivedPrintJobsWithUserIdWithStartDateTimeWithEndDateTime("{userId}","{startDateTime}","{endDateTime}").GetAsync();


```