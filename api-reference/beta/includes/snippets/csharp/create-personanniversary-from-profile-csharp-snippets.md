---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PersonAnnualEvent
{
	Type = PersonAnnualEventType.Birthday,
	Date = new Date(DateTime.Parse("1980-01-08")),
};
var result = await graphClient.Me.Profile.Anniversaries.PostAsync(requestBody);


```