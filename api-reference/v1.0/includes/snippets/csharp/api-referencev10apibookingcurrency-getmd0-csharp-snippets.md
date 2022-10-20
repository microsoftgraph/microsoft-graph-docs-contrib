---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingCurrency = await graphClient.Solutions.BookingCurrencies["{bookingCurrency-id}"]
	.Request()
	.GetAsync();

```