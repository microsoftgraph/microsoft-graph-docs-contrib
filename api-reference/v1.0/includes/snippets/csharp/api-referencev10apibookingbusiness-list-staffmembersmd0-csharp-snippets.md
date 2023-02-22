---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var staffMembers = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].StaffMembers
	.Request()
	.GetAsync();

```