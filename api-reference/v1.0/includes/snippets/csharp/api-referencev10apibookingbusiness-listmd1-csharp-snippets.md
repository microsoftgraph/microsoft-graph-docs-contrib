---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("query", "Adventure")
};

var bookingBusinesses = await graphClient.Solutions.BookingBusinesses
	.Request( queryOptions )
	.GetAsync();

```