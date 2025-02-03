---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].CalendarView.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Start = "2018-04-30T00:00:00Z";
	requestConfiguration.QueryParameters.End = "2018-05-10T00:00:00Z";
});


```