---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"]
	.Unpublish()
	.Request()
	.PostAsync();

```