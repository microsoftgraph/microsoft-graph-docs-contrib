---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var bookingCurrencies = await graphClient.Solutions.BookingCurrencies
	.Request()
	.GetAsync();

```