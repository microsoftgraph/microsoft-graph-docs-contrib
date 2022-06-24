---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingBusinessGetStaffAvailabilityCollectionPage getStaffAvailability = graphClient.bookingBusinesses("Contosolunchdelivery@contoso.onmicrosoft.com")
	.getStaffAvailability()
	.buildRequest()
	.get();

```