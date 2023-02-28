---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var customQuestions = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].CustomQuestions
	.Request()
	.GetAsync();

```